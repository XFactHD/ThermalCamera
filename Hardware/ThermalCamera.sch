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
L Custom:SAMD51J U1
U 1 1 5E9214FE
P 4450 6050
F 0 "U1" H 4400 6100 60  0000 L CNN
F 1 "SAMD51J" H 4250 6000 60  0000 L CNN
F 2 "Housings_QFP:TQFP-64_10x10mm_Pitch0.5mm" H 4450 6050 60  0001 C CNN
F 3 "" H 4450 6050 60  0001 C CNN
	1    4450 6050
	1    0    0    -1  
$EndComp
$Comp
L Custom:NHD-2.8-240320AF-CSXP-F U2
U 1 1 5E922F07
P 9900 1800
F 0 "U2" H 9900 1850 50  0000 C CNN
F 1 "NHD-2.8-240320AF-CSXP-F" H 9900 1750 50  0000 C CNN
F 2 "Custom:NHD-2.8-240320AF-CSXP-F" H 9900 1800 50  0001 C CNN
F 3 "" H 9900 1800 50  0001 C CNN
	1    9900 1800
	1    0    0    -1  
$EndComp
Text GLabel 10950 1050 2    50   Input ~ 0
D0
Text GLabel 10950 1150 2    50   Input ~ 0
D1
Text GLabel 10950 1250 2    50   Input ~ 0
D2
Text GLabel 10950 1350 2    50   Input ~ 0
D3
Text GLabel 10950 1450 2    50   Input ~ 0
D4
Text GLabel 10950 1550 2    50   Input ~ 0
D5
Text GLabel 10950 1650 2    50   Input ~ 0
D6
Text GLabel 10950 1750 2    50   Input ~ 0
D7
Text GLabel 10950 1850 2    50   Input ~ 0
D8
Text GLabel 10950 1950 2    50   Input ~ 0
D9
Text GLabel 10950 2050 2    50   Input ~ 0
D10
Text GLabel 10950 2150 2    50   Input ~ 0
D11
Text GLabel 10950 2250 2    50   Input ~ 0
D12
Text GLabel 10950 2350 2    50   Input ~ 0
D13
Text GLabel 10950 2450 2    50   Input ~ 0
D14
Text GLabel 10950 2550 2    50   Input ~ 0
D15
Wire Wire Line
	10900 1050 10950 1050
Wire Wire Line
	10900 1150 10950 1150
Wire Wire Line
	10900 1250 10950 1250
Wire Wire Line
	10900 1350 10950 1350
Wire Wire Line
	10900 1450 10950 1450
Wire Wire Line
	10900 1550 10950 1550
Wire Wire Line
	10900 1650 10950 1650
Wire Wire Line
	10900 1750 10950 1750
Wire Wire Line
	10900 1850 10950 1850
Wire Wire Line
	10900 1950 10950 1950
Wire Wire Line
	10900 2050 10950 2050
Wire Wire Line
	10900 2150 10950 2150
Wire Wire Line
	10900 2250 10950 2250
Wire Wire Line
	10900 2350 10950 2350
Wire Wire Line
	10900 2450 10950 2450
Wire Wire Line
	10900 2550 10950 2550
Text GLabel 4000 4650 1    50   Input ~ 0
D0
Text GLabel 3900 4650 1    50   Input ~ 0
D1
Text GLabel 3800 4650 1    50   Input ~ 0
D2
Text GLabel 3700 4650 1    50   Input ~ 0
D3
Text GLabel 3400 5700 0    50   Input ~ 0
D4
Text GLabel 3400 5800 0    50   Input ~ 0
D5
Text GLabel 3400 6100 0    50   Input ~ 0
D6
Text GLabel 3400 6200 0    50   Input ~ 0
D7
Text GLabel 3400 6300 0    50   Input ~ 0
D8
Text GLabel 3400 6400 0    50   Input ~ 0
D9
Text GLabel 4300 7400 3    50   Input ~ 0
D10
Text GLabel 4400 7400 3    50   Input ~ 0
D11
Text GLabel 4500 7400 3    50   Input ~ 0
D12
Text GLabel 4600 7400 3    50   Input ~ 0
D13
Text GLabel 4700 7400 3    50   Input ~ 0
D14
Text GLabel 4800 7400 3    50   Input ~ 0
D15
Text GLabel 4200 7400 3    50   Input ~ 0
GND
Text GLabel 4100 7400 3    50   Input ~ 0
3.3V
Text GLabel 3400 6000 0    50   Input ~ 0
3.3V
Text GLabel 3400 5900 0    50   Input ~ 0
GND
Text GLabel 4700 4650 1    50   Input ~ 0
GND
Text GLabel 5500 5400 2    50   Input ~ 0
GND
Text GLabel 5500 6800 2    50   Input ~ 0
GND
Text GLabel 4500 4650 1    50   Input ~ 0
3.3V
Text GLabel 5500 5300 2    50   Input ~ 0
3.3V
Text GLabel 5500 6700 2    50   Input ~ 0
3.3V
$Comp
L Device:Crystal Y1
U 1 1 5E92C1CC
P 2950 5350
F 0 "Y1" V 2950 5400 50  0000 R CNN
F 1 "32.768k" V 2950 5800 50  0000 R CNN
F 2 "Crystals:Crystal_SMD_3215-2pin_3.2x1.5mm" H 2950 5350 50  0001 C CNN
F 3 "~" H 2950 5350 50  0001 C CNN
	1    2950 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 5E92D09E
