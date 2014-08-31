EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:analog_switches
LIBS:motorola
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:philips
LIBS:cypress
LIBS:siliconi
LIBS:video-cache
EELAYER 24 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 8
Title "Video"
Date "18 nov 2010"
Rev "2.0B"
Comp "Kicad EDA"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6900 1150 7200 1150
$Comp
L PWR_FLAG #FLG07
U 1 1 4174D92E
P 3550 1450
F 0 "#FLG07" H 3550 1720 30  0001 C CNN
F 1 "PWR_FLAG" H 3550 1680 30  0000 C CNN
F 2 "" H 3550 1450 60  0001 C CNN
F 3 "" H 3550 1450 60  0001 C CNN
	1    3550 1450
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG08
U 1 1 4174D923
P 6900 1150
F 0 "#FLG08" H 6900 1420 30  0001 C CNN
F 1 "PWR_FLAG" H 6900 1380 30  0000 C CNN
F 2 "" H 6900 1150 60  0001 C CNN
F 3 "" H 6900 1150 60  0001 C CNN
	1    6900 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2350 6950 2350
Wire Wire Line
	5150 2350 5400 2350
$Comp
L GND #PWR09
U 1 1 349FB5CD
P 5700 2550
F 0 "#PWR09" H 5700 2550 40  0001 C CNN
F 1 "GND" H 5700 2480 40  0000 C CNN
F 2 "" H 5700 2550 60  0001 C CNN
F 3 "" H 5700 2550 60  0001 C CNN
	1    5700 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2650 6950 2650
$Comp
L LIGNE_A_RETARD L6
U 1 1 349FB562
P 5700 2350
F 0 "L6" V 5850 2350 70  0000 C CNN
F 1 "470nS" V 5600 1900 70  0000 C CNN
F 2 "footprints:LRTDK" H 5700 2350 60  0001 C CNN
F 3 "" H 5700 2350 60  0001 C CNN
	1    5700 2350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR010
U 1 1 33CF5737
P 4450 3750
F 0 "#PWR010" H 4450 3750 40  0001 C CNN
F 1 "GND" H 4450 3680 40  0000 C CNN
F 2 "" H 4450 3750 60  0001 C CNN
F 3 "" H 4450 3750 60  0001 C CNN
	1    4450 3750
	0    -1   -1   0   
$EndComp
NoConn ~ 2650 2950
Text HLabel 1600 3650 0    60   Input ~ 0
BLEU
Text HLabel 1600 3550 0    60   Input ~ 0
VERT
Text HLabel 1600 3450 0    60   Input ~ 0
ROUGE
Wire Wire Line
	2150 3650 1600 3650
Wire Wire Line
	1650 3550 1600 3550
Wire Wire Line
	2150 3450 1600 3450
Wire Wire Line
	2650 3650 2550 3650
Wire Wire Line
	2650 3550 2050 3550
Wire Wire Line
	2650 3450 2550 3450
Wire Wire Line
	2550 3250 2650 3250
Wire Wire Line
	2000 3250 2050 3250
$Comp
L VCC #PWR011
U 1 1 33A51A5E
P 2000 3250
F 0 "#PWR011" H 2000 3450 40  0001 C CNN
F 1 "VCC" H 2000 3400 40  0000 C CNN
F 2 "" H 2000 3250 60  0001 C CNN
F 3 "" H 2000 3250 60  0001 C CNN
	1    2000 3250
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 33A51A4E
P 2300 3250
F 0 "R4" V 2380 3250 50  0000 C CNN
F 1 "10K" V 2300 3250 50  0000 C CNN
F 2 "lib_smd:SM1206" H 2300 3250 60  0001 C CNN
F 3 "" H 2300 3250 60  0001 C CNN
F 4 "~" V 2300 3170 50  0001 C CNN "Champ7"
	1    2300 3250
	0    1    1    0   
