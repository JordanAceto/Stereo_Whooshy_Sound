
#include "BSP_system_init.hpp"
#include "BSP_TIM2.hpp"
#include "LFO.hpp"
#include "lookup_tables.hpp"
#include "MCP4822.hpp"
#include "ui_controls.hpp"

/* the two independent LFO objects */
LFO lfo_A(BSP::tim2::FREQUENCY_Hz);
LFO lfo_B(BSP::tim2::FREQUENCY_Hz);

/* the user interface components, pots and switches */
UI ui{};

/**
 * @brief read the LFO rate controls and update the frequency for LFO A and B
 */
void update_lfo_frequency();

/**
 * @brief read the LFO wave shape controls and update the waveshapes for LFO A and B
 */
void update_lfo_wave_scanners();

/**
 * @brief calculate the final value to write to the DAC for output A
 *
 * When the sweep mode is INDEPENDENT or SYNC_TO_A, this is the value of LFO A
 * scaled by the depth A control
 *
 * When the sweep mode is ADD, this is the value of value of LFO A
 * scaled by the depth A control plus the value of LFO B scaled by
 * the depth B control
 *
 * @return int the value to write to the DAC for output A
 */
int calc_lfo_A_val();

/**
 * @brief calculate the final value to write to the DAC for output B
 *
 * When the sweep mode is INDEPENDENT, this is the value of LFO B
 * scaled by the depth B control, or -(LFO B) if the invert B switch is on
 *
 * When the sweep mode is SYNC_TO_A, this is the value of LFO A scaled by the
 * depth B control, or -(LFO A) if the invert B switch is on
 *
 * When the sweep mode is ADD, this is the value of LFO A
 * scaled by the depth A control plus the value of LFO B scaled by
 * the depth B control, or (LFO A) - (LFO B) if the invert B switch is on
 *
 * @return int
 */
int calc_lfo_B_val();

/**
 * @brief write the values of LFO A and B to the SPI DAC
 */
void write_to_dacs();

int main(void)
{
    BSP::system_init::init();

    while (1)
    {
        if (BSP::tim2::getTimeout())
        {
            lfo_A.tick();
            lfo_B.tick();

            update_lfo_frequency();
            update_lfo_wave_scanners();
            write_to_dacs();
        }
    }

    // never reached
    return 0;
}

void update_lfo_frequency()
{
    auto freq_lut_idx_ui10 = ui.get_control_signal_val(UI::LFO_A_FREQ);
    lfo_A.setInput(LFO::FREQ_mHz, Lookup_Tables::EXPO_MAPPING_LUT_mHz[freq_lut_idx_ui10]);

    freq_lut_idx_ui10 = ui.get_control_signal_val(UI::LFO_B_FREQ);
    lfo_B.setInput(LFO::FREQ_mHz, Lookup_Tables::EXPO_MAPPING_LUT_mHz[freq_lut_idx_ui10]);
}

void update_lfo_wave_scanners()
{
    lfo_A.setInput(
        LFO::WAVE_SCAN,
        ui.get_control_signal_val(UI::LFO_A_SHAPE));

    lfo_B.setInput(
        LFO::WAVE_SCAN,
        ui.get_control_signal_val(UI::LFO_B_SHAPE));
}

int calc_lfo_A_val()
{
    int retval;

    switch (ui.get_sweep_mode())
    {
    // in INDEPENDENT and SYNC_TO_A modes just take the val of LFO A
    case UI::sweep_mode::INDEPENDENT:
    case UI::sweep_mode::SYNC_TO_A:
    {
        retval = ui.scale_bipolar_signal(
            lfo_A.getOutput(LFO::CROSSFADED),
            ui.get_control_signal_val(UI::LFO_A_LEVEL));
        break;
    }
    // in ADD mode, take (LFO A) + (LFO B)
    case UI::sweep_mode::ADD:
    {
        auto lfo_A_contrib = ui.scale_bipolar_signal(
            lfo_A.getOutput(LFO::CROSSFADED),
            ui.get_control_signal_val(UI::LFO_A_LEVEL));

        auto lfo_B_contrib = ui.scale_bipolar_signal(
            lfo_B.getOutput(LFO::CROSSFADED),
            ui.get_control_signal_val(UI::LFO_B_LEVEL));

        retval = lfo_A_contrib + lfo_B_contrib;
        break;
    }
    }

    return ui.condition_bipolar_signal_for_DAC(retval);
}

int calc_lfo_B_val()
{
    const auto lfo_B_mode = ui.get_lfo_b_mode();

    int retval;

    switch (ui.get_sweep_mode())
    {
    // in INDEPENDENT mode just take the val of LFO B, optionally inverted
    case UI::sweep_mode::INDEPENDENT:
    {
        retval = ui.scale_bipolar_signal(
            lfo_B.getOutput(LFO::CROSSFADED),
            ui.get_control_signal_val(UI::LFO_B_LEVEL));

        if (lfo_B_mode == UI::lfo_b_mode::INVERT)
        {
            retval = -retval;
        }
        break;
    }
    // in SYNC_TO_A modes just take the val of LFO A, optionally inverted
    case UI::sweep_mode::SYNC_TO_A:
    {
        retval = ui.scale_bipolar_signal(
            lfo_A.getOutput(LFO::CROSSFADED),
            ui.get_control_signal_val(UI::LFO_B_LEVEL));

        if (lfo_B_mode == UI::lfo_b_mode::INVERT)
        {
            retval = -retval;
        }
        break;
    }
    // in ADD mode, take (LFO A) + (LFO B), with LFO B optionally inverted
    case UI::sweep_mode::ADD:
    {
        auto lfo_A_contrib = ui.scale_bipolar_signal(
            lfo_A.getOutput(LFO::CROSSFADED),
            ui.get_control_signal_val(UI::LFO_A_LEVEL));

        auto lfo_B_contrib = ui.scale_bipolar_signal(
            lfo_B.getOutput(LFO::CROSSFADED),
            ui.get_control_signal_val(UI::LFO_B_LEVEL));

        if (ui.get_lfo_b_mode() == UI::lfo_b_mode::INVERT)
        {
            lfo_B_contrib = -lfo_B_contrib;
        }

        retval = lfo_A_contrib + lfo_B_contrib;
        break;
    }
    }

    return ui.condition_bipolar_signal_for_DAC(retval);
}

void write_to_dacs()
{
    MCP4822::write(calc_lfo_A_val(), MCP4822::Channel::A);
    MCP4822::write(calc_lfo_B_val(), MCP4822::Channel::B);
}