P 2750 5150
F 0 "C1" V 2498 5150 50  0000 C CNN
F 1 "8p" V 2589 5150 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 2788 5000 50  0001 C CNN
F 3 "~" H 2750 5150 50  0001 C CNN
	1    2750 5150
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5E92DD1C
P 2750 5550
F 0 "C2" V 2900 5550 50  0000 C CNN
F 1 "8p" V 3000 5550 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 2788 5400 50  0001 C CNN
F 3 "~" H 2750 5550 50  0001 C CNN
	1    2750 5550
	0    1    1    0   
$EndComp
Text GLabel 2550 5150 0    50   Input ~ 0
GND
Text GLabel 2550 5550 0    50   Input ~ 0
GND
Wire Wire Line
	2550 5150 2600 5150
Wire Wire Line
	2550 5550 2600 5550
Wire Wire Line
	2900 5550 2950 5550
Wire Wire Line
	2950 5550 2950 5500
Wire Wire Line
	2900 5150 2950 5150
Wire Wire Line
	2950 5150 2950 5200
Wire Wire Line
	2950 5150 3100 5150
Wire Wire Line
	3100 5150 3100 5300
Wire Wire Line
	3100 5300 3450 5300
Connection ~ 2950 5150
Wire Wire Line
	2950 5550 3100 5550
Wire Wire Line
	3100 5550 3100 5400
Wire Wire Line
	3100 5400 3450 5400
Connection ~ 2950 5550
Wire Wire Line
	3400 5700 3450 5700
Wire Wire Line
	3400 5800 3450 5800
Wire Wire Line
	3400 5900 3450 5900
Wire Wire Line
	3400 6000 3450 6000
Wire Wire Line
	3400 6100 3450 6100
Wire Wire Line
	3400 6200 3450 6200
Wire Wire Line
	3400 6300 3450 6300
Wire Wire Line
	3400 6400 3450 6400
Wire Wire Line
	4100 7350 4100 7400
Wire Wire Line
	4200 7350 4200 7400
Wire Wire Line
	4300 7350 4300 7400
Wire Wire Line
	4400 7350 4400 7400
Wire Wire Line
	4500 7350 4500 7400
Wire Wire Line
	4600 7350 4600 7400
Wire Wire Line
	4700 7350 4700 7400
Wire Wire Line
	4800 7350 4800 7400
Wire Wire Line
	5450 6700 5500 6700
Wire Wire Line
	5450 6800 5500 6800
Wire Wire Line
	5450 5300 5500 5300
Wire Wire Line
	5450 5400 5500 5400
Wire Wire Line
	4500 4650 4500 4700
Wire Wire Line
	4700 4650 4700 4700
Wire Wire Line
	3700 4650 3700 4700
Wire Wire Line
	3800 4650 3800 4700
Wire Wire Line
	3900 4650 3900 4700
Wire Wire Line
	4000 4650 4000 4700
Text GLabel 8850 1250 0    50   Input ~ 0
LCD_CS
Text GLabel 8850 1350 0    50   Input ~ 0
LCD_DC
Text GLabel 8850 1450 0    50   Input ~ 0
LCD_WR
Text GLabel 8850 1550 0    50   Input ~ 0
LCD_RD
Text GLabel 8850 1650 0    50   Input ~ 0
LCD_RST
Text GLabel 9800 2850 3    50   Input ~ 0
GND
Text GLabel 9900 2850 3    50   Input ~ 0
GND
Text GLabel 10000 2850 3    50   Input ~ 0
GND
Text GLabel 9850 750  1    50   Input ~ 0
3.3V
Text GLabel 9950 750  1    50   Input ~ 0
3.3V
$Comp
L Device:R R3
U 1 1 5E9431B5
P 8700 2350
F 0 "R3" V 8700 2350 50  0000 C CNN
F 1 "R" V 8800 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8630 2350 50  0001 C CNN
F 3 "~" H 8700 2350 50  0001 C CNN
	1    8700 2350
	0    1    1    0   