$EndComp
NoConn ~ 2650 3050
NoConn ~ 2650 2850
NoConn ~ 2650 2750
Wire Wire Line
	2150 5100 2150 5050
Text Label 4600 3250 0    60   ~ 0
CVBS
Wire Wire Line
	2550 2300 2550 2550
Wire Wire Line
	6400 3700 6400 3800
Wire Wire Line
	6400 3800 6850 3800
Wire Wire Line
	3550 2200 3550 1450
Wire Wire Line
	3550 1450 4050 1450
Wire Wire Line
	1550 3900 1550 3850
Wire Wire Line
	1550 3850 2650 3850
Text Notes 1150 4850 0    60   ~ 0
NTSC:
Text Notes 1150 4950 0    60   ~ 0
3,579545MH
$Comp
L GND #GND012
U 1 1 22760F6C
P 3550 4400
F 0 "#GND012" H 3550 4500 60  0001 C CNN
F 1 "GND" H 3550 4300 60  0000 C CNN
F 2 "" H 3550 4400 60  0001 C CNN
F 3 "" H 3550 4400 60  0001 C CNN
	1    3550 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #GND013
U 1 1 22760F7B
P 3950 1950
F 0 "#GND013" H 3950 2050 60  0001 C CNN
F 1 "GND" H 3950 1850 60  0000 C CNN
F 2 "" H 3950 1950 60  0001 C CNN
F 3 "" H 3950 1950 60  0001 C CNN
	1    3950 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #GND014
U 1 1 22760F94
P 1550 4300
F 0 "#GND014" H 1550 4300 40  0001 C CNN
F 1 "GND" H 1550 4230 40  0000 C CNN
F 2 "" H 1550 4300 60  0001 C CNN
F 3 "" H 1550 4300 60  0001 C CNN
	1    1550 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #GND015
U 1 1 22760F9E
P 1000 3800
F 0 "#GND015" H 1000 3800 40  0001 C CNN
F 1 "GND" H 1000 3730 40  0000 C CNN
F 2 "" H 1000 3800 60  0001 C CNN
F 3 "" H 1000 3800 60  0001 C CNN
	1    1000 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #GND016
U 1 1 22760FAD
P 2150 5500
F 0 "#GND016" H 2150 5600 60  0001 C CNN
F 1 "GND" H 2150 5400 60  0000 C CNN
F 2 "" H 2150 5500 60  0001 C CNN
F 3 "" H 2150 5500 60  0001 C CNN
	1    2150 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #GND017
U 1 1 22760FC6
P 6350 3250
F 0 "#GND017" H 6350 3350 60  0001 C CNN
F 1 "GND" H 6350 3150 60  0000 C CNN
F 2 "" H 6350 3250 60  0001 C CNN
F 3 "" H 6350 3250 60  0001 C CNN
	1    6350 3250
	0    -1   -1   0   
$EndComp
$Comp
L GND #GND018
U 1 1 22760FD0
P 5250 3450
F 0 "#GND018" H 5250 3550 60  0001 C CNN
F 1 "GND" H 5250 3350 60  0000 C CNN
F 2 "" H 5250 3450 60  0001 C CNN
F 3 "" H 5250 3450 60  0001 C CNN
	1    5250 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #GND019
U 1 1 22760FDA
P 4550 4350
F 0 "#GND019" H 4550 4450 60  0001 C CNN
F 1 "GND" H 4550 4250 60  0000 C CNN
F 2 "" H 4550 4350 60  0001 C CNN
F 3 "" H 4550 4350 60  0001 C CNN
	1    4550 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #GND020
U 1 1 22760FE9
P 3250 1750
F 0 "#GND020" H 3250 1850 60  0001 C CNN
F 1 "GND" H 3250 1650 60  0000 C CNN
F 2 "" H 3250 1750 60  0001 C CNN
F 3 "" H 3250 1750 60  0001 C CNN
	1    3250 1750
	0    -1   -1   0   
