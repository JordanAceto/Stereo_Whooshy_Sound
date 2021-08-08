EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 11
Title "Stereo Whooshy Sound"
Date "2021-08-07"
Rev "0"
Comp ""
Comment1 "creativecommons.org/licenses/by/4.0/"
Comment2 "License: CC by 4.0"
Comment3 "Author: Jordan Aceto"
Comment4 ""
$EndDescr
$Comp
L Device:R_POT RV1
U 1 1 61072F32
P 1250 1650
F 0 "RV1" H 1181 1604 50  0000 R CNN
F 1 "10k" H 1181 1695 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1250 1650 50  0001 C CNN
F 3 "~" H 1250 1650 50  0001 C CNN
	1    1250 1650
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0158
U 1 1 6107564F
P 1250 1800
F 0 "#PWR0158" H 1250 1550 50  0001 C CNN
F 1 "GND" H 1255 1627 50  0000 C CNN
F 2 "" H 1250 1800 50  0001 C CNN
F 3 "" H 1250 1800 50  0001 C CNN
	1    1250 1800
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0159
U 1 1 61075FBB
P 850 1300
F 0 "#PWR0159" H 850 1400 50  0001 C CNN
F 1 "-5V" H 865 1473 50  0000 C CNN
F 2 "" H 850 1300 50  0001 C CNN
F 3 "" H 850 1300 50  0001 C CNN
	1    850  1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	850  1300 850  1200
Wire Wire Line
	850  1200 1250 1200
Wire Wire Line
	1250 1200 1250 1500
Text Label 1400 1650 0    50   ~ 0
manual_freq
$Comp
L Device:R_POT RV2
U 1 1 6107F85C
P 1250 3250
F 0 "RV2" H 1181 3204 50  0000 R CNN
F 1 "10k" H 1181 3295 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1250 3250 50  0001 C CNN
F 3 "~" H 1250 3250 50  0001 C CNN
	1    1250 3250
	1    0    0    1   
$EndComp
Wire Wire Line
	850  2900 850  2800
Wire Wire Line
	850  2800 1250 2800
Wire Wire Line
	1250 2800 1250 3100
$Comp
L Device:R_POT RV12
U 1 1 61082770
P 1300 5100
F 0 "RV12" H 1231 5146 50  0000 R CNN
F 1 "100k trim" H 1231 5055 50  0000 R CNN
F 2 "custom_footprints:bourns_3306F" H 1300 5100 50  0001 C CNN
F 3 "~" H 1300 5100 50  0001 C CNN
	1    1300 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR0160
U 1 1 6108325B
P 1300 4750
F 0 "#PWR0160" H 1300 4600 50  0001 C CNN
F 1 "+9V" H 1315 4923 50  0000 C CNN
F 2 "" H 1300 4750 50  0001 C CNN
F 3 "" H 1300 4750 50  0001 C CNN
	1    1300 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4950 1300 4850
Wire Wire Line
	1300 4850 1550 4850
Wire Wire Line
	1550 4850 1550 5100
Wire Wire Line
	1550 5100 1450 5100
Wire Wire Line
	1300 4850 1300 4750
Connection ~ 1300 4850
$Comp
L Device:R R22
U 1 1 61085582
P 1300 5500
F 0 "R22" H 1370 5546 50  0000 L CNN
F 1 "10k" H 1370 5455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1230 5500 50  0001 C CNN
F 3 "~" H 1300 5500 50  0001 C CNN
	1    1300 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5350 1300 5250
Text HLabel 1300 5650 2    50   Output ~ 0
exp_ped_ring_current_A
$Comp
L Device:R_POT RV13
U 1 1 61088EF0
P 1350 6850
F 0 "RV13" H 1281 6896 50  0000 R CNN
F 1 "100k trim" H 1281 6805 50  0000 R CNN
F 2 "custom_footprints:bourns_3306F" H 1350 6850 50  0001 C CNN
F 3 "~" H 1350 6850 50  0001 C CNN
	1    1350 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR0161