$EndComp
Text GLabel 8850 1950 0    50   Input ~ 0
GND
Text GLabel 8850 2050 0    50   Input ~ 0
GND
Text GLabel 8850 2150 0    50   Input ~ 0
GND
Text GLabel 8850 2250 0    50   Input ~ 0
GND
Text GLabel 8500 2350 0    50   Input ~ 0
3.3V
Wire Wire Line
	8500 2350 8550 2350
Wire Wire Line
	8850 2350 8900 2350
Wire Wire Line
	8850 1250 8900 1250
Wire Wire Line
	8850 1350 8900 1350
Wire Wire Line
	8850 1450 8900 1450
Wire Wire Line
	8850 1550 8900 1550
Wire Wire Line
	8850 1650 8900 1650
Wire Wire Line
	8850 1950 8900 1950
Wire Wire Line
	8850 2050 8900 2050
Wire Wire Line
	8850 2150 8900 2150
Wire Wire Line
	8850 2250 8900 2250
Wire Wire Line
	9850 750  9850 800 
Wire Wire Line
	9950 750  9950 800 
Wire Wire Line
	9800 2800 9800 2850
Wire Wire Line
	9900 2800 9900 2850
Wire Wire Line
	10000 2800 10000 2850
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J1
U 1 1 5E958460
P 7800 5500
F 0 "J1" H 7550 6050 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" V 7450 5950 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch1.27mm_SMD" H 7800 5500 50  0001 C CNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.ddi0314h/DDI0314H_coresight_components_trm.pdf" V 7450 4250 50  0001 C CNN
	1    7800 5500
	1    0    0    -1  
$EndComp
Text GLabel 7800 6150 3    50   Input ~ 0
GND
Text GLabel 7700 6150 3    50   Input ~ 0
GND
Text GLabel 7800 4850 1    50   Input ~ 0
3.3V
Text GLabel 4400 4650 1    50   Input ~ 0
SWCLK
Text GLabel 8350 5400 2    50   Input ~ 0
SWCLK
Text GLabel 4300 4650 1    50   Input ~ 0
SWDIO
Text GLabel 8350 5500 2    50   Input ~ 0
SWDIO
Text GLabel 4900 4650 1    50   Input ~ 0
RESET
Text GLabel 8350 5200 2    50   Input ~ 0
RESET
Wire Wire Line
	4300 4650 4300 4700
Wire Wire Line
	4400 4650 4400 4700
Wire Wire Line
	4900 4650 4900 4700
Wire Wire Line
	8300 5200 8350 5200
Wire Wire Line
	8300 5400 8350 5400
Wire Wire Line
	8300 5500 8350 5500
Wire Wire Line
	7800 6100 7800 6150
Wire Wire Line
	7700 6100 7700 6150
Wire Wire Line
	7800 4850 7800 4900
Text GLabel 9150 5650 3    50   Input ~ 0
RESET
Text GLabel 8950 5650 3    50   Input ~ 0
SWCLK
$Comp
L Device:R R1
U 1 1 5E97BA25
P 8950 5450
F 0 "R1" V 8950 5450 50  0000 C CNN
F 1 "10k" V 9050 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8880 5450 50  0001 C CNN
F 3 "~" H 8950 5450 50  0001 C CNN
	1    8950 5450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5E97C270
P 9150 5450
F 0 "R2" V 9150 5450 50  0000 C CNN
F 1 "10k" V 9250 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9080 5450 50  0001 C CNN
F 3 "~" H 9150 5450 50  0001 C CNN
	1    9150 5450
	-1   0    0    1   
$EndComp
Text GLabel 8950 5250 1    50   Input ~ 0
3.3V
Text GLabel 9150 5250 1    50   Input ~ 0
3.3V
Wire Wire Line
	8950 5250 8950 5300
Wire Wire Line
	9150 5250 9150 5300
Wire Wire Line
	8950 5600 8950 5650
Wire Wire Line
	9150 5600 9150 5650