$EndComp
$Comp
L GND #GND021
U 1 1 22761002
P 5550 5050
F 0 "#GND021" H 5550 5150 60  0001 C CNN
F 1 "GND" H 5550 4950 60  0000 C CNN
F 2 "" H 5550 5050 60  0001 C CNN
F 3 "" H 5550 5050 60  0001 C CNN
	1    5550 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #GND022
U 1 1 22761007
P 6250 5050
F 0 "#GND022" H 6250 5150 60  0001 C CNN
F 1 "GND" H 6250 4950 60  0000 C CNN
F 2 "" H 6250 5050 60  0001 C CNN
F 3 "" H 6250 5050 60  0001 C CNN
	1    6250 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #GND023
U 1 1 2276104D
P 9800 2050
F 0 "#GND023" H 9800 2150 60  0001 C CNN
F 1 "GND" H 9800 1950 60  0000 C CNN
F 2 "" H 9800 2050 60  0001 C CNN
F 3 "" H 9800 2050 60  0001 C CNN
	1    9800 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #GND024
U 1 1 2276105C
P 7100 1650
F 0 "#GND024" H 7100 1750 60  0001 C CNN
F 1 "GND" H 7100 1550 60  0000 C CNN
F 2 "" H 7100 1650 60  0001 C CNN
F 3 "" H 7100 1650 60  0001 C CNN
	1    7100 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #GND025
U 1 1 2276106B
P 9800 3600
F 0 "#GND025" H 9800 3700 60  0001 C CNN
F 1 "GND" H 9800 3500 60  0000 C CNN
F 2 "" H 9800 3600 60  0001 C CNN
F 3 "" H 9800 3600 60  0001 C CNN
	1    9800 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #GND026
U 1 1 22761084
P 9750 5300
F 0 "#GND026" H 9750 5400 60  0001 C CNN
F 1 "GND" H 9750 5200 60  0000 C CNN
F 2 "" H 9750 5300 60  0001 C CNN
F 3 "" H 9750 5300 60  0001 C CNN
	1    9750 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #GND027
U 1 1 227610A2
P 6850 3900
F 0 "#GND027" H 6850 4000 60  0001 C CNN
F 1 "GND" H 6850 3800 60  0000 C CNN
F 2 "" H 6850 3900 60  0001 C CNN
F 3 "" H 6850 3900 60  0001 C CNN
	1    6850 3900
	1    0    0    -1  
$EndComp
Text Label 4550 3350 0    60   ~ 0
CHROM
Text Label 8400 1150 0    60   ~ 0
CHROM
Text Label 4650 3150 0    60   ~ 0
LUM
Text Label 8500 2700 0    60   ~ 0
LUM
Text Label 8450 4400 0    60   ~ 0
CVBS
$Comp
L VCC #VCC028
U 1 1 4BF036B3
P 4750 1450
F 0 "#VCC028" H 4750 1550 30  0001 C CNN
F 1 "VCC" H 4750 1550 30  0000 C CNN
F 2 "" H 4750 1450 60  0001 C CNN
F 3 "" H 4750 1450 60  0001 C CNN
	1    4750 1450
	1    0    0    -1  
$EndComp
$Comp
L +5F #+029
U 1 1 4BF036B2
P 9800 850
F 0 "#+029" H 9800 1050 40  0001 C CNN
F 1 "+5F" H 9800 1000 40  0000 C CNN
F 2 "" H 9800 850 60  0001 C CNN
F 3 "" H 9800 850 60  0001 C CNN
	1    9800 850 
	1    0    0    -1  
$EndComp
$Comp
L +5F #+030
U 1 1 4BF036B1
P 7100 1050
F 0 "#+030" H 7100 1250 40  0001 C CNN
F 1 "+5F" H 7100 1200 40  0000 C CNN
F 2 "" H 7100 1050 60  0001 C CNN
F 3 "" H 7100 1050 60  0001 C CNN
	1    7100 1050
	1    0    0    -1  
