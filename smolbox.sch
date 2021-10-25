EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L keyboard_parts:KEYSW H_DOWN1
U 1 1 60378CE6
P 3150 4050
F 0 "H_DOWN1" H 3150 4283 60  0000 C CNN
F 1 "KEYSW" H 3150 3950 60  0001 C CNN
F 2 "keyswitches:Kailh_socket_PG1350_optional" H 3150 4050 60  0001 C CNN
F 3 "" H 3150 4050 60  0000 C CNN
	1    3150 4050
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:KEYSW K_UP1
U 1 1 603791BC
P 3150 1100
F 0 "K_UP1" H 3150 1333 60  0000 C CNN
F 1 "KEYSW" H 3150 1000 60  0001 C CNN
F 2 "keyswitches:Kailh_socket_PG1350_optional" H 3150 1100 60  0001 C CNN
F 3 "" H 3150 1100 60  0000 C CNN
	1    3150 1100
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:KEYSW K_RIGHT1
U 1 1 603798E0
P 3150 800
F 0 "K_RIGHT1" H 3150 1033 60  0000 C CNN
F 1 "KEYSW" H 3150 700 60  0001 C CNN
F 2 "keyswitches:Kailh_socket_PG1350_optional" H 3150 800 60  0001 C CNN
F 3 "" H 3150 800 60  0000 C CNN
	1    3150 800 
	1    0    0    -1  
$EndComp
Connection ~ 2850 4050
Wire Wire Line
	2850 2850 2850 2550
Wire Wire Line
	2850 4050 2850 4400
$Comp
L keyboard_parts:KEYSW K_LEFT1
U 1 1 60378332
P 3150 4400
F 0 "K_LEFT1" H 3150 4633 60  0000 C CNN
F 1 "KEYSW" H 3150 4300 60  0001 C CNN
F 2 "keyswitches:Kailh_socket_PG1350_optional" H 3150 4400 60  0001 C CNN
F 3 "" H 3150 4400 60  0000 C CNN
	1    3150 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED L_P1
U 1 1 60388CBB
P 5200 4150
F 0 "L_P1" V 5147 4230 50  0001 L CNN
F 1 "LED" V 5238 4230 50  0001 L CNN
F 2 "keyboard_parts:LED_TH" H 5200 4150 50  0001 C CNN
F 3 "~" H 5200 4150 50  0001 C CNN
	1    5200 4150
	0    1    1    0   
$EndComp
$Comp
L Device:LED L_P2
U 1 1 60389596
P 5300 4150
F 0 "L_P2" V 5247 4230 50  0001 L CNN
F 1 "LED" V 5338 4230 50  0001 L CNN
F 2 "keyboard_parts:LED_TH" H 5300 4150 50  0001 C CNN
F 3 "~" H 5300 4150 50  0001 C CNN
	1    5300 4150
	0    1    1    0   
$EndComp
$Comp
L Device:LED L_P3
U 1 1 6038995A
P 5400 4150
F 0 "L_P3" V 5347 4230 50  0001 L CNN
F 1 "LED" V 5438 4230 50  0001 L CNN
F 2 "keyboard_parts:LED_TH" H 5400 4150 50  0001 C CNN
F 3 "~" H 5400 4150 50  0001 C CNN
	1    5400 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 4300 5200 4300
Connection ~ 5200 4300
Wire Wire Line
	5200 4300 5300 4300
Connection ~ 5300 4300
Wire Wire Line
	5300 4300 5400 4300
Connection ~ 5400 4300
Wire Wire Line
	5400 4300 5500 4300
$Comp
L Device:LED L_P4
U 1 1 60389BA8
P 5500 4150
F 0 "L_P4" V 5493 4230 50  0001 L CNN
F 1 "LED" V 5538 4230 50  0001 L CNN
F 2 "keyboard_parts:LED_TH" H 5500 4150 50  0001 C CNN
F 3 "~" H 5500 4150 50  0001 C CNN
	1    5500 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 4050 5500 4000
Wire Wire Line
	5400 4050 5400 4000
Connection ~ 5400 4000
Wire Wire Line
	5300 4050 5300 4000
Connection ~ 5300 4000
Connection ~ 5200 4000
Wire Wire Line
	5200 4000 5200 4050