$Comp
L Custom:DM3AT-SF-PEJM5 J2
U 1 1 5E98B818
P 9650 4000
F 0 "J2" H 9950 4650 50  0000 L CNN
F 1 "DM3AT-SF-PEJM5" V 10300 3650 50  0000 L CNN
F 2 "DM3AT-SF-PEJM5:HRS_DM3AT-SF-PEJM5" H 9650 4000 50  0001 L BNN
F 3 "DM3 RA SMT microSD memory card push/push" H 9650 4000 50  0001 L BNN
F 4 "HR1964CT-ND" H 9650 4000 50  0001 L BNN "Feld4"
F 5 "Hirose" H 9650 4000 50  0001 L BNN "Feld5"
F 6 "https://www.digikey.de/product-detail/en/hirose-electric-co-ltd/DM3AT-SF-PEJM5/HR1964CT-ND/2533566?utm_source=snapeda&utm_medium=aggregator&utm_campaign=symbol" H 9650 4000 50  0001 L BNN "Feld6"
F 7 "DM3AT-SF-PEJM5" H 9650 4000 50  0001 L BNN "Feld7"
F 8 "None" H 9650 4000 50  0001 L BNN "Feld8"
	1    9650 4000
	1    0    0    -1  
$EndComp
Text GLabel 9400 3500 0    50   Input ~ 0
3.3V
Text GLabel 9400 4200 0    50   Input ~ 0
GND
Text GLabel 9400 3900 0    50   Input ~ 0
SD_CS
Text GLabel 9400 3600 0    50   Input ~ 0
SD_MISO
Text GLabel 9400 4000 0    50   Input ~ 0
SD_MOSI
Text GLabel 9400 4100 0    50   Input ~ 0
SD_SCLK
Wire Wire Line
	9400 3500 9450 3500
Wire Wire Line
	9400 3600 9450 3600
Wire Wire Line
	9400 3900 9450 3900
Wire Wire Line
	9400 4000 9450 4000
Wire Wire Line
	9400 4100 9450 4100
Wire Wire Line
	9400 4200 9450 4200
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5E99C651
P 1350 5500
F 0 "J3" H 1300 5700 50  0000 L CNN
F 1 "MLX" V 1450 5350 50  0000 L CNN
F 2 "Connectors_JST:JST_SH_SM04B-SRSS-TB_04x1.00mm_Angled" H 1350 5500 50  0001 C CNN
F 3 "~" H 1350 5500 50  0001 C CNN
	1    1350 5500
	1    0    0    -1  
$EndComp
Text GLabel 1100 5500 0    50   Input ~ 0
3.3V
Text GLabel 1100 5400 0    50   Input ~ 0
GND
Text GLabel 4900 7400 3    50   Input ~ 0
SDA
Text GLabel 5000 7400 3    50   Input ~ 0
SCL
Wire Wire Line
	4900 7350 4900 7400
Wire Wire Line
	5000 7350 5000 7400
Text GLabel 1100 5600 0    50   Input ~ 0
SDA
Text GLabel 1100 5700 0    50   Input ~ 0
SCL
Wire Wire Line
	1100 5500 1150 5500
Wire Wire Line
	1100 5600 1150 5600
Wire Wire Line
	1100 5700 1150 5700
Wire Wire Line
	1100 5400 1150 5400
Text GLabel 5100 7400 3    50   Input ~ 0
LCD_RST
Wire Wire Line
	5100 7350 5100 7400
Text GLabel 9400 4400 0    50   Input ~ 0
GND
Text GLabel 9400 4500 0    50   Input ~ 0
SD_SW
Wire Wire Line
	9400 4500 9450 4500
Wire Wire Line
	9400 4400 9450 4400
Text GLabel 10500 4150 3    50   Input ~ 0
SD_SW
Text GLabel 10500 3750 1    50   Input ~ 0
3.3V
$Comp
L Device:R R4
U 1 1 5E9CADFE
P 10500 3950
F 0 "R4" V 10500 3950 50  0000 C CNN
F 1 "10k" V 10600 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 10430 3950 50  0001 C CNN
F 3 "~" H 10500 3950 50  0001 C CNN
	1    10500 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	10500 3750 10500 3800
Wire Wire Line
	10500 4100 10500 4150
Text GLabel 5200 4650 1    50   Input ~ 0
SD_MISO
Text GLabel 5100 4650 1    50   Input ~ 0
SD_MOSI
Text GLabel 5500 6500 2    50   Input ~ 0
SD_SCLK
Text GLabel 5500 6400 2    50   Input ~ 0
SD_CS
Text GLabel 5500 6600 2    50   Input ~ 0
SD_SW
Wire Wire Line
	5100 4650 5100 4700
Wire Wire Line
	5200 4650 5200 4700
Wire Wire Line
	5450 6400 5500 6400
Wire Wire Line
	5450 6500 5500 6500