$EndComp
$Comp
L +5F #+031
U 1 1 4BF036B0
P 9800 2400
F 0 "#+031" H 9800 2600 40  0001 C CNN
F 1 "+5F" H 9800 2550 40  0000 C CNN
F 2 "" H 9800 2400 60  0001 C CNN
F 3 "" H 9800 2400 60  0001 C CNN
	1    9800 2400
	1    0    0    -1  
$EndComp
$Comp
L +5F #+032
U 1 1 4BF0369E
P 9750 4100
F 0 "#+032" H 9750 4300 40  0001 C CNN
F 1 "+5F" H 9750 4250 40  0000 C CNN
F 2 "" H 9750 4100 60  0001 C CNN
F 3 "" H 9750 4100 60  0001 C CNN
	1    9750 4100
	1    0    0    -1  
$EndComp
Connection ~ 2550 1750
Connection ~ 7100 1150
Connection ~ 6950 2650
Connection ~ 5250 2950
Connection ~ 5850 2950
Connection ~ 6850 3800
Connection ~ 3950 1450
Connection ~ 5550 4550
Wire Wire Line
	2450 1750 2750 1750
Wire Wire Line
	4650 2350 4550 2350
Wire Wire Line
	4450 2950 6350 2950
Wire Wire Line
	4450 3150 4950 3150
Wire Wire Line
	4450 3250 4950 3250
Wire Wire Line
	8400 1150 8900 1150
Wire Wire Line
	9400 1150 9500 1150
Wire Wire Line
	2650 3150 1000 3150
Wire Wire Line
	4450 3350 4950 3350
Wire Wire Line
	4450 3550 5550 3550
Wire Wire Line
	9800 1450 10000 1450
Wire Wire Line
	4450 3650 5550 3650
Wire Wire Line
	4450 3850 4550 3850
Wire Wire Line
	2650 4050 2150 4050
Wire Wire Line
	4650 1450 4750 1450
Wire Wire Line
	8500 2700 8900 2700
Wire Wire Line
	9400 2700 9500 2700
Wire Wire Line
	9800 3000 10000 3000
Wire Wire Line
	9350 4400 9450 4400
Wire Wire Line
	9750 4700 9950 4700
Wire Wire Line
	1000 3150 1000 3400
Wire Wire Line
	2150 4050 2150 4450
Wire Wire Line
	4550 3850 4550 3950
Wire Wire Line
	5550 4450 5550 4650
Wire Wire Line
	4550 2350 4550 2550
Wire Wire Line
	5550 3650 5550 3850
Wire Wire Line
	6250 4650 6250 4550
Wire Wire Line
	5850 2950 5850 3250
Wire Wire Line
	6850 3900 6850 3550
Wire Wire Line
	6950 2350 6950 2950
Wire Wire Line
	7100 1050 7100 1250
Wire Wire Line
	9800 850  9800 950 
Wire Wire Line
	9800 1350 9800 1550
Wire Wire Line
	9800 2400 9800 2500
Wire Wire Line
	9800 2900 9800 3100
Wire Wire Line
	9750 4100 9750 4200
Wire Wire Line
	9750 4600 9750 4800
Wire Wire Line
	6250 4550 5550 4550
Wire Wire Line
	3950 1450 3950 1550
Wire Wire Line
	2550 2550 2650 2550
Wire Wire Line
	2550 1750 2550 1900
Connection ~ 9750 4700
Wire Wire Line
	6850 3550 6650 3550
$Comp
L POT POT1
U 1 1 2276109D
P 6400 3550
F 0 "POT1" H 6400 3650 60  0000 C CNN
F 1 "100K" H 6400 3450 60  0000 C CNN
F 2 "lib_smd:POT_CMS" H 6400 3550 60  0001 C CNN
F 3 "" H 6400 3550 60  0001 C CNN
	1    6400 3550
	1    0    0    1   
$EndComp
Wire Wire Line
	6050 3550 6150 3550
Wire Wire Line
	8350 4400 8850 4400