U 1 1 61088EF6
P 1350 6500
F 0 "#PWR0161" H 1350 6350 50  0001 C CNN
F 1 "+9V" H 1365 6673 50  0000 C CNN
F 2 "" H 1350 6500 50  0001 C CNN
F 3 "" H 1350 6500 50  0001 C CNN
	1    1350 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 6700 1350 6600
Wire Wire Line
	1350 6600 1600 6600
Wire Wire Line
	1600 6600 1600 6850
Wire Wire Line
	1600 6850 1500 6850
Wire Wire Line
	1350 6600 1350 6500
Connection ~ 1350 6600
$Comp
L Device:R R23
U 1 1 61088F02
P 1350 7250
F 0 "R23" H 1420 7296 50  0000 L CNN
F 1 "10k" H 1420 7205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1280 7250 50  0001 C CNN
F 3 "~" H 1350 7250 50  0001 C CNN
	1    1350 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 7100 1350 7000
Text HLabel 1350 7400 2    50   Output ~ 0
exp_ped_ring_current_B
$Comp
L Device:R R41
U 1 1 6109F83D
P 7400 5300
F 0 "R41" V 7193 5300 50  0000 C CNN
F 1 "120k" V 7284 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7330 5300 50  0001 C CNN
F 3 "~" H 7400 5300 50  0001 C CNN
	1    7400 5300
	0    1    1    0   
$EndComp
$Comp
L Device:R R37
U 1 1 6109F861
P 6350 4500
F 0 "R37" V 6143 4500 50  0000 C CNN
F 1 "120k" V 6234 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6280 4500 50  0001 C CNN
F 3 "~" H 6350 4500 50  0001 C CNN
	1    6350 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 5700 7000 5700
Wire Wire Line
	7000 5700 7000 5300
Wire Wire Line
	7000 5300 7250 5300
Connection ~ 7000 5700
Wire Wire Line
	7000 5300 7000 4900
Wire Wire Line
	7000 4900 7250 4900
Connection ~ 7000 5300
Wire Wire Line
	7700 5800 7800 5800
Wire Wire Line
	7800 4900 7550 4900
Wire Wire Line
	7550 5300 7800 5300
Wire Wire Line
	7800 4900 7800 5300
Connection ~ 7800 5300
Wire Wire Line
	7800 5300 7800 5800
Wire Wire Line
	6500 4100 6600 4100
Wire Wire Line
	6600 4100 6600 4500
Wire Wire Line
	6500 4900 6600 4900
Connection ~ 6600 4900
Wire Wire Line
	6500 4500 6600 4500
Connection ~ 6600 4500
Wire Wire Line
	6600 4500 6600 4900
Text Label 6200 3700 2    50   ~ 0
manual_freq
$Comp
L Device:R R35
U 1 1 6109F88F
P 6350 3700
F 0 "R35" V 6143 3700 50  0000 C CNN
F 1 "300k" V 6234 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6280 3700 50  0001 C CNN
F 3 "~" H 6350 3700 50  0001 C CNN
	1    6350 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 3700 6600 3700
Wire Wire Line
	6600 3700 6600 4100
Connection ~ 6600 4100
Text Notes 4700 4500 0    79   ~ 0
range: [0v, +2v]
Text Notes 4400 3700 0    79   ~ 0
range: [-5v, 0v]
Text Notes 6200 1250 0    79   ~ 0
range: [0v, +2v]
$Comp
L Device:R R26
U 1 1 610C1F68
P 3050 2850
F 0 "R26" V 2843 2850 50  0000 C CNN
F 1 "120k" V 2934 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2980 2850 50  0001 C CNN
F 3 "~" H 3050 2850 50  0001 C CNN
	1    3050 2850
	0    1    1    0   