Wire Wire Line
	5450 6600 5500 6600
$Comp
L Device:C C4
U 1 1 5EA04CEF
P 6400 5550
F 0 "C4" V 6148 5550 50  0000 C CNN
F 1 "100n" V 6239 5550 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 6438 5400 50  0001 C CNN
F 3 "~" H 6400 5550 50  0001 C CNN
	1    6400 5550
	0    1    1    0   
$EndComp
Text GLabel 6200 5550 0    50   Input ~ 0
3.3V
Text GLabel 6600 5550 2    50   Input ~ 0
GND
Wire Wire Line
	6200 5550 6250 5550
Wire Wire Line
	6550 5550 6600 5550
$Comp
L Device:C C5
U 1 1 5EA23BF8
P 6400 5950
F 0 "C5" V 6148 5950 50  0000 C CNN
F 1 "100n" V 6239 5950 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 6438 5800 50  0001 C CNN
F 3 "~" H 6400 5950 50  0001 C CNN
	1    6400 5950
	0    1    1    0   
$EndComp
Text GLabel 6200 5950 0    50   Input ~ 0
3.3V
Text GLabel 6600 5950 2    50   Input ~ 0
GND
Wire Wire Line
	6200 5950 6250 5950
Wire Wire Line
	6550 5950 6600 5950
$Comp
L Device:C C6
U 1 1 5EA2B5BC
P 6400 6350
F 0 "C6" V 6148 6350 50  0000 C CNN
F 1 "100n" V 6239 6350 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 6438 6200 50  0001 C CNN
F 3 "~" H 6400 6350 50  0001 C CNN
	1    6400 6350
	0    1    1    0   
$EndComp
Text GLabel 6200 6350 0    50   Input ~ 0
3.3V
Text GLabel 6600 6350 2    50   Input ~ 0
GND
Wire Wire Line
	6200 6350 6250 6350
Wire Wire Line
	6550 6350 6600 6350
$Comp
L Device:C C7
U 1 1 5EA2B5CA
P 6400 6750
F 0 "C7" V 6148 6750 50  0000 C CNN
F 1 "100n" V 6239 6750 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 6438 6600 50  0001 C CNN
F 3 "~" H 6400 6750 50  0001 C CNN
	1    6400 6750
	0    1    1    0   
$EndComp
Text GLabel 6200 6750 0    50   Input ~ 0
3.3V
Text GLabel 6600 6750 2    50   Input ~ 0
GND
Wire Wire Line
	6200 6750 6250 6750
Wire Wire Line
	6550 6750 6600 6750
$Comp
L Device:C C8
U 1 1 5EA30446
P 7500 2450
F 0 "C8" V 7248 2450 50  0000 C CNN
F 1 "100n" V 7339 2450 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 7538 2300 50  0001 C CNN
F 3 "~" H 7500 2450 50  0001 C CNN
	1    7500 2450
	-1   0    0    1   
$EndComp
Text GLabel 7500 2650 3    50   Input ~ 0
GND
Wire Wire Line
	7500 2600 7500 2650
$Comp
L Device:C C9
U 1 1 5EA34E91
P 9250 800
F 0 "C9" V 8998 800 50  0000 C CNN
F 1 "100n" V 9089 800 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 9288 650 50  0001 C CNN
F 3 "~" H 9250 800 50  0001 C CNN
	1    9250 800 
	0    1    1    0   
$EndComp
Text GLabel 9050 800  0    50   Input ~ 0
3.3V
Text GLabel 9450 800  2    50   Input ~ 0
GND
Wire Wire Line
	9050 800  9100 800 
Wire Wire Line
	9400 800  9450 800 
$Comp
L Device:C C3
U 1 1 5EA3AB4D
P 10700 4000
F 0 "C3" V 10448 4000 50  0000 C CNN
F 1 "100n" V 10539 4000 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 10738 3850 50  0001 C CNN
F 3 "~" H 10700 4000 50  0001 C CNN
	1    10700 4000
	-1   0    0    1   
$EndComp
Text GLabel 10700 3800 1    50   Input ~ 0
3.3V
Text GLabel 10700 4200 3    50   Input ~ 0
GND
Wire Wire Line
	10700 3800 10700 3850
Wire Wire Line
	10700 4150 10700 4200