Text HLabel 10450 4700 2    60   Output ~ 0
CVBSOUT
Wire Wire Line
	5250 2950 5250 3050
Wire Wire Line
	5850 3250 5950 3250
Wire Wire Line
	6950 2950 6850 2950
Wire Wire Line
	4550 2550 4450 2550
Text HLabel 10500 3000 2    60   Output ~ 0
YOUT
Connection ~ 9800 3000
Text HLabel 10500 1450 2    60   Output ~ 0
COUT
$Comp
L VCC #VCC033
U 1 1 4BF0369D
P 7900 1150
F 0 "#VCC033" H 7900 1250 30  0001 C CNN
F 1 "VCC" H 7900 1250 30  0000 C CNN
F 2 "" H 7900 1150 60  0001 C CNN
F 3 "" H 7900 1150 60  0001 C CNN
	1    7900 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1150 7900 1150
$Comp
L NPN Q1
U 1 1 22761039
P 9700 1150
F 0 "Q1" H 9850 1150 50  0000 C CNN
F 1 "BC848" H 9600 1300 50  0000 C CNN
F 2 "lib_smd:SOT23EBC" H 9700 1150 60  0001 C CNN
F 3 "" H 9700 1150 60  0001 C CNN
	1    9700 1150
	1    0    0    -1  
$EndComp
$Comp
L NPN Q2
U 1 1 22761066
P 9700 2700
F 0 "Q2" H 9850 2700 50  0000 C CNN
F 1 "BC848" H 9600 2850 50  0000 C CNN
F 2 "lib_smd:SOT23EBC" H 9700 2700 60  0001 C CNN
F 3 "" H 9700 2700 60  0001 C CNN
	1    9700 2700
	1    0    0    -1  
$EndComp
$Comp
L NPN Q3
U 1 1 2276107F
P 9650 4400
F 0 "Q3" H 9800 4400 50  0000 C CNN
F 1 "BC848" H 9550 4550 50  0000 C CNN
F 2 "lib_smd:SOT23EBC" H 9650 4400 60  0001 C CNN
F 3 "" H 9650 4400 60  0001 C CNN
	1    9650 4400
	1    0    0    -1  
$EndComp
$Comp
L CP C54
U 1 1 22760F76
P 3950 1750
F 0 "C54" H 4050 1900 50  0000 C CNN
F 1 "4,7uF" H 4050 1600 50  0000 C CNN
F 2 "lib_smd:SM1206" H 3950 1750 60  0001 C CNN
F 3 "" H 3950 1750 60  0001 C CNN
	1    3950 1750
	1    0    0    -1  
$EndComp
$Comp
L R R39
U 1 1 22761048
P 10250 1450
F 0 "R39" V 10330 1450 50  0000 C CNN
F 1 "68" V 10250 1450 50  0000 C CNN
F 2 "lib_smd:SM1206" H 10250 1450 60  0001 C CNN
F 3 "" H 10250 1450 60  0001 C CNN
	1    10250 1450
	0    1    1    0   
$EndComp
$Comp
L R R16
U 1 1 2276103E
P 9150 1150
F 0 "R16" V 9230 1150 50  0000 C CNN
F 1 "220" V 9150 1150 50  0000 C CNN
F 2 "lib_smd:SM1206" H 9150 1150 60  0001 C CNN
F 3 "" H 9150 1150 60  0001 C CNN
	1    9150 1150
	0    1    1    0   
$EndComp
$Comp
L R R17
U 1 1 2276107A
P 9150 2700
F 0 "R17" V 9230 2700 50  0000 C CNN
F 1 "220" V 9150 2700 50  0000 C CNN
F 2 "lib_smd:SM1206" H 9150 2700 60  0001 C CNN
F 3 "" H 9150 2700 60  0001 C CNN
	1    9150 2700
	0    1    1    0   