Connection ~ 5500 4000
$Comp
L keyboard_parts:KEYSW K_R2
U 1 1 6039FACD
P 3150 1500
F 0 "K_R2" H 3150 1733 60  0000 C CNN
F 1 "KEYSW" H 3150 1400 60  0001 C CNN
F 2 "keyswitches:Kailh_socket_PG1350_optional" H 3150 1500 60  0001 C CNN
F 3 "" H 3150 1500 60  0000 C CNN
	1    3150 1500
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:KEYSW K_CROSS1
U 1 1 603A0875
P 3150 1850
F 0 "K_CROSS1" H 3150 2083 60  0000 C CNN
F 1 "KEYSW" H 3150 1750 60  0001 C CNN
F 2 "keyswitches:Kailh_socket_PG1350_optional" H 3150 1850 60  0001 C CNN
F 3 "" H 3150 1850 60  0000 C CNN
	1    3150 1850
	1    0    0    -1  
$EndComp
Connection ~ 2850 1850
Wire Wire Line
	2850 2850 3700 2850
Connection ~ 2850 800 
Wire Wire Line
	2850 800  2850 750 
Connection ~ 2850 1100
Wire Wire Line
	2850 1100 2850 800 
Wire Wire Line
	2850 1100 2850 1500
Connection ~ 2850 1500
Wire Wire Line
	2850 1500 2850 1850
$Comp
L keyboard_parts:KEYSW K_TRIANGLE1
U 1 1 603BA0C0
P 3150 2200
F 0 "K_TRIANGLE1" H 3150 2433 60  0000 C CNN
F 1 "KEYSW" H 3150 2100 60  0001 C CNN
F 2 "keyswitches:Kailh_socket_PG1350_optional" H 3150 2200 60  0001 C CNN
F 3 "" H 3150 2200 60  0000 C CNN
	1    3150 2200
	1    0    0    -1  
$EndComp
Connection ~ 2850 2200
Wire Wire Line
	2850 2200 2850 1850
$Comp
L keyboard_parts:KEYSW K_L1
U 1 1 603BBFCA
P 3150 2550
F 0 "K_L1" H 3150 2783 60  0000 C CNN
F 1 "KEYSW" H 3150 2450 60  0001 C CNN
F 2 "keyswitches:Kailh_socket_PG1350_optional" H 3150 2550 60  0001 C CNN
F 3 "" H 3150 2550 60  0000 C CNN
	1    3150 2550
	1    0    0    -1  
$EndComp
Connection ~ 2850 2550
Wire Wire Line
	2850 2550 2850 2200
Wire Wire Line
	4400 2200 3450 2200
Connection ~ 3450 2200
Wire Wire Line
	3450 2200 3350 2200
Wire Wire Line
	4300 2550 3450 2550
Connection ~ 3450 2550
Wire Wire Line
	3450 2550 3400 2550
Wire Wire Line
	4200 1850 3450 1850
Connection ~ 3450 1850
Wire Wire Line
	3450 1850 3400 1850
Wire Wire Line
	4100 1500 3450 1500
Connection ~ 3450 1500
Wire Wire Line
	3450 1500 3400 1500
Wire Wire Line
	4700 800  3450 800 
Connection ~ 3450 800 
Wire Wire Line
	3450 800  3400 800 
Wire Wire Line
	4800 1100 3550 1100
Wire Wire Line
	3450 1100 3400 1100
Connection ~ 3450 1100
Wire Wire Line
	2850 3750 3700 3750
Wire Wire Line
	4800 3450 4800 4050
Wire Wire Line
	4800 4050 3450 4050
Wire Wire Line
	2850 3750 2850 4050
Connection ~ 2850 4400
Wire Wire Line
	2850 4400 2850 4750
$Comp
L keyboard_parts:KEYSW K_SQUERE1
U 1 1 6040DED8
P 3150 4750
F 0 "K_SQUERE1" H 3150 4983 60  0000 C CNN
F 1 "KEYSW" H 3150 4650 60  0001 C CNN
F 2 "keyswitches:Kailh_socket_PG1350_optional" H 3150 4750 60  0001 C CNN
F 3 "" H 3150 4750 60  0000 C CNN
	1    3150 4750
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:KEYSW K_R1
U 1 1 6040E32A
P 3150 5100
F 0 "K_R1" H 3150 5333 60  0000 C CNN
F 1 "KEYSW" H 3150 5000 60  0001 C CNN
F 2 "keyswitches:Kailh_socket_PG1350_optional" H 3150 5100 60  0001 C CNN
F 3 "" H 3150 5100 60  0000 C CNN
	1    3150 5100
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:KEYSW K_CIRCLE1
U 1 1 6040E8DB
P 3150 5500
F 0 "K_CIRCLE1" H 3150 5733 60  0000 C CNN
F 1 "KEYSW" H 3150 5400 60  0001 C CNN
F 2 "keyswitches:Kailh_socket_PG1350_optional" H 3150 5500 60  0001 C CNN
F 3 "" H 3150 5500 60  0000 C CNN
	1    3150 5500
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:KEYSW K_L2
U 1 1 6040EF4D
P 3150 5850
F 0 "K_L2" H 3150 6083 60  0000 C CNN
F 1 "KEYSW" H 3150 5750 60  0001 C CNN
F 2 "keyswitches:Kailh_socket_PG1350_optional" H 3150 5850 60  0001 C CNN
F 3 "" H 3150 5850 60  0000 C CNN
	1    3150 5850
	1    0    0    -1  