Text GLabel 2600 1550 2    50   Input ~ 0
GND
Text GLabel 2600 750  2    50   Input ~ 0
VBUS
$Comp
L USB4110-GF-A:USB4110-GF-A J4
U 1 1 5EA5AFC9
P 1850 1050
F 0 "J4" H 1850 1500 50  0000 C CNN
F 1 "USB4110-GF-A" H 1850 650 50  0000 C CNN
F 2 "Custom:GCT_USB4110-GF-A" H 1850 1050 50  0001 L BNN
F 3 "Manufacturer Recommendations" H 1850 1050 50  0001 L BNN
F 4 "A" H 1850 1050 50  0001 L BNN "Feld4"
F 5 "GCT" H 1850 1050 50  0001 L BNN "Feld5"
F 6 "3.26 mm" H 1850 1050 50  0001 L BNN "Feld6"
	1    1850 1050
	1    0    0    -1  
$EndComp
Text GLabel 2600 1650 2    50   Input ~ 0
GND
Text GLabel 2600 850  2    50   Input ~ 0
VBUS
Wire Wire Line
	2550 750  2600 750 
Wire Wire Line
	2550 850  2600 850 
Wire Wire Line
	2550 1550 2600 1550
Wire Wire Line
	2550 1650 2600 1650
$Comp
L Device:C C10
U 1 1 5EA96C1D
P 6400 4750
F 0 "C10" V 6148 4750 50  0000 C CNN
F 1 "1u" V 6239 4750 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 6438 4600 50  0001 C CNN
F 3 "~" H 6400 4750 50  0001 C CNN
	1    6400 4750
	0    1    1    0   
$EndComp
$Comp
L Device:C C11
U 1 1 5EA97030
P 6400 5150
F 0 "C11" V 6148 5150 50  0000 C CNN
F 1 "10u" V 6239 5150 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 6438 5000 50  0001 C CNN
F 3 "~" H 6400 5150 50  0001 C CNN
	1    6400 5150
	0    1    1    0   
$EndComp
Text GLabel 6600 4750 2    50   Input ~ 0
GND
Text GLabel 6600 5150 2    50   Input ~ 0
GND
Text GLabel 4800 4650 1    50   Input ~ 0
VCORE
Text GLabel 6200 4750 0    50   Input ~ 0
VCORE
Text GLabel 6200 5150 0    50   Input ~ 0
VCORE
Wire Wire Line
	6550 4750 6600 4750
Wire Wire Line
	6550 5150 6600 5150
Wire Wire Line
	6200 4750 6250 4750
Wire Wire Line
	6200 5150 6250 5150
Wire Wire Line
	4800 4650 4800 4700
$Comp
L Battery_Management:MCP73831-2-OT U3
U 1 1 5EACCFD5
P 3150 2700
F 0 "U3" H 2950 2950 50  0000 C CNN
F 1 "MCP73831-2-OT" H 3500 2950 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 3200 2450 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 3000 2650 50  0001 C CNN
	1    3150 2700
	1    0    0    -1  
$EndComp
Text GLabel 3150 2350 1    50   Input ~ 0
VBUS
Text GLabel 3150 3050 3    50   Input ~ 0
GND
$Comp
L Device:R R6
U 1 1 5EACE330
P 2700 3000
F 0 "R6" V 2700 3000 50  0000 C CNN
F 1 "10k" V 2800 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2630 3000 50  0001 C CNN
F 3 "~" H 2700 3000 50  0001 C CNN
	1    2700 3000
	1    0    0    -1  
$EndComp
Text GLabel 2700 3200 3    50   Input ~ 0
GND
Wire Wire Line
	2700 3150 2700 3200
Wire Wire Line
	2700 2850 2700 2800
Wire Wire Line
	2700 2800 2750 2800
Wire Wire Line
	3150 3000 3150 3050
Wire Wire Line
	3150 2350 3150 2400
$Comp
L Device:LED D2
U 1 1 5EAEB03A
P 3900 2250
F 0 "D2" V 3939 2133 50  0000 R CNN
F 1 "LED" V 3848 2133 50  0000 R CNN
F 2 "LEDs:LED_0805" H 3900 2250 50  0001 C CNN
F 3 "~" H 3900 2250 50  0001 C CNN
	1    3900 2250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5EAEBA20
P 3900 2600
F 0 "R7" V 3900 2600 50  0000 C CNN
F 1 "1k" V 4000 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3830 2600 50  0001 C CNN
F 3 "~" H 3900 2600 50  0001 C CNN
	1    3900 2600
	1    0    0    -1  
$EndComp
Text GLabel 3600 2600 2    50   Input ~ 0
VBAT
Wire Wire Line
	3550 2600 3600 2600
Text GLabel 3900 2050 1    50   Input ~ 0
VBUS
Wire Wire Line
	3900 2050 3900 2100
Wire Wire Line
	3900 2400 3900 2450