$EndComp
$Comp
L R R40
U 1 1 22761075
P 10250 3000
F 0 "R40" H 10250 3100 60  0000 C CNN
F 1 "68" H 10250 2900 60  0000 C CNN
F 2 "lib_smd:SM1206" H 10250 3000 60  0001 C CNN
F 3 "" H 10250 3000 60  0001 C CNN
	1    10250 3000
	0    -1   -1   0   
$EndComp
$Comp
L R R18
U 1 1 22761093
P 9100 4400
F 0 "R18" V 9180 4400 50  0000 C CNN
F 1 "220" V 9100 4400 50  0000 C CNN
F 2 "lib_smd:SM1206" H 9100 4400 60  0001 C CNN
F 3 "" H 9100 4400 60  0001 C CNN
	1    9100 4400
	0    1    1    0   
$EndComp
$Comp
L R R41
U 1 1 2276108E
P 10200 4700
F 0 "R41" V 10280 4700 50  0000 C CNN
F 1 "68" V 10200 4700 50  0000 C CNN
F 2 "lib_smd:SM1206" H 10200 4700 60  0001 C CNN
F 3 "" H 10200 4700 60  0001 C CNN
	1    10200 4700
	0    1    1    0   
$EndComp
Connection ~ 9800 1450
$Comp
L R R30
U 1 1 22760FE4
P 2200 1750
F 0 "R30" V 2280 1750 50  0000 C CNN
F 1 "3,3K" V 2200 1750 50  0000 C CNN
F 2 "lib_smd:SM1206" H 2200 1750 60  0001 C CNN
F 3 "" H 2200 1750 60  0001 C CNN
	1    2200 1750
	0    1    1    0   
$EndComp
$Comp
L R R31
U 1 1 22760FDF
P 3000 1750
F 0 "R31" V 3080 1750 50  0000 C CNN
F 1 "470" V 3000 1750 50  0000 C CNN
F 2 "lib_smd:SM1206" H 3000 1750 60  0001 C CNN
F 3 "" H 3000 1750 60  0001 C CNN
	1    3000 1750
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 22760F80
P 4900 2350
F 0 "R10" V 4980 2350 50  0000 C CNN
F 1 "1K" V 4900 2350 50  0000 C CNN
F 2 "lib_smd:SM1206" H 4900 2350 60  0001 C CNN
F 3 "" H 4900 2350 60  0001 C CNN
	1    4900 2350
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 22760FBC
P 6600 2950
F 0 "R11" V 6680 2950 50  0000 C CNN
F 1 "1K" V 6600 2950 50  0000 C CNN
F 2 "lib_smd:SM1206" H 6600 2950 60  0001 C CNN
F 3 "" H 6600 2950 60  0001 C CNN
	1    6600 2950
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 22761098
P 5800 3550
F 0 "R9" V 5880 3550 50  0000 C CNN
F 1 "150K" V 5800 3550 50  0000 C CNN
F 2 "lib_smd:SM1206" H 5800 3550 60  0001 C CNN
F 3 "" H 5800 3550 60  0001 C CNN
	1    5800 3550
	0    1    1    0   
$EndComp
$Comp
L C C61
U 1 1 22760F8A
P 2550 2100
F 0 "C61" V 2600 2250 50  0000 C CNN
F 1 "47nF" V 2600 1950 50  0000 C CNN
F 2 "lib_smd:SM1206" H 2550 2100 60  0001 C CNN
F 3 "" H 2550 2100 60  0001 C CNN
	1    2550 2100
	1    0    0    -1  
$EndComp
$Comp
L C C60
U 1 1 22760F67
P 2350 3450
F 0 "C60" V 2400 3600 50  0000 C CNN
F 1 "47nF" V 2400 3300 50  0000 C CNN
F 2 "lib_smd:SM1206" H 2350 3450 60  0001 C CNN
F 3 "" H 2350 3450 60  0001 C CNN
	1    2350 3450
	0    1    1    0   