$EndComp
$Comp
L Device:C C31
U 1 1 610C1F6E
P 3050 2450
F 0 "C31" V 2798 2450 50  0000 C CNN
F 1 "100n" V 2889 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3088 2300 50  0001 C CNN
F 3 "~" H 3050 2450 50  0001 C CNN
	1    3050 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 3250 2650 3250
Wire Wire Line
	2650 3250 2650 2850
Wire Wire Line
	2650 2850 2900 2850
Connection ~ 2650 3250
Wire Wire Line
	2650 3250 2500 3250
Wire Wire Line
	2650 2450 2900 2450
Connection ~ 2650 2850
Wire Wire Line
	3350 3350 3450 3350
Wire Wire Line
	3450 2450 3200 2450
Wire Wire Line
	3200 2850 3450 2850
Wire Wire Line
	3450 2450 3450 2850
Connection ~ 3450 2850
Wire Wire Line
	3450 2850 3450 3350
$Comp
L power:GND #PWR0162
U 1 1 610C1F82
P 2650 3550
F 0 "#PWR0162" H 2650 3300 50  0001 C CNN
F 1 "GND" H 2655 3377 50  0000 C CNN
F 2 "" H 2650 3550 50  0001 C CNN
F 3 "" H 2650 3550 50  0001 C CNN
	1    2650 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3550 2650 3450
Wire Wire Line
	2650 3450 2750 3450
Text HLabel 6200 4900 0    50   Input ~ 0
env_B
Text HLabel 6200 4500 0    50   Input ~ 0
lfo_B
Text HLabel 7800 5800 2    50   Output ~ 0
summed_cv_B
$Comp
L power:GND #PWR0163
U 1 1 6107F86D
P 1250 3400
F 0 "#PWR0163" H 1250 3150 50  0001 C CNN
F 1 "GND" H 1255 3227 50  0000 C CNN
F 2 "" H 1250 3400 50  0001 C CNN
F 3 "" H 1250 3400 50  0001 C CNN
	1    1250 3400
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0164
U 1 1 6107F875
P 850 2900
F 0 "#PWR0164" H 850 3000 50  0001 C CNN
F 1 "-5V" H 865 3073 50  0000 C CNN
F 2 "" H 850 2900 50  0001 C CNN
F 3 "" H 850 2900 50  0001 C CNN
	1    850  2900
	-1   0    0    1   
$EndComp
Text Notes 4700 4900 0    79   ~ 0
range: [0v, +2v]
Wire Wire Line
	6650 7300 6750 7300
$Comp
L power:GND #PWR0165
U 1 1 61412483
P 5950 7500
F 0 "#PWR0165" H 5950 7250 50  0001 C CNN
F 1 "GND" H 5955 7327 50  0000 C CNN
F 2 "" H 5950 7500 50  0001 C CNN
F 3 "" H 5950 7500 50  0001 C CNN
	1    5950 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 7500 5950 7400
Wire Wire Line
	5950 7400 6050 7400
Text Label 5900 4100 2    50   ~ 0
separation_B
$Comp
L Amplifier_Operational:MCP6004 U4
U 2 1 611711E5
P 3050 3350
F 0 "U4" H 3250 3500 50  0000 C CNN
F 1 "MCP6004" H 3250 3600 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 3000 3450 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 3100 3550 50  0001 C CNN
	2    3050 3350
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:MCP6004 U4
U 3 1 61173B85
P 6350 7300
F 0 "U4" H 6550 7450 50  0000 C CNN
F 1 "MCP6004" H 6550 7550 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 6300 7400 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 6400 7500 50  0001 C CNN
	3    6350 7300
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:MCP6004 U4
U 4 1 61178033
P 7400 5800
F 0 "U4" H 7600 5950 50  0000 C CNN
F 1 "MCP6004" H 7600 6050 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 7350 5900 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 7450 6000 50  0001 C CNN
	4    7400 5800
	1    0    0    1   