$EndComp
Connection ~ 2850 4750
Wire Wire Line
	2850 4750 2850 5100
Connection ~ 2850 5100
Wire Wire Line
	2850 5100 2850 5500
Connection ~ 2850 5500
Wire Wire Line
	2850 5500 2850 5850
Wire Wire Line
	3450 4400 4700 4400
Wire Wire Line
	4500 3450 4500 4750
Wire Wire Line
	4500 4750 3450 4750
Wire Wire Line
	4400 3450 4400 5100
Wire Wire Line
	4400 5100 3450 5100
Wire Wire Line
	4200 3450 4200 5500
Wire Wire Line
	4200 5500 3450 5500
Wire Wire Line
	4100 3450 4100 5850
Wire Wire Line
	4100 5850 3450 5850
$Comp
L keyboard_parts:SW_PUSH SW_SELECT1
U 1 1 604357B3
P 2450 3000
F 0 "SW_SELECT1" H 2450 3255 50  0000 C CNN
F 1 "SW_PUSH" H 2450 3164 50  0000 C CNN
F 2 "arcade:SW_PUSH_6mm_hole" H 2450 3000 60  0001 C CNN
F 3 "" H 2450 3000 60  0000 C CNN
	1    2450 3000
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:SW_PUSH SW_PS1
U 1 1 6043CD97
P 2450 3700
F 0 "SW_PS1" H 2450 3955 50  0000 C CNN
F 1 "SW_PUSH" H 2450 3864 50  0000 C CNN
F 2 "arcade:SW_PUSH_6mm_hole" H 2450 3700 60  0001 C CNN
F 3 "" H 2450 3700 60  0000 C CNN
	1    2450 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3750 2150 3750
Wire Wire Line
	2150 3750 2150 3700
Connection ~ 2850 3750
Connection ~ 2150 3350
Wire Wire Line
	2150 3350 2150 3000
Connection ~ 2150 3700
Wire Wire Line
	2150 3700 2150 3350
Wire Wire Line
	2750 3000 3550 3000
Wire Wire Line
	3550 3000 3550 2350
Wire Wire Line
	3550 2350 4600 2350
Wire Wire Line
	4600 2350 4600 3050
Wire Wire Line
	4500 3050 4500 2400
Wire Wire Line
	4500 2400 3600 2400
Wire Wire Line
	3600 2400 3600 3350
Wire Wire Line
	3600 3350 2750 3350
Wire Wire Line
	2750 3700 4600 3700
Wire Wire Line
	4600 3700 4600 3450
$Comp
L keyboard_parts:SW_PUSH SW_START1
U 1 1 6043C79F
P 2450 3350
F 0 "SW_START1" H 2450 3605 50  0000 C CNN
F 1 "SW_PUSH" H 2450 3514 50  0000 C CNN
F 2 "arcade:SW_PUSH_6mm_hole" H 2450 3350 60  0001 C CNN
F 3 "" H 2450 3350 60  0000 C CNN
	1    2450 3350
	1    0    0    -1  
$EndComp
Connection ~ 4700 3450
Wire Wire Line
	4700 3450 4700 4400
Wire Wire Line
	4700 3400 4700 3450
Wire Wire Line
	3700 2850 3700 3750
Connection ~ 4100 3050
Wire Wire Line
	4100 3050 4100 1500
Wire Wire Line
	4100 3100 4100 3050
Connection ~ 4200 3050
Wire Wire Line
	4200 3050 4200 1850
Wire Wire Line
	4200 3100 4200 3050
Connection ~ 4300 3050
Wire Wire Line
	4300 3050 4300 2550
Wire Wire Line
	4300 3100 4300 3050
Connection ~ 4400 3050
Wire Wire Line
	4400 3050 4400 2200
Wire Wire Line
	4400 3100 4400 3050
Connection ~ 4000 3050
Wire Wire Line
	4000 3050 4000 3100
Wire Wire Line
	4000 2850 4000 3050
Connection ~ 5200 3450
Wire Wire Line
	5200 3450 5200 4000
Wire Wire Line
	5200 3400 5200 3450
Wire Wire Line
	5300 4000 5300 3450
Wire Wire Line
	5300 3450 5300 3400