$EndComp
$Comp
L C C43
U 1 1 22760F8F
P 1550 4100
F 0 "C43" V 1600 4250 50  0000 C CNN
F 1 "220nF" V 1600 3950 50  0000 C CNN
F 2 "lib_smd:SM1206" H 1550 4100 60  0001 C CNN
F 3 "" H 1550 4100 60  0001 C CNN
	1    1550 4100
	1    0    0    -1  
$EndComp
$Comp
L CTRIM CV1
U 1 1 22760FA8
P 2150 5300
F 0 "CV1" H 2280 5220 50  0000 C CNN
F 1 "5/30pF" H 2300 5140 50  0000 C CNN
F 2 "discret:CV3-30PF" H 2150 5300 60  0001 C CNN
F 3 "" H 2150 5300 60  0001 C CNN
	1    2150 5300
	1    0    0    -1  
$EndComp
$Comp
L C C45
U 1 1 22760FD5
P 4550 4150
F 0 "C45" V 4600 4300 50  0000 C CNN
F 1 "220nF" V 4600 4000 50  0000 C CNN
F 2 "lib_smd:SM1206" H 4550 4150 60  0001 C CNN
F 3 "" H 4550 4150 60  0001 C CNN
	1    4550 4150
	1    0    0    -1  
$EndComp
$Comp
L C C48
U 1 1 22760FCB
P 5250 3250
F 0 "C48" V 5300 3400 50  0000 C CNN
F 1 "22nF" V 5300 3100 50  0000 C CNN
F 2 "lib_smd:SM1206" H 5250 3250 60  0001 C CNN
F 3 "" H 5250 3250 60  0001 C CNN
	1    5250 3250
	-1   0    0    1   
$EndComp
$Comp
L CP C64
U 1 1 22760FC1
P 6150 3250
F 0 "C64" H 6250 3400 50  0000 C CNN
F 1 "6,8uF" H 6250 3100 50  0000 C CNN
F 2 "lib_smd:SM1210L" H 6150 3250 60  0001 C CNN
F 3 "" H 6150 3250 60  0001 C CNN
	1    6150 3250
	0    -1   -1   0   
$EndComp
$Comp
L C C44
U 1 1 22760F99
P 1000 3600
F 0 "C44" V 1050 3750 50  0000 C CNN
F 1 "220nF" V 1050 3450 50  0000 C CNN
F 2 "lib_smd:SM1206" H 1000 3600 60  0001 C CNN
F 3 "" H 1000 3600 60  0001 C CNN
	1    1000 3600
	1    0    0    -1  
$EndComp
Text HLabel 1950 1750 0    60   Input ~ 0
CSYNC-OUT
$Comp
L C C53
U 1 1 22760FF8
P 5550 4850
F 0 "C53" H 5600 4950 50  0000 L CNN
F 1 "330pF" H 5600 4750 50  0000 L CNN
F 2 "lib_smd:SM1206" H 5550 4850 60  0001 C CNN
F 3 "" H 5550 4850 60  0001 C CNN
	1    5550 4850
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L1
U 1 1 22760FF3
P 5550 4150
F 0 "L1" V 5500 4150 40  0000 C CNN
F 1 "2,2uH" V 5650 4150 40  0000 C CNN
F 2 "lib_smd:SM1812" H 5550 4150 60  0001 C CNN
F 3 "" H 5550 4150 60  0001 C CNN
	1    5550 4150
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L3
U 1 1 22761052
P 7500 1150
F 0 "L3" V 7450 1150 40  0000 C CNN
F 1 "22uH" V 7600 1150 40  0000 C CNN
F 2 "lib_smd:SM1812" H 7500 1150 60  0001 C CNN
F 3 "" H 7500 1150 60  0001 C CNN
	1    7500 1150
	0    1    1    0   
$EndComp
$Comp
L INDUCTOR L2
U 1 1 22760F71
P 4350 1450
F 0 "L2" V 4300 1450 40  0000 C CNN
F 1 "22uH" V 4450 1450 40  0000 C CNN
F 2 "lib_smd:SM1812" H 4350 1450 60  0001 C CNN
F 3 "" H 4350 1450 60  0001 C CNN
	1    4350 1450
	0    1    1    0   