Wire Wire Line
	3900 2750 3900 2800
Wire Wire Line
	3900 2800 3550 2800
$Comp
L Device:LED D1
U 1 1 5EB09EF0
P 1300 3650
F 0 "D1" V 1339 3533 50  0000 R CNN
F 1 "LED" V 1248 3533 50  0000 R CNN
F 2 "LEDs:LED_0805" H 1300 3650 50  0001 C CNN
F 3 "~" H 1300 3650 50  0001 C CNN
	1    1300 3650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 5EB0B042
P 1300 3300
F 0 "R5" V 1300 3300 50  0000 C CNN
F 1 "680" V 1400 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1230 3300 50  0001 C CNN
F 3 "~" H 1300 3300 50  0001 C CNN
	1    1300 3300
	1    0    0    -1  
$EndComp
Text GLabel 1300 3100 1    50   Input ~ 0
3.3V
Text GLabel 1300 3850 3    50   Input ~ 0
GND
Wire Wire Line
	1300 3100 1300 3150
Wire Wire Line
	1300 3450 1300 3500
Wire Wire Line
	1300 3800 1300 3850
$Comp
L Regulator_Linear:AP2112K-3.3 U4
U 1 1 5EB75646
P 7150 2350
F 0 "U4" H 7150 2692 50  0000 C CNN
F 1 "AP2112K-3.3" H 7150 2601 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 7150 2675 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP2112.pdf" H 7150 2450 50  0001 C CNN
	1    7150 2350
	1    0    0    -1  
$EndComp
Text GLabel 6800 2250 0    50   Input ~ 0
VBAT
$Comp
L Device:R R8
U 1 1 5EB78174
P 6350 2300
F 0 "R8" V 6350 2300 50  0000 C CNN
F 1 "20k" V 6450 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6280 2300 50  0001 C CNN
F 3 "~" H 6350 2300 50  0001 C CNN
	1    6350 2300
	1    0    0    -1  
$EndComp
Text GLabel 6350 2500 3    50   Input ~ 0
GND
Text GLabel 7150 2700 3    50   Input ~ 0
GND
Text GLabel 6800 2350 0    50   Input ~ 0
EN
Text GLabel 6350 2100 1    50   Input ~ 0
EN
Text GLabel 7550 2250 2    50   Input ~ 0
3.3V
Wire Wire Line
	7450 2250 7500 2250
Wire Wire Line
	7500 2250 7500 2300
Connection ~ 7500 2250
Wire Wire Line
	7500 2250 7550 2250
Wire Wire Line
	7150 2650 7150 2700
Wire Wire Line
	6800 2250 6850 2250
Wire Wire Line
	6800 2350 6850 2350
$Comp
L Device:C C12
U 1 1 5EBC044D
P 4250 2350
F 0 "C12" H 4135 2304 50  0000 R CNN
F 1 "10u" H 4135 2395 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805" H 4288 2200 50  0001 C CNN
F 3 "~" H 4250 2350 50  0001 C CNN
	1    4250 2350
	-1   0    0    1   
$EndComp
Text GLabel 4250 2150 1    50   Input ~ 0
VBAT
Text GLabel 4250 2550 3    50   Input ~ 0
GND
Wire Wire Line
	4250 2150 4250 2200
Wire Wire Line
	4250 2500 4250 2550
$Comp
L Device:C C13
U 1 1 5EBDEF5B
P 5950 2350
F 0 "C13" V 5698 2350 50  0000 C CNN
F 1 "100n" V 5789 2350 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 5988 2200 50  0001 C CNN
F 3 "~" H 5950 2350 50  0001 C CNN
	1    5950 2350
	-1   0    0    1   
$EndComp
Text GLabel 5950 2150 1    50   Input ~ 0
VBAT
Text GLabel 5950 2550 3    50   Input ~ 0
GND
Wire Wire Line
	5950 2150 5950 2200
Wire Wire Line
	5950 2500 5950 2550
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5EC0217A
P 5050 2000
F 0 "J5" V 5050 1800 50  0000 R CNN
F 1 "BAT" V 5150 2000 50  0000 R CNN
F 2 "Connectors_JST:JST_PH_S2B-PH-SM4-TB_02x2.00mm_Angled" H 5050 2000 50  0001 C CNN
F 3 "~" H 5050 2000 50  0001 C CNN
	1    5050 2000
	0    -1   -1   0   
$EndComp
Text GLabel 5050 2250 3    50   Input ~ 0
GND
Text GLabel 5150 2250 3    50   Input ~ 0
VBAT
Wire Wire Line
	5050 2200 5050 2250