$EndComp
$Comp
L Device:C C34
U 1 1 6109F849
P 7400 4900
F 0 "C34" V 7148 4900 50  0000 C CNN
F 1 "22n" V 7239 4900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7438 4750 50  0001 C CNN
F 3 "~" H 7400 4900 50  0001 C CNN
	1    7400 4900
	0    1    1    0   
$EndComp
$Comp
L Device:R R25
U 1 1 610C47C6
P 2050 3250
F 0 "R25" V 1843 3250 50  0000 C CNN
F 1 "300k" V 1934 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1980 3250 50  0001 C CNN
F 3 "~" H 2050 3250 50  0001 C CNN
	1    2050 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R36
U 1 1 6109F84F
P 6050 4100
F 0 "R36" V 5843 4100 50  0000 C CNN
F 1 "300k" V 5934 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5980 4100 50  0001 C CNN
F 3 "~" H 6050 4100 50  0001 C CNN
	1    6050 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R38
U 1 1 6109F855
P 6350 4900
F 0 "R38" V 6143 4900 50  0000 C CNN
F 1 "120k" V 6234 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6280 4900 50  0001 C CNN
F 3 "~" H 6350 4900 50  0001 C CNN
	1    6350 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 6800 6750 7300
Wire Wire Line
	6050 7200 5950 7200
Wire Wire Line
	5950 7200 5950 6800
Text HLabel 7700 3050 0    50   Input ~ 0
ext_cv_A
$Comp
L Device:R R40
U 1 1 610FC7E0
P 8900 2450
F 0 "R40" V 8693 2450 50  0000 C CNN
F 1 "120k" V 8784 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8830 2450 50  0001 C CNN
F 3 "~" H 8900 2450 50  0001 C CNN
	1    8900 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R R32
U 1 1 610FF7D1
P 7850 2050
F 0 "R32" V 7643 2050 50  0000 C CNN
F 1 "120k" V 7734 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7780 2050 50  0001 C CNN
F 3 "~" H 7850 2050 50  0001 C CNN
	1    7850 2050
	0    1    1    0   
$EndComp
$Comp
L Device:C C33
U 1 1 610FD7F0
P 8900 2050
F 0 "C33" V 8648 2050 50  0000 C CNN
F 1 "22n" V 8739 2050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8938 1900 50  0001 C CNN
F 3 "~" H 8900 2050 50  0001 C CNN
	1    8900 2050
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:MCP6004 U4
U 1 1 611756A6
P 8900 2950
F 0 "U4" H 9100 3100 50  0000 C CNN
F 1 "MCP6004" H 9100 3200 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 8850 3050 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 8950 3150 50  0001 C CNN
	1    8900 2950
	1    0    0    1   
$EndComp
Wire Wire Line
	8100 2450 8100 2850
Connection ~ 8100 2450
Wire Wire Line
	8000 2450 8100 2450
Wire Wire Line
	8100 2850 8500 2850
Text HLabel 9300 2950 2    50   Output ~ 0
summed_cv_A
Text HLabel 7700 2050 0    50   Input ~ 0
env_A
Text HLabel 7700 1650 0    50   Input ~ 0
lfo_A
Text Notes 4400 4100 0    79   ~ 0
range: [-5v, 0v]
Text Notes 6200 850  0    79   ~ 0
range: [-5v, 0v]
Text Notes 6200 2050 0    79   ~ 0
range: [0v, +2v]
Text Notes 6200 1650 0    79   ~ 0
range: [0v, +2v]
Text Notes 9400 2850 0    79   ~ 0
approx. useful range: \n[0v, +2v]
Connection ~ 8100 1250
Wire Wire Line
	8100 850  8100 1250
Wire Wire Line
	8000 850  8100 850 