$EndComp
$Comp
L TDA8501 U20
U 1 1 22760F4E
P 3550 3350
F 0 "U20" H 3550 3450 60  0000 C CNN
F 1 "TDA8501" H 3550 3250 60  0000 C CNN
F 2 "lib_smd:SO24E" H 3550 3350 60  0001 C CNN
F 3 "" H 3550 3350 60  0001 C CNN
	1    3550 3350
	1    0    0    -1  
$EndComp
$Comp
L C C46
U 1 1 22760FFD
P 6250 4850
F 0 "C46" H 6300 4950 50  0000 L CNN
F 1 "220pF" H 6300 4750 50  0000 L CNN
F 2 "lib_smd:SM1206" H 6250 4850 60  0001 C CNN
F 3 "" H 6250 4850 60  0001 C CNN
	1    6250 4850
	1    0    0    -1  
$EndComp
$Comp
L R R34
U 1 1 22761089
P 9750 5050
F 0 "R34" V 9830 5050 50  0000 C CNN
F 1 "470" V 9750 5050 50  0000 C CNN
F 2 "lib_smd:SM1206" H 9750 5050 60  0001 C CNN
F 3 "" H 9750 5050 60  0001 C CNN
	1    9750 5050
	1    0    0    -1  
$EndComp
$Comp
L R R33
U 1 1 22761070
P 9800 3350
F 0 "R33" V 9880 3350 50  0000 C CNN
F 1 "470" V 9800 3350 50  0000 C CNN
F 2 "lib_smd:SM1206" H 9800 3350 60  0001 C CNN
F 3 "" H 9800 3350 60  0001 C CNN
	1    9800 3350
	1    0    0    -1  
$EndComp
$Comp
L R R32
U 1 1 22761043
P 9800 1800
F 0 "R32" V 9880 1800 50  0000 C CNN
F 1 "470" V 9800 1800 50  0000 C CNN
F 2 "lib_smd:SM1206" H 9800 1800 60  0001 C CNN
F 3 "" H 9800 1800 60  0001 C CNN
	1    9800 1800
	1    0    0    -1  
$EndComp
$Comp
L CP C55
U 1 1 22761057
P 7100 1450
F 0 "C55" H 7200 1600 50  0000 C CNN
F 1 "4,7uF" H 7200 1300 50  0000 C CNN
F 2 "lib_smd:SM1210L" H 7100 1450 60  0001 C CNN
F 3 "" H 7100 1450 60  0001 C CNN
	1    7100 1450
	1    0    0    -1  
$EndComp
$Comp
L C C59
U 1 1 22760F62
P 1850 3550
F 0 "C59" V 1900 3700 50  0000 C CNN
F 1 "47nF" V 1900 3400 50  0000 C CNN
F 2 "lib_smd:SM1206" H 1850 3550 60  0001 C CNN
F 3 "" H 1850 3550 60  0001 C CNN
	1    1850 3550
	0    1    1    0   
$EndComp
$Comp
L C C58
U 1 1 22760F53
P 2350 3650
F 0 "C58" V 2400 3800 50  0000 C CNN
F 1 "47nF" V 2400 3500 50  0000 C CNN
F 2 "lib_smd:SM1206" H 2350 3650 60  0001 C CNN
F 3 "" H 2350 3650 60  0001 C CNN
	1    2350 3650
	0    1    1    0   
$EndComp
$Comp
L CRYSTAL X3
U 1 1 22760FA3
P 2150 4750
F 0 "X3" H 2150 4850 60  0000 C CNN
F 1 "4,433618MH" H 2150 4650 60  0000 C CNN
F 2 "discret:HC-18UH" H 2150 4750 60  0001 C CNN
F 3 "" H 2150 4750 60  0001 C CNN
	1    2150 4750
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