Wire Wire Line
	5150 2200 5150 2250
Wire Wire Line
	6350 2100 6350 2150
Wire Wire Line
	6350 2450 6350 2500
$Comp
L Switch:SW_SPDT SW1
U 1 1 5EC25D78
P 5000 3350
F 0 "SW1" H 5000 3635 50  0000 C CNN
F 1 "SW_SPDT" H 5000 3544 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPDT_PCM12" H 5000 3350 50  0001 C CNN
F 3 "~" H 5000 3350 50  0001 C CNN
	1    5000 3350
	1    0    0    -1  
$EndComp
Text GLabel 5600 3450 2    50   Input ~ 0
VBAT
Text GLabel 4750 3350 0    50   Input ~ 0
EN
Wire Wire Line
	4750 3350 4800 3350
Wire Wire Line
	5550 3450 5600 3450
$Comp
L Switch:SW_Push SW2
U 1 1 5ECD0709
P 6850 3750
F 0 "SW2" H 6850 4035 50  0000 C CNN
F 1 "SW_Push" H 6850 3944 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_B3U-3000P" H 6850 3950 50  0001 C CNN
F 3 "~" H 6850 3950 50  0001 C CNN
	1    6850 3750
	1    0    0    -1  
$EndComp
Text GLabel 7100 3750 2    50   Input ~ 0
GND
Text GLabel 6600 3750 0    50   Input ~ 0
SAVE
Wire Wire Line
	6600 3750 6650 3750
Wire Wire Line
	7050 3750 7100 3750
Text GLabel 6650 3950 0    50   Input ~ 0
SAVE
$Comp
L Device:R R9
U 1 1 5ECE006A
P 6850 3950
F 0 "R9" V 6850 3950 50  0000 C CNN
F 1 "10k" V 6950 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6780 3950 50  0001 C CNN
F 3 "~" H 6850 3950 50  0001 C CNN
	1    6850 3950
	0    1    1    0   
$EndComp
Text GLabel 7050 3950 2    50   Input ~ 0
3.3V
Wire Wire Line
	6650 3950 6700 3950
Wire Wire Line
	7000 3950 7050 3950
Text GLabel 4100 4650 1    50   Input ~ 0
SAVE
Wire Wire Line
	4100 4650 4100 4700
$Comp
L Power_Management:BD49KxxG U5
U 1 1 5EA62CE0
P 7000 1350
F 0 "U5" H 7200 1600 50  0000 R CNN
F 1 "BD49K34G" V 6900 1550 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7000 850 50  0001 C CNN
F 3 "https://www.rohm.de/datasheet/BD4830FVE/bd48xxg-e" H 7000 750 50  0001 C CNN
	1    7000 1350
	1    0    0    -1  
$EndComp
Text GLabel 7000 1700 3    50   Input ~ 0
GND
Text GLabel 7000 1000 1    50   Input ~ 0
VBAT
Text GLabel 7450 1350 2    50   Input ~ 0
EN
Wire Wire Line
	7000 1000 7000 1050
Wire Wire Line
	7000 1650 7000 1700
Wire Wire Line
	7400 1350 7450 1350
$Comp
L Device:R R10
U 1 1 5EACFB48
P 5400 3450
F 0 "R10" V 5400 3450 50  0000 C CNN
F 1 "10k" V 5500 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5330 3450 50  0001 C CNN
F 3 "~" H 5400 3450 50  0001 C CNN
	1    5400 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 3450 5250 3450
$Comp
L Device:R R12
U 1 1 5EB85044
P 2750 1050
F 0 "R12" V 2750 1050 50  0000 C CNN
F 1 "5.1k" V 2850 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2680 1050 50  0001 C CNN
F 3 "~" H 2750 1050 50  0001 C CNN
	1    2750 1050
	0    1    1    0   
$EndComp
Text GLabel 2950 1050 2    50   Input ~ 0
GND
$Comp
L Device:R R11
U 1 1 5EB860EC
P 950 950
F 0 "R11" V 950 950 50  0000 C CNN
F 1 "5.1k" V 1050 950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 880 950 50  0001 C CNN
F 3 "~" H 950 950 50  0001 C CNN
	1    950  950 
	0    1    1    0   
$EndComp
Text GLabel 750  950  0    50   Input ~ 0
GND
Wire Wire Line
	750  950  800  950 
Wire Wire Line
	1100 950  1150 950 
Wire Wire Line
	2550 1050 2600 1050
Wire Wire Line
	2900 1050 2950 1050
$EndSCHEMATC