$Comp
L Device:R R29
U 1 1 6110F6EC
P 7850 850
F 0 "R29" V 7643 850 50  0000 C CNN
F 1 "300k" V 7734 850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7780 850 50  0001 C CNN
F 3 "~" H 7850 850 50  0001 C CNN
	1    7850 850 
	0    1    1    0   
$EndComp
Text Label 7700 1250 2    50   ~ 0
separation_A
Text Label 7700 850  2    50   ~ 0
manual_freq
Wire Wire Line
	8100 1650 8100 2050
Connection ~ 8100 1650
Wire Wire Line
	8000 1650 8100 1650
Wire Wire Line
	8100 2050 8100 2450
Connection ~ 8100 2050
Wire Wire Line
	8000 2050 8100 2050
Wire Wire Line
	8100 1250 8100 1650
Wire Wire Line
	8000 1250 8100 1250
Wire Wire Line
	9300 2450 9300 2950
Connection ~ 9300 2450
Wire Wire Line
	9300 2050 9300 2450
Wire Wire Line
	9050 2450 9300 2450
Wire Wire Line
	9300 2050 9050 2050
Wire Wire Line
	9200 2950 9300 2950
Connection ~ 8500 2450
Wire Wire Line
	8500 2050 8750 2050
Wire Wire Line
	8500 2450 8500 2050
Connection ~ 8500 2850
Wire Wire Line
	8500 2450 8750 2450
Wire Wire Line
	8500 2850 8500 2450
Wire Wire Line
	8600 2850 8500 2850
$Comp
L Device:R R31
U 1 1 611067EC
P 7850 1650
F 0 "R31" V 7643 1650 50  0000 C CNN
F 1 "120k" V 7734 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7780 1650 50  0001 C CNN
F 3 "~" H 7850 1650 50  0001 C CNN
	1    7850 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R R30
U 1 1 610FE54B
P 7850 1250
F 0 "R30" V 7643 1250 50  0000 C CNN
F 1 "120k" V 7734 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7780 1250 50  0001 C CNN
F 3 "~" H 7850 1250 50  0001 C CNN
	1    7850 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 2450 7700 2450
Wire Wire Line
	7600 2550 7600 2450
$Comp
L power:-5V #PWR033
U 1 1 6121DF0F
P 7600 2550
F 0 "#PWR033" H 7600 2650 50  0001 C CNN
F 1 "-5V" H 7615 2723 50  0000 C CNN
F 2 "" H 7600 2550 50  0001 C CNN
F 3 "" H 7600 2550 50  0001 C CNN
	1    7600 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R33
U 1 1 6110308B
P 7850 2450
F 0 "R33" V 7643 2450 50  0000 C CNN
F 1 "300k" V 7734 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7780 2450 50  0001 C CNN
F 3 "~" H 7850 2450 50  0001 C CNN
	1    7850 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R R34
U 1 1 610CBBC5
P 7850 3050
F 0 "R34" V 7643 3050 50  0000 C CNN
F 1 "100k" V 7734 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7780 3050 50  0001 C CNN
F 3 "~" H 7850 3050 50  0001 C CNN
	1    7850 3050
	0    1    1    0   
$EndComp
Text Notes 6200 3050 0    79   ~ 0
range: [0v, +5v]
$Comp
L power:GND #PWR0167
U 1 1 614A1659
P 8100 3450
F 0 "#PWR0167" H 8100 3200 50  0001 C CNN
F 1 "GND" H 8105 3277 50  0000 C CNN
F 2 "" H 8100 3450 50  0001 C CNN
F 3 "" H 8100 3450 50  0001 C CNN
	1    8100 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R28
U 1 1 612E9F12
P 8100 3300
F 0 "R28" H 8170 3346 50  0000 L CNN
F 1 "10k" H 8170 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8030 3300 50  0001 C CNN
F 3 "~" H 8100 3300 50  0001 C CNN
	1    8100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3050 8100 3050
Wire Wire Line
	8100 3150 8100 3050