Connection ~ 5300 3450
Wire Wire Line
	5400 4000 5400 3450
Wire Wire Line
	5400 3450 5400 3400
Connection ~ 5400 3450
Wire Wire Line
	5500 4000 5500 3450
Wire Wire Line
	5500 3450 5500 3400
Connection ~ 5500 3450
Connection ~ 5100 3450
Wire Wire Line
	5100 3450 5100 4300
Wire Wire Line
	5100 3400 5100 3450
Wire Wire Line
	4800 1100 4800 3050
Wire Wire Line
	4800 3050 4800 3100
Connection ~ 4800 3050
Connection ~ 4700 3050
Wire Wire Line
	4700 800  4700 3050
Wire Wire Line
	4700 3100 4700 3050
$Comp
L arcade:Brooks BR1
U 1 1 6037D3BA
P 5150 3450
F 0 "BR1" H 5628 3721 50  0000 L CNN
F 1 "Brooks" H 5628 3630 50  0000 L CNN
F 2 "arcade:Brooks" H 4650 3650 50  0001 C CNN
F 3 "" H 4650 3650 50  0001 C CNN
	1    5150 3450
	1    0    0    -1  
$EndComp
$Comp
L keyboard_parts:KEYSW K_UP2
U 1 1 60497F0F
P 2450 2650
F 0 "K_UP2" H 2450 2883 60  0000 C CNN
F 1 "KEYSW" H 2450 2550 60  0001 C CNN
F 2 "keyswitches:Kailh_socket_PG1350_optional" H 2450 2650 60  0001 C CNN
F 3 "" H 2450 2650 60  0000 C CNN
	1    2450 2650
	1    0    0    -1  
$EndComp
Connection ~ 2150 3000
Wire Wire Line
	2150 3000 2150 2650
Wire Wire Line
	2750 2650 2750 1300
Wire Wire Line
	2750 1300 3550 1300
Wire Wire Line
	3550 1300 3550 1100
Connection ~ 3550 1100
Wire Wire Line
	3550 1100 3450 1100
$Comp
L Device:R R_cc1
U 1 1 603B7644
P 6950 2050
F 0 "R_cc1" H 7020 2096 50  0001 L CNN
F 1 "R" H 7020 2050 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6880 2050 50  0001 C CNN
F 3 "~" H 6950 2050 50  0001 C CNN
	1    6950 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R_cc2
U 1 1 603B85E8
P 6850 2050
F 0 "R_cc2" H 6920 2096 50  0001 L CNN
F 1 "R" H 6920 2050 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6780 2050 50  0001 C CNN
F 3 "~" H 6850 2050 50  0001 C CNN
	1    6850 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1900 6950 1700
Wire Wire Line
	6850 1700 6850 1900
Wire Wire Line
	5200 3050 5200 2200
Wire Wire Line
	5200 2200 6850 2200
Connection ~ 6850 2200
Wire Wire Line
	6850 2200 6950 2200
Wire Wire Line
	5200 2200 5200 1100
Wire Wire Line
	5200 1100 5650 1100
Connection ~ 5200 2200
Wire Wire Line
	6350 1700 6350 1950
Wire Wire Line
	5300 1950 5300 3050
Wire Wire Line
	6650 1700 6650 2050
Wire Wire Line
	6650 2050 6550 2050
Wire Wire Line
	5400 2050 5400 3050
Wire Wire Line
	6550 1700 6550 2050
Connection ~ 6550 2050
Wire Wire Line
	6550 2050 5400 2050
Wire Wire Line
	6450 1700 6450 1950
Wire Wire Line
	5300 1950 6350 1950
Connection ~ 6350 1950
Wire Wire Line
	6350 1950 6450 1950
Wire Wire Line
	7150 1800 5100 1800
Wire Wire Line
	5100 1800 5100 3050
Text Label 6550 1850 0    50   ~ 0
USB_D-
Text Label 6200 1950 0    50   ~ 0
USB_D+
Connection ~ 7150 1700
Wire Wire Line
	7150 1700 7150 1800
Wire Wire Line
	7150 1650 7150 1700
$Comp
L Connector:USB_C_Receptacle_USB2.0 USB1
U 1 1 603B45DC
P 6550 1100
F 0 "USB1" V 6611 1830 50  0000 L CNN
F 1 "USB_C_Receptacle_USB2.0" V 6702 1830 50  0000 L CNN
F 2 "arcade:4085" H 6700 1100 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 6700 1100 50  0001 C CNN
	1    6550 1100
	0    1    1    0   
$EndComp
Connection ~ 3700 2850
Wire Wire Line
	3700 2850 4000 2850
$EndSCHEMATC