Connection ~ 8100 3050
Wire Wire Line
	5950 6800 6750 6800
Wire Wire Line
	8100 3050 8600 3050
Wire Wire Line
	1400 3250 1900 3250
Text HLabel 6200 5900 0    50   Input ~ 0
ext_cv_B
$Comp
L Device:R R24
U 1 1 61361F76
P 6350 5900
F 0 "R24" V 6143 5900 50  0000 C CNN
F 1 "100k" V 6234 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6280 5900 50  0001 C CNN
F 3 "~" H 6350 5900 50  0001 C CNN
	1    6350 5900
	0    1    1    0   
$EndComp
Text Notes 4700 5900 0    79   ~ 0
range: [0v, +5v]
$Comp
L power:GND #PWR032
U 1 1 61361F7D
P 6600 6300
F 0 "#PWR032" H 6600 6050 50  0001 C CNN
F 1 "GND" H 6605 6127 50  0000 C CNN
F 2 "" H 6600 6300 50  0001 C CNN
F 3 "" H 6600 6300 50  0001 C CNN
	1    6600 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R27
U 1 1 61361F83
P 6600 6150
F 0 "R27" H 6670 6196 50  0000 L CNN
F 1 "12k" H 6670 6105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6530 6150 50  0001 C CNN
F 3 "~" H 6600 6150 50  0001 C CNN
	1    6600 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5900 6600 5900
Wire Wire Line
	6600 6000 6600 5900
Connection ~ 6600 5900
Wire Wire Line
	6600 5900 7100 5900
Wire Wire Line
	6600 5700 7000 5700
Wire Wire Line
	6600 4900 6600 5300
Wire Wire Line
	6600 5300 6500 5300
Connection ~ 6600 5300
Wire Wire Line
	6600 5300 6600 5700
Wire Wire Line
	6100 5300 6200 5300
Wire Wire Line
	6100 5400 6100 5300
$Comp
L power:-5V #PWR031
U 1 1 6137F1D2
P 6100 5400
F 0 "#PWR031" H 6100 5500 50  0001 C CNN
F 1 "-5V" H 6115 5573 50  0000 C CNN
F 2 "" H 6100 5400 50  0001 C CNN
F 3 "" H 6100 5400 50  0001 C CNN
	1    6100 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 2450 2650 2850
Text Notes 7850 5700 0    79   ~ 0
approx. useful range: \n[0v, +2v]
Text Label 3450 3250 0    50   ~ 0
separation_A
Text Label 1400 3250 0    50   ~ 0
separation_B
$Comp
L Device:R R55
U 1 1 61504859
P 2350 3250
F 0 "R55" V 2143 3250 50  0000 C CNN
F 1 "300k" V 2234 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2280 3250 50  0001 C CNN
F 3 "~" H 2350 3250 50  0001 C CNN
	1    2350 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R65
U 1 1 6152AAF2
P 6350 4100
F 0 "R65" V 6143 4100 50  0000 C CNN
F 1 "300k" V 6234 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6280 4100 50  0001 C CNN
F 3 "~" H 6350 4100 50  0001 C CNN
	1    6350 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R66
U 1 1 615362BD
P 6350 5300
F 0 "R66" V 6143 5300 50  0000 C CNN
F 1 "300k" V 6234 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6280 5300 50  0001 C CNN
F 3 "~" H 6350 5300 50  0001 C CNN
	1    6350 5300
	0    1    1    0   
$EndComp
Text Notes 8200 4550 0    157  ~ 0
breadboard the scaler\ncircuits to make sure\nthere are no surprises
Text Notes 1650 5100 0    50   ~ 0
adjust such that +5v is developed\nacross an expression pedal connected\nvia the Tip-Ring-Sleeve jack.
Text Notes 1700 6850 0    50   ~ 0
adjust such that +5v is developed\nacross an expression pedal connected\nvia the Tip-Ring-Sleeve jack.
$EndSCHEMATC
