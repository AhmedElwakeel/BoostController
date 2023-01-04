subtitle "Microchip MPLAB XC8 C Compiler v2.35 (Free license) build 20211206165544 Og1 "

pagewidth 120

	opt flic

	processor	16LF877A
include "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\16lf877a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 54 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTA equ 05h ;# 
# 218 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTB equ 06h ;# 
# 280 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTC equ 07h ;# 
# 342 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTD equ 08h ;# 
# 404 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTE equ 09h ;# 
# 436 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
T1CON equ 010h ;# 
# 732 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
T2CON equ 012h ;# 
# 810 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTA equ 05h ;# 
# 218 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTB equ 06h ;# 
# 280 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTC equ 07h ;# 
# 342 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTD equ 08h ;# 
# 404 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTE equ 09h ;# 
# 436 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
T1CON equ 010h ;# 
# 732 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
T2CON equ 012h ;# 
# 810 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTA equ 05h ;# 
# 218 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTB equ 06h ;# 
# 280 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTC equ 07h ;# 
# 342 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTD equ 08h ;# 
# 404 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTE equ 09h ;# 
# 436 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
T1CON equ 010h ;# 
# 732 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
T2CON equ 012h ;# 
# 810 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTA equ 05h ;# 
# 218 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTB equ 06h ;# 
# 280 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTC equ 07h ;# 
# 342 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTD equ 08h ;# 
# 404 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTE equ 09h ;# 
# 436 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
T1CON equ 010h ;# 
# 732 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
T2CON equ 012h ;# 
# 810 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTA equ 05h ;# 
# 218 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTB equ 06h ;# 
# 280 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTC equ 07h ;# 
# 342 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTD equ 08h ;# 
# 404 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTE equ 09h ;# 
# 436 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
T1CON equ 010h ;# 
# 732 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
T2CON equ 012h ;# 
# 810 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTA equ 05h ;# 
# 218 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTB equ 06h ;# 
# 280 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTC equ 07h ;# 
# 342 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTD equ 08h ;# 
# 404 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PORTE equ 09h ;# 
# 436 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
INTCON equ 0Bh ;# 
# 534 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
T1CON equ 010h ;# 
# 732 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TMR2 equ 011h ;# 
# 739 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
T2CON equ 012h ;# 
# 810 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPBUF equ 013h ;# 
# 817 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPCON equ 014h ;# 
# 887 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR1 equ 015h ;# 
# 894 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR1L equ 015h ;# 
# 901 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR1H equ 016h ;# 
# 908 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCP1CON equ 017h ;# 
# 966 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
RCSTA equ 018h ;# 
# 1061 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TXREG equ 019h ;# 
# 1068 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISA equ 085h ;# 
# 1377 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISB equ 086h ;# 
# 1439 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISC equ 087h ;# 
# 1501 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISD equ 088h ;# 
# 1563 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TRISE equ 089h ;# 
# 1620 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PCON equ 08Eh ;# 
# 1756 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
PR2 equ 092h ;# 
# 1825 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPADD equ 093h ;# 
# 1832 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
TXSTA equ 098h ;# 
# 2082 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
SPBRG equ 099h ;# 
# 2089 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16lf877a.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNCALL	_main,_ADC_GetAdcValue
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_LCD_Clear
	FNCALL	_main,_LCD_GoToXY
	FNCALL	_main,_LCD_Init
	FNCALL	_main,_LCD_Print
	FNCALL	_main,_PWM_Init
	FNCALL	_main,_PWM_SetDutyCycle
	FNCALL	_main,_PWM_Start
	FNCALL	_main,_UART_Init
	FNCALL	_main,_UART_SendTxt
	FNCALL	_main,___fladd
	FNCALL	_main,___fldiv
	FNCALL	_main,___flge
	FNCALL	_main,___flmul
	FNCALL	_main,___xxtofl
	FNCALL	_main,_memset
	FNCALL	_main,_sprintf
	FNCALL	_sprintf,___awdiv
	FNCALL	_sprintf,___fladd
	FNCALL	_sprintf,___fleq
	FNCALL	_sprintf,___flge
	FNCALL	_sprintf,___flmul
	FNCALL	_sprintf,___flneg
	FNCALL	_sprintf,___flsub
	FNCALL	_sprintf,___fltol
	FNCALL	_sprintf,___lldiv
	FNCALL	_sprintf,___llmod
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,___xxtofl
	FNCALL	_sprintf,__div_to_l_
	FNCALL	_sprintf,__tdiv_to_l_
	FNCALL	_sprintf,_fround
	FNCALL	_sprintf,_isdigit
	FNCALL	_sprintf,_scale
	FNCALL	_scale,___awdiv
	FNCALL	_scale,___awmod
	FNCALL	_scale,___flmul
	FNCALL	_fround,___flmul
	FNCALL	_fround,___lwdiv
	FNCALL	_fround,___lwmod
	FNCALL	___flmul,__Umul8_16
	FNCALL	___flsub,___fladd
	FNCALL	_UART_SendTxt,_UART_TxChar
	FNCALL	_UART_Init,___lldiv
	FNCALL	_LCD_Print,_Lcd_DataWrite
	FNCALL	_Lcd_DataWrite,_LCD_Enable
	FNCALL	_LCD_Init,_Lcd_CmdWrite
	FNCALL	_LCD_GoToXY,_Lcd_CmdWrite
	FNCALL	_LCD_Clear,_Lcd_CmdWrite
	FNCALL	_Lcd_CmdWrite,_LCD_Enable
	FNROOT	_main
	global	LCD_Init@F1004
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"LCD.c"
	line	14

;initializer for LCD_Init@F1004
	retlw	028h
	retlw	033h
	retlw	032h
	retlw	06h
	retlw	0Fh
	retlw	080h
	retlw	0
	global	__powers_
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\powers.c"
	line	7
__powers_:
	retlw	0x0
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x0
	retlw	0x0
	retlw	0x20
	retlw	0x41

	retlw	0x0
	retlw	0x0
	retlw	0xc8
	retlw	0x42

	retlw	0x0
	retlw	0x0
	retlw	0x7a
	retlw	0x44

	retlw	0x0
	retlw	0x40
	retlw	0x1c
	retlw	0x46

	retlw	0x0
	retlw	0x50
	retlw	0xc3
	retlw	0x47

	retlw	0x0
	retlw	0x24
	retlw	0x74
	retlw	0x49

	retlw	0x80
	retlw	0x96
	retlw	0x18
	retlw	0x4b

	retlw	0x20
	retlw	0xbc
	retlw	0xbe
	retlw	0x4c

	retlw	0x28
	retlw	0x6b
	retlw	0x6e
	retlw	0x4e

	retlw	0xf9
	retlw	0x2
	retlw	0x15
	retlw	0x50

	retlw	0xec
	retlw	0x78
	retlw	0xad
	retlw	0x60

	retlw	0xca
	retlw	0xf2
	retlw	0x49
	retlw	0x71

	global __end_of__powers_
__end_of__powers_:
	global	__npowers_
psect	strings
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\powers.c"
	line	39
__npowers_:
	retlw	0x0
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0xcd
	retlw	0xcc
	retlw	0xcc
	retlw	0x3d

	retlw	0xa
	retlw	0xd7
	retlw	0x23
	retlw	0x3c

	retlw	0x6f
	retlw	0x12
	retlw	0x83
	retlw	0x3a

	retlw	0x17
	retlw	0xb7
	retlw	0xd1
	retlw	0x38

	retlw	0xac
	retlw	0xc5
	retlw	0x27
	retlw	0x37

	retlw	0xbd
	retlw	0x37
	retlw	0x86
	retlw	0x35

	retlw	0x95
	retlw	0xbf
	retlw	0xd6
	retlw	0x33

	retlw	0x77
	retlw	0xcc
	retlw	0x2b
	retlw	0x32

	retlw	0x5f
	retlw	0x70
	retlw	0x89
	retlw	0x30

	retlw	0xff
	retlw	0xe6
	retlw	0xdb
	retlw	0x2e

	retlw	0x8
	retlw	0xe5
	retlw	0x3c
	retlw	0x1e

	retlw	0x60
	retlw	0x42
	retlw	0xa2
	retlw	0xd

	global __end_of__npowers_
__end_of__npowers_:
	global	_dpowers
psect	strings
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c"
	line	358
_dpowers:
	retlw	01h
	retlw	0
	retlw	0
	retlw	0

	retlw	0Ah
	retlw	0
	retlw	0
	retlw	0

	retlw	064h
	retlw	0
	retlw	0
	retlw	0

	retlw	0E8h
	retlw	03h
	retlw	0
	retlw	0

	retlw	010h
	retlw	027h
	retlw	0
	retlw	0

	retlw	0A0h
	retlw	086h
	retlw	01h
	retlw	0

	retlw	040h
	retlw	042h
	retlw	0Fh
	retlw	0

	retlw	080h
	retlw	096h
	retlw	098h
	retlw	0

	retlw	0
	retlw	0E1h
	retlw	0F5h
	retlw	05h

	retlw	0
	retlw	0CAh
	retlw	09Ah
	retlw	03Bh

	global __end_of_dpowers
__end_of_dpowers:
	global	__powers_
	global	__npowers_
	global	_dpowers
	global	_CCPR2L
_CCPR2L	set	0x1B
	global	_CCP2CON
_CCP2CON	set	0x1D
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_ADRESH
_ADRESH	set	0x1E
	global	_ADCON0
_ADCON0	set	0x1F
	global	_PORTD
_PORTD	set	0x8
	global	_RCREG
_RCREG	set	0x1A
	global	_TXREG
_TXREG	set	0x19
	global	_RCSTA
_RCSTA	set	0x18
	global	_TMR2ON
_TMR2ON	set	0x92
	global	_GO_DONE
_GO_DONE	set	0xFA
	global	_GO
_GO	set	0xFA
	global	_ADON
_ADON	set	0xF8
	global	_RCIF
_RCIF	set	0x65
	global	_TXIF
_TXIF	set	0x64
	global	_PR2
_PR2	set	0x92
	global	_ADRESL
_ADRESL	set	0x9E
	global	_TRISA
_TRISA	set	0x85
	global	_ADCON1
_ADCON1	set	0x9F
	global	_TRISD
_TRISD	set	0x88
	global	_SPBRG
_SPBRG	set	0x99
	global	_TXSTA
_TXSTA	set	0x98
	global	_TRISC
_TRISC	set	0x87
	
STR_3:	
	retlw	67	;'C'
	retlw	72	;'H'
	retlw	48	;'0'
	retlw	32	;' '
	retlw	61	;'='
	retlw	32	;' '
	retlw	37	;'%'
	retlw	46	;'.'
	retlw	51	;'3'
	retlw	102	;'f'
	retlw	32	;' '
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	72	;'H'
	retlw	49	;'1'
	retlw	32	;' '
	retlw	61	;'='
	retlw	32	;' '
	retlw	37	;'%'
	retlw	46	;'.'
	retlw	51	;'3'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_1:	
	retlw	83	;'S'
	retlw	121	;'y'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	116	;'t'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_2:	
	retlw	83	;'S'
	retlw	121	;'y'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	116	;'t'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
STR_4	equ	STR_1+16
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	file	"dist/default/production\TEST.X.production.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"LCD.c"
	line	14
LCD_Init@F1004:
       ds      7

	file	"dist/default/production\TEST.X.production.s"
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+7)
	movwf btemp-1
	movlw high(__pidataBANK1)
	movwf btemp
	movlw low(__pidataBANK1)
	movwf btemp+1
	movlw low(__pdataBANK1)
	movwf fsr
	fcall init_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1,noexec
global __pcstackBANK3
__pcstackBANK3:
	global	main@Str
main@Str:	; 50 bytes @ 0x0
	ds	50
	global	main@Count
main@Count:	; 2 bytes @ 0x32
	ds	2
	global	main@SetPoint
main@SetPoint:	; 4 bytes @ 0x34
	ds	4
	global	main@FeedBack
main@FeedBack:	; 4 bytes @ 0x38
	ds	4
	global	main@DutyCycle
main@DutyCycle:	; 1 bytes @ 0x3C
	ds	1
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
??___flge:	; 1 bytes @ 0x0
	ds	4
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x4
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x4
	ds	9
??_sprintf:	; 1 bytes @ 0xD
	ds	5
	global	_sprintf$874
_sprintf$874:	; 4 bytes @ 0x12
	ds	4
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x16
	ds	1
	global	sprintf@flag
sprintf@flag:	; 2 bytes @ 0x17
	ds	2
	global	sprintf@val
sprintf@val:	; 4 bytes @ 0x19
	ds	4
	global	sprintf@eexp
sprintf@eexp:	; 2 bytes @ 0x1D
	ds	2
	global	sprintf@tmpval
sprintf@tmpval:	; 4 bytes @ 0x1F
	ds	4
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x23
	ds	1
	global	sprintf@prec
sprintf@prec:	; 2 bytes @ 0x24
	ds	2
	global	sprintf@fval
sprintf@fval:	; 4 bytes @ 0x26
	ds	4
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x2A
	ds	1
??_main:	; 1 bytes @ 0x2B
	ds	4
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_isdigit:	; 1 bit 
?___fleq:	; 1 bit 
?_ADC_Init:	; 1 bytes @ 0x0
??_ADC_Init:	; 1 bytes @ 0x0
?_LCD_Init:	; 1 bytes @ 0x0
?_PWM_Init:	; 1 bytes @ 0x0
??_PWM_Init:	; 1 bytes @ 0x0
?_PWM_SetDutyCycle:	; 1 bytes @ 0x0
?_PWM_Start:	; 1 bytes @ 0x0
??_PWM_Start:	; 1 bytes @ 0x0
?_memset:	; 1 bytes @ 0x0
?_LCD_Clear:	; 1 bytes @ 0x0
?_Lcd_CmdWrite:	; 1 bytes @ 0x0
??_isdigit:	; 1 bytes @ 0x0
?_UART_TxChar:	; 1 bytes @ 0x0
??_UART_TxChar:	; 1 bytes @ 0x0
?_LCD_Enable:	; 1 bytes @ 0x0
??_LCD_Enable:	; 1 bytes @ 0x0
?_Lcd_DataWrite:	; 1 bytes @ 0x0
	global	?_ADC_GetAdcValue
?_ADC_GetAdcValue:	; 2 bytes @ 0x0
	global	?__Umul8_16
?__Umul8_16:	; 2 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?__tdiv_to_l_
?__tdiv_to_l_:	; 4 bytes @ 0x0
	global	?__div_to_l_
?__div_to_l_:	; 4 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	?___flneg
?___flneg:	; 4 bytes @ 0x0
	global	?___llmod
?___llmod:	; 4 bytes @ 0x0
	global	UART_TxChar@ch
UART_TxChar@ch:	; 1 bytes @ 0x0
	global	PWM_SetDutyCycle@dutyCycle
PWM_SetDutyCycle@dutyCycle:	; 1 bytes @ 0x0
PWM_Start@channel:	; 1 bytes @ 0x0
	global	__Umul8_16@multiplicand
__Umul8_16@multiplicand:	; 1 bytes @ 0x0
	global	_isdigit$684
_isdigit$684:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	global	memset@c
memset@c:	; 2 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	global	__div_to_l_@f1
__div_to_l_@f1:	; 4 bytes @ 0x0
	global	___fleq@ff1
___fleq@ff1:	; 4 bytes @ 0x0
	global	___flneg@f1
___flneg@f1:	; 4 bytes @ 0x0
	global	__tdiv_to_l_@f1
__tdiv_to_l_@f1:	; 4 bytes @ 0x0
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x0
	ds	1
??_PWM_SetDutyCycle:	; 1 bytes @ 0x1
?_UART_SendTxt:	; 1 bytes @ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	global	UART_SendTxt@Str
UART_SendTxt@Str:	; 2 bytes @ 0x1
	ds	1
??_ADC_GetAdcValue:	; 1 bytes @ 0x2
??_Lcd_CmdWrite:	; 1 bytes @ 0x2
??__Umul8_16:	; 1 bytes @ 0x2
??_Lcd_DataWrite:	; 1 bytes @ 0x2
	global	PWM_Init@channel
PWM_Init@channel:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	global	memset@n
memset@n:	; 2 bytes @ 0x2
	ds	1
??_UART_SendTxt:	; 1 bytes @ 0x3
	global	Lcd_CmdWrite@cmd
Lcd_CmdWrite@cmd:	; 1 bytes @ 0x3
	global	Lcd_DataWrite@dat
Lcd_DataWrite@dat:	; 1 bytes @ 0x3
	global	ADC_GetAdcValue@var_adcChannel_u8
ADC_GetAdcValue@var_adcChannel_u8:	; 1 bytes @ 0x3
	global	PWM_SetDutyCycle@channel
PWM_SetDutyCycle@channel:	; 1 bytes @ 0x3
	ds	1
??_LCD_Init:	; 1 bytes @ 0x4
?_LCD_GoToXY:	; 1 bytes @ 0x4
?_LCD_Print:	; 1 bytes @ 0x4
??_memset:	; 1 bytes @ 0x4
??_LCD_Clear:	; 1 bytes @ 0x4
??___wmul:	; 1 bytes @ 0x4
??___awmod:	; 1 bytes @ 0x4
??___flneg:	; 1 bytes @ 0x4
??___lwmod:	; 1 bytes @ 0x4
	global	?___xxtofl
?___xxtofl:	; 4 bytes @ 0x4
	global	LCD_GoToXY@Y
LCD_GoToXY@Y:	; 1 bytes @ 0x4
	global	LCD_Print@Str
LCD_Print@Str:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	__Umul8_16@product
__Umul8_16@product:	; 2 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	global	__div_to_l_@f2
__div_to_l_@f2:	; 4 bytes @ 0x4
	global	___fleq@ff2
___fleq@ff2:	; 4 bytes @ 0x4
	global	__tdiv_to_l_@f2
__tdiv_to_l_@f2:	; 4 bytes @ 0x4
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x4
	global	___xxtofl@val
___xxtofl@val:	; 4 bytes @ 0x4
	ds	1
??_LCD_GoToXY:	; 1 bytes @ 0x5
	global	LCD_GoToXY@X
LCD_GoToXY@X:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	memset@p1
memset@p1:	; 1 bytes @ 0x5
	ds	1
??_LCD_Print:	; 1 bytes @ 0x6
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	memset@p
memset@p:	; 1 bytes @ 0x6
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x6
	global	__Umul8_16@word_mpld
__Umul8_16@word_mpld:	; 2 bytes @ 0x6
	ds	1
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x7
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x7
	ds	1
??__tdiv_to_l_:	; 1 bytes @ 0x8
??__div_to_l_:	; 1 bytes @ 0x8
??___lldiv:	; 1 bytes @ 0x8
??___fleq:	; 1 bytes @ 0x8
??___llmod:	; 1 bytes @ 0x8
??___xxtofl:	; 1 bytes @ 0x8
	global	__Umul8_16@multiplier
__Umul8_16@multiplier:	; 1 bytes @ 0x8
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x8
	ds	1
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x9
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x9
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x9
	ds	1
??___lwdiv:	; 1 bytes @ 0xA
	ds	1
??___awdiv:	; 1 bytes @ 0xB
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xB
	ds	2
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xD
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xD
	ds	1
??___flsub:	; 1 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_UART_Init:	; 1 bytes @ 0x0
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	global	___xxtofl@sign
___xxtofl@sign:	; 1 bytes @ 0x0
	global	UART_Init@baudRate
UART_Init@baudRate:	; 2 bytes @ 0x0
	global	__div_to_l_@quot
__div_to_l_@quot:	; 4 bytes @ 0x0
	global	__tdiv_to_l_@quot
__tdiv_to_l_@quot:	; 4 bytes @ 0x0
	global	LCD_Init@Commands
LCD_Init@Commands:	; 7 bytes @ 0x0
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	global	___xxtofl@exp
___xxtofl@exp:	; 1 bytes @ 0x1
	ds	1
??_UART_Init:	; 1 bytes @ 0x2
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	global	___xxtofl@arg
___xxtofl@arg:	; 4 bytes @ 0x2
	ds	2
	global	__div_to_l_@cntr
__div_to_l_@cntr:	; 1 bytes @ 0x4
	global	__tdiv_to_l_@cntr
__tdiv_to_l_@cntr:	; 1 bytes @ 0x4
	ds	1
	global	__div_to_l_@exp1
__div_to_l_@exp1:	; 1 bytes @ 0x5
	global	__tdiv_to_l_@exp1
__tdiv_to_l_@exp1:	; 1 bytes @ 0x5
	ds	1
	global	?___flmul
?___flmul:	; 4 bytes @ 0x6
	global	___flmul@b
___flmul@b:	; 4 bytes @ 0x6
	ds	1
	global	LCD_Init@i
LCD_Init@i:	; 2 bytes @ 0x7
	ds	3
	global	___flmul@a
___flmul@a:	; 4 bytes @ 0xA
	ds	4
??___flmul:	; 1 bytes @ 0xE
	ds	5
	global	___flmul@sign
___flmul@sign:	; 1 bytes @ 0x13
	ds	1
	global	___flmul@grs
___flmul@grs:	; 4 bytes @ 0x14
	ds	4
	global	___flmul@aexp
___flmul@aexp:	; 1 bytes @ 0x18
	ds	1
	global	___flmul@bexp
___flmul@bexp:	; 1 bytes @ 0x19
	ds	1
	global	___flmul@prod
___flmul@prod:	; 4 bytes @ 0x1A
	ds	4
	global	___flmul@temp
___flmul@temp:	; 2 bytes @ 0x1E
	ds	2
	global	?_fround
?_fround:	; 4 bytes @ 0x20
	global	?_scale
?_scale:	; 4 bytes @ 0x20
	global	?___fldiv
?___fldiv:	; 4 bytes @ 0x20
	global	___fldiv@a
___fldiv@a:	; 4 bytes @ 0x20
	ds	4
??_fround:	; 1 bytes @ 0x24
??_scale:	; 1 bytes @ 0x24
	global	___fldiv@b
___fldiv@b:	; 4 bytes @ 0x24
	ds	4
??___fldiv:	; 1 bytes @ 0x28
	ds	3
	global	_fround$872
_fround$872:	; 4 bytes @ 0x2B
	ds	2
	global	___fldiv@rem
___fldiv@rem:	; 4 bytes @ 0x2D
	ds	1
	global	_scale$873
_scale$873:	; 4 bytes @ 0x2E
	ds	1
	global	_fround$871
_fround$871:	; 4 bytes @ 0x2F
	ds	2
	global	___fldiv@sign
___fldiv@sign:	; 1 bytes @ 0x31
	ds	1
	global	scale@scl
scale@scl:	; 1 bytes @ 0x32
	global	___fldiv@new_exp
___fldiv@new_exp:	; 2 bytes @ 0x32
	ds	1
	global	?___fltol
?___fltol:	; 4 bytes @ 0x33
	global	fround@prec
fround@prec:	; 1 bytes @ 0x33
	global	___fltol@f1
___fltol@f1:	; 4 bytes @ 0x33
	ds	1
	global	?___fladd
?___fladd:	; 4 bytes @ 0x34
	global	___fladd@b
___fladd@b:	; 4 bytes @ 0x34
	global	___fldiv@grs
___fldiv@grs:	; 4 bytes @ 0x34
	ds	3
??___fltol:	; 1 bytes @ 0x37
	ds	1
	global	___fldiv@bexp
___fldiv@bexp:	; 1 bytes @ 0x38
	global	___fladd@a
___fladd@a:	; 4 bytes @ 0x38
	ds	1
	global	___fldiv@aexp
___fldiv@aexp:	; 1 bytes @ 0x39
	ds	3
??___fladd:	; 1 bytes @ 0x3C
	global	___fltol@sign1
___fltol@sign1:	; 1 bytes @ 0x3C
	ds	1
	global	___fltol@exp1
___fltol@exp1:	; 1 bytes @ 0x3D
	ds	7
	global	___fladd@signs
___fladd@signs:	; 1 bytes @ 0x44
	ds	1
	global	___fladd@aexp
___fladd@aexp:	; 1 bytes @ 0x45
	ds	1
	global	___fladd@bexp
___fladd@bexp:	; 1 bytes @ 0x46
	ds	1
	global	___fladd@grs
___fladd@grs:	; 1 bytes @ 0x47
	ds	1
?___flge:	; 1 bit 
	global	?___flsub
?___flsub:	; 4 bytes @ 0x48
	global	___flge@ff1
___flge@ff1:	; 4 bytes @ 0x48
	global	___flsub@a
___flsub@a:	; 4 bytes @ 0x48
	ds	4
	global	___flge@ff2
___flge@ff2:	; 4 bytes @ 0x4C
	global	___flsub@b
___flsub@b:	; 4 bytes @ 0x4C
	ds	4
;!
;!Data Sizes:
;!    Strings     61
;!    Constant    144
;!    Data        7
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     80      80
;!    BANK1            80     47      54
;!    BANK3            96     61      61
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    memset@p1	PTR void  size(1) Largest target is 50
;!		 -> main@Str(BANK3[50]), 
;!
;!    memset@p	PTR unsigned char  size(1) Largest target is 50
;!		 -> main@Str(BANK3[50]), 
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 25
;!		 -> STR_3(CODE[25]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 50
;!		 -> main@Str(BANK3[50]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK1[2]), 
;!
;!    LCD_Print@Str	PTR unsigned char  size(2) Largest target is 50
;!		 -> main@Str(BANK3[50]), STR_2(CODE[17]), 
;!
;!    sp__memset	PTR void  size(1) Largest target is 50
;!		 -> main@Str(BANK3[50]), 
;!
;!    UART_SendTxt@Str	PTR unsigned char  size(2) Largest target is 50
;!		 -> STR_4(CODE[3]), main@Str(BANK3[50]), STR_1(CODE[19]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _sprintf->___lldiv
;!    ___awdiv->___awmod
;!    _fround->___lwdiv
;!    ___lwdiv->___lwmod
;!    ___flmul->___lwdiv
;!    ___xxtofl->_ADC_GetAdcValue
;!    _UART_SendTxt->_UART_TxChar
;!    _UART_Init->___lldiv
;!    _LCD_Print->_Lcd_DataWrite
;!    _Lcd_DataWrite->_LCD_Enable
;!    _LCD_Init->_Lcd_CmdWrite
;!    _LCD_GoToXY->_Lcd_CmdWrite
;!    _LCD_Clear->_Lcd_CmdWrite
;!    _Lcd_CmdWrite->_LCD_Enable
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->___flge
;!    _sprintf->___flge
;!    _sprintf->___flsub
;!    _scale->___flmul
;!    _fround->___flmul
;!    ___flmul->___xxtofl
;!    ___fltol->_scale
;!    ___flsub->___fladd
;!    ___fladd->_fround
;!    ___flge->___fladd
;!    ___fldiv->___flmul
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_sprintf
;!    _sprintf->___flge
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                65    65      0   45628
;!                                             43 BANK1      4     4      0
;!                                              0 BANK3     61    61      0
;!                    _ADC_GetAdcValue
;!                           _ADC_Init
;!                          _LCD_Clear
;!                         _LCD_GoToXY
;!                           _LCD_Init
;!                          _LCD_Print
;!                           _PWM_Init
;!                   _PWM_SetDutyCycle
;!                          _PWM_Start
;!                          _UART_Init
;!                       _UART_SendTxt
;!                            ___fladd
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                           ___xxtofl
;!                             _memset
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             46    37      9   32550
;!                                              4 BANK1     39    30      9
;!                            ___awdiv
;!                            ___fladd
;!                             ___fleq
;!                             ___flge
;!                            ___flmul
;!                            ___flneg
;!                            ___flsub
;!                            ___fltol
;!                            ___lldiv
;!                            ___llmod
;!                             ___wmul
;!                           ___xxtofl
;!                         __div_to_l_
;!                        __tdiv_to_l_
;!                             _fround
;!                            _isdigit
;!                              _scale
;! ---------------------------------------------------------------------------------
;! (2) _scale                                               19    15      4    7712
;!                                             32 BANK0     19    15      4
;!                            ___awdiv
;!                            ___awmod
;!                            ___flmul
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              7     3      4    1208
;!                                              0 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              9     5      4    1364
;!                                              7 COMMON     5     1      4
;!                                              0 BANK0      4     4      0
;!                            ___awmod (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _isdigit                                              2     2      0      68
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _fround                                              20    16      4    6175
;!                                             32 BANK0     20    16      4
;!                            ___flmul
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              6     2      4     615
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              8     4      4     618
;!                                              6 COMMON     8     4      4
;!                            ___lwmod (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___flmul                                             26    18      8    4697
;!                                              6 BANK0     26    18      8
;!                    _ADC_GetAdcValue (ARG)
;!                          __Umul8_16
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;!                            ___lwdiv (ARG)
;!                            ___lwmod (ARG)
;!                           ___xxtofl (ARG)
;! ---------------------------------------------------------------------------------
;! (4) __Umul8_16                                            9     7      2     799
;!                                              0 COMMON     9     7      2
;! ---------------------------------------------------------------------------------
;! (2) __tdiv_to_l_                                         18    10      8     455
;!                                              0 COMMON    12     4      8
;!                                              0 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! (2) __div_to_l_                                          15     7      8     455
;!                                              0 COMMON     9     1      8
;!                                              0 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! (2) ___xxtofl                                            14    10      4     550
;!                                              4 COMMON     8     4      4
;!                                              0 BANK0      6     6      0
;!                    _ADC_GetAdcValue (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     396
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___llmod                                             10     2      8     615
;!                                              0 COMMON    10     2      8
;! ---------------------------------------------------------------------------------
;! (2) ___fltol                                             11     7      4     457
;!                                             51 BANK0     11     7      4
;!                            ___flmul (ARG)
;!                              _scale (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___flsub                                              8     0      8    2789
;!                                             72 BANK0      8     0      8
;!                            ___fladd
;!                           ___xxtofl (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___fladd                                             20    12      8    2592
;!                                             52 BANK0     20    12      8
;!                             _fround (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___flneg                                              4     0      4     121
;!                                              0 COMMON     4     0      4
;! ---------------------------------------------------------------------------------
;! (2) ___flge                                              12     4      8    1094
;!                                             72 BANK0      8     0      8
;!                                              0 BANK1      4     4      0
;!                            ___fladd (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___fleq                                              12     4      8     394
;!                                              0 COMMON    12     4      8
;! ---------------------------------------------------------------------------------
;! (1) _memset                                               7     3      4     281
;!                                              0 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (1) ___fldiv                                             26    18      8    1425
;!                                             32 BANK0     26    18      8
;!                    _ADC_GetAdcValue (ARG)
;!                            ___flmul (ARG)
;!                           ___xxtofl (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _UART_SendTxt                                         2     0      2     295
;!                                              1 COMMON     2     0      2
;!                        _UART_TxChar
;! ---------------------------------------------------------------------------------
;! (2) _UART_TxChar                                          1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _UART_Init                                            6     4      2     716
;!                                              0 BANK0      6     4      2
;!                            ___lldiv
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             14     6      8     618
;!                                              0 COMMON    14     6      8
;! ---------------------------------------------------------------------------------
;! (1) _PWM_Start                                            1     1      0       0
;! ---------------------------------------------------------------------------------
;! (1) _PWM_SetDutyCycle                                     4     3      1     317
;!                                              0 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _PWM_Init                                             3     3      0      22
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Print                                            2     0      2     241
;!                                              4 COMMON     2     0      2
;!                      _Lcd_DataWrite
;! ---------------------------------------------------------------------------------
;! (2) _Lcd_DataWrite                                        2     2      0      44
;!                                              2 COMMON     2     2      0
;!                         _LCD_Enable
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Init                                            13    13      0     137
;!                                              4 COMMON     4     4      0
;!                                              0 BANK0      9     9      0
;!                       _Lcd_CmdWrite
;! ---------------------------------------------------------------------------------
;! (1) _LCD_GoToXY                                           2     1      1     262
;!                                              4 COMMON     2     1      1
;!                       _Lcd_CmdWrite
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Clear                                            0     0      0      44
;!                       _Lcd_CmdWrite
;! ---------------------------------------------------------------------------------
;! (2) _Lcd_CmdWrite                                         2     2      0      44
;!                                              2 COMMON     2     2      0
;!                         _LCD_Enable
;! ---------------------------------------------------------------------------------
;! (3) _LCD_Enable                                           2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Init                                             1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _ADC_GetAdcValue                                      4     2      2      22
;!                                              0 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ADC_GetAdcValue
;!   _ADC_Init
;!   _LCD_Clear
;!     _Lcd_CmdWrite
;!       _LCD_Enable
;!   _LCD_GoToXY
;!     _Lcd_CmdWrite
;!   _LCD_Init
;!     _Lcd_CmdWrite
;!   _LCD_Print
;!     _Lcd_DataWrite
;!       _LCD_Enable
;!   _PWM_Init
;!   _PWM_SetDutyCycle
;!   _PWM_Start
;!   _UART_Init
;!     ___lldiv
;!   _UART_SendTxt
;!     _UART_TxChar
;!   ___fladd
;!     _fround (ARG)
;!       ___flmul
;!         _ADC_GetAdcValue (ARG)
;!         __Umul8_16 (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___lwdiv (ARG)
;!           ___lwmod (ARG)
;!         ___lwmod (ARG)
;!         ___xxtofl (ARG)
;!           _ADC_GetAdcValue (ARG)
;!       ___lwdiv
;!       ___lwmod
;!   ___fldiv
;!     _ADC_GetAdcValue (ARG)
;!     ___flmul (ARG)
;!     ___xxtofl (ARG)
;!   ___flge
;!     ___fladd (ARG)
;!   ___flmul
;!   ___xxtofl
;!   _memset
;!   _sprintf
;!     ___awdiv
;!     ___fladd
;!     ___fleq
;!     ___flge
;!     ___flmul
;!     ___flneg
;!     ___flsub
;!       ___fladd
;!       ___xxtofl (ARG)
;!     ___fltol
;!       ___flmul (ARG)
;!       _scale (ARG)
;!         ___awdiv
;!         ___awmod
;!         ___flmul
;!     ___lldiv
;!     ___llmod
;!     ___wmul
;!     ___xxtofl
;!     __div_to_l_
;!     __tdiv_to_l_
;!     _fround
;!     _isdigit
;!     _scale
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60     3D      3D       9       63.5%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     2F      36       7       67.5%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     50      50       5      100.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      D1      12        0.0%
;!ABS                  0      0      D1       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Str            50    0[BANK3 ] unsigned char [50]
;;  FeedBack        4   56[BANK3 ] float 
;;  SetPoint        4   52[BANK3 ] float 
;;  Count           2   50[BANK3 ] int 
;;  DutyCycle       1   60[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   69[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0      61       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0       4      61       0
;;Total ram usage:       65 bytes
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_ADC_GetAdcValue
;;		_ADC_Init
;;		_LCD_Clear
;;		_LCD_GoToXY
;;		_LCD_Init
;;		_LCD_Print
;;		_PWM_Init
;;		_PWM_SetDutyCycle
;;		_PWM_Start
;;		_UART_Init
;;		_UART_SendTxt
;;		___fladd
;;		___fldiv
;;		___flge
;;		___flmul
;;		___xxtofl
;;		_memset
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"main.c"
	line	13
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	13
	
_main:	
;incstack = 0
	callstack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	17
	
l3770:	
;main.c: 15:     char Str[50];;main.c: 16:     float SetPoint ,FeedBack;;main.c: 17:     unsigned char DutyCycle = 25;
	movlw	low(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@DutyCycle)^0180h
	line	19
	
l3772:	
;main.c: 18:     int Count;;main.c: 19:     ADC_Init();
	fcall	_ADC_Init
	line	20
	
l3774:	
;main.c: 20:     LCD_Init();
	fcall	_LCD_Init
	line	21
	
l3776:	
;main.c: 21:     UART_Init(9600);
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(UART_Init@baudRate)
	movlw	025h
	movwf	((UART_Init@baudRate))+1
	fcall	_UART_Init
	line	22
	
l3778:	
;main.c: 22:     PWM_Init(0);
	movlw	low(0)
	fcall	_PWM_Init
	line	23
	
l3780:	
;main.c: 23:     PWM_SetDutyCycle(0,DutyCycle);
	movlw	low(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(PWM_SetDutyCycle@dutyCycle)
	movlw	low(0)
	fcall	_PWM_SetDutyCycle
	line	24
	
l3782:	
;main.c: 24:     PWM_Start(0);
	movlw	low(0)
	fcall	_PWM_Start
	line	25
	
l3784:	
;main.c: 25:     UART_SendTxt("System Start....\r\n");
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	movwf	(UART_SendTxt@Str)
	movlw	80h
	movwf	(UART_SendTxt@Str+1)
	fcall	_UART_SendTxt
	line	26
	
l3786:	
;main.c: 26:     LCD_GoToXY(0,0);
	clrf	(LCD_GoToXY@Y)
	movlw	low(0)
	fcall	_LCD_GoToXY
	line	27
	
l3788:	
;main.c: 27:     LCD_Print("System Start....");
	movlw	(low((((STR_2)-__stringbase)|8000h)))&0ffh
	movwf	(LCD_Print@Str)
	movlw	80h
	movwf	(LCD_Print@Str+1)
	fcall	_LCD_Print
	line	30
	
l3790:	
;main.c: 29:     {;main.c: 30:         Count+=5;
	movlw	05h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@Count)^0180h,f
	skipnc
	incf	(main@Count+1)^0180h,f
	movlw	0
	addwf	(main@Count+1)^0180h,f
	line	31
	
l3792:	
;main.c: 31:         SetPoint = ((float)ADC_GetAdcValue(0) * (float)5 ) / (float)1024;
	movlw	0x44
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@a+3)
	movlw	0x80
	movwf	(___fldiv@a+2)
	movlw	0x0
	movwf	(___fldiv@a+1)
	movlw	0x0
	movwf	(___fldiv@a)

	movlw	0x40
	movwf	(___flmul@b+3)
	movlw	0xa0
	movwf	(___flmul@b+2)
	movlw	0x0
	movwf	(___flmul@b+1)
	movlw	0x0
	movwf	(___flmul@b)

	movlw	low(0)
	fcall	_ADC_GetAdcValue
	movf	(0+(?_ADC_GetAdcValue)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	((??_main+0)^080h+0)
	movf	(1+(?_ADC_GetAdcValue)),w
	movwf	((??_main+0)^080h+0+1)
	clrf	((??_main+0)^080h+0+2)
	clrf	((??_main+0)^080h+0+3)
	movf	3+(??_main+0)^080h+0,w
	movwf	(___xxtofl@val+3)
	movf	2+(??_main+0)^080h+0,w
	movwf	(___xxtofl@val+2)
	movf	1+(??_main+0)^080h+0,w
	movwf	(___xxtofl@val+1)
	movf	0+(??_main+0)^080h+0,w
	movwf	(___xxtofl@val)

	movlw	low(0)
	fcall	___xxtofl
	movf	(3+(?___xxtofl)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+3)
	movf	(2+(?___xxtofl)),w
	movwf	(___flmul@a+2)
	movf	(1+(?___xxtofl)),w
	movwf	(___flmul@a+1)
	movf	(0+(?___xxtofl)),w
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(___fldiv@b+3)
	movf	(2+(?___flmul)),w
	movwf	(___fldiv@b+2)
	movf	(1+(?___flmul)),w
	movwf	(___fldiv@b+1)
	movf	(0+(?___flmul)),w
	movwf	(___fldiv@b)

	fcall	___fldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@SetPoint+3)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@SetPoint+2)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@SetPoint+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@SetPoint)^0180h

	line	32
	
l3794:	
;main.c: 32:         FeedBack = ((float)ADC_GetAdcValue(1) * (float)5 ) / (float)1024;
	movlw	0x44
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@a+3)
	movlw	0x80
	movwf	(___fldiv@a+2)
	movlw	0x0
	movwf	(___fldiv@a+1)
	movlw	0x0
	movwf	(___fldiv@a)

	movlw	0x40
	movwf	(___flmul@b+3)
	movlw	0xa0
	movwf	(___flmul@b+2)
	movlw	0x0
	movwf	(___flmul@b+1)
	movlw	0x0
	movwf	(___flmul@b)

	movlw	low(01h)
	fcall	_ADC_GetAdcValue
	movf	(0+(?_ADC_GetAdcValue)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	((??_main+0)^080h+0)
	movf	(1+(?_ADC_GetAdcValue)),w
	movwf	((??_main+0)^080h+0+1)
	clrf	((??_main+0)^080h+0+2)
	clrf	((??_main+0)^080h+0+3)
	movf	3+(??_main+0)^080h+0,w
	movwf	(___xxtofl@val+3)
	movf	2+(??_main+0)^080h+0,w
	movwf	(___xxtofl@val+2)
	movf	1+(??_main+0)^080h+0,w
	movwf	(___xxtofl@val+1)
	movf	0+(??_main+0)^080h+0,w
	movwf	(___xxtofl@val)

	movlw	low(0)
	fcall	___xxtofl
	movf	(3+(?___xxtofl)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+3)
	movf	(2+(?___xxtofl)),w
	movwf	(___flmul@a+2)
	movf	(1+(?___xxtofl)),w
	movwf	(___flmul@a+1)
	movf	(0+(?___xxtofl)),w
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(___fldiv@b+3)
	movf	(2+(?___flmul)),w
	movwf	(___fldiv@b+2)
	movf	(1+(?___flmul)),w
	movwf	(___fldiv@b+1)
	movf	(0+(?___flmul)),w
	movwf	(___fldiv@b)

	fcall	___fldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@FeedBack+3)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@FeedBack+2)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@FeedBack+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@FeedBack)^0180h

	line	33
	
l3796:	
;main.c: 33:         if(Count >= 1000)
	movf	(main@Count+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(03h)^80h
	subwf	btemp+1,w
	skipz
	goto	u6075
	movlw	0E8h
	subwf	(main@Count)^0180h,w
u6075:

	skipc
	goto	u6071
	goto	u6070
u6071:
	goto	l3814
u6070:
	line	35
	
l3798:	
;main.c: 34:         {;main.c: 35:             Count = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@Count)^0180h
	clrf	(main@Count+1)^0180h
	line	36
	
l3800:	
;main.c: 36:             memset(Str,'\0',50);
	movlw	0
	movwf	(memset@c)
	movwf	(memset@c+1)
	movlw	032h
	movwf	(memset@n)
	movlw	0
	movwf	((memset@n))+1
	movlw	(low(main@Str|((0x1)<<8)))&0ffh
	fcall	_memset
	line	37
	
l3802:	
;main.c: 37:             sprintf(Str,"CH0 = %.3f -- CH1 = %.3f",SetPoint ,FeedBack);
	movlw	(low((((STR_3)-__stringbase)|8000h)))&0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(sprintf@f)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@SetPoint+3)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	3+(?_sprintf)^080h+01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@SetPoint+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	2+(?_sprintf)^080h+01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@SetPoint+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(?_sprintf)^080h+01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@SetPoint)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?_sprintf)^080h+01h

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@FeedBack+3)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	3+(?_sprintf)^080h+05h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@FeedBack+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	2+(?_sprintf)^080h+05h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@FeedBack+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(?_sprintf)^080h+05h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@FeedBack)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?_sprintf)^080h+05h

	movlw	(low(main@Str|((0x1)<<8)))&0ffh
	fcall	_sprintf
	line	38
	
l3804:	
;main.c: 38:             LCD_GoToXY(0,0);
	clrf	(LCD_GoToXY@Y)
	movlw	low(0)
	fcall	_LCD_GoToXY
	line	39
	
l3806:	
;main.c: 39:             LCD_Clear();
	fcall	_LCD_Clear
	line	40
	
l3808:	
;main.c: 40:             LCD_Print(Str);
	movlw	(low(main@Str|((0x1)<<8))&0ffh)
	movwf	(LCD_Print@Str)
	movlw	(0x1)
	movwf	(LCD_Print@Str+1)
	fcall	_LCD_Print
	line	41
	
l3810:	
;main.c: 41:             UART_SendTxt(Str);
	movlw	(low(main@Str|((0x1)<<8))&0ffh)
	movwf	(UART_SendTxt@Str)
	movlw	(0x1)
	movwf	(UART_SendTxt@Str+1)
	fcall	_UART_SendTxt
	line	42
	
l3812:	
;main.c: 42:             UART_SendTxt("\r\n");
	movlw	(low((((STR_4)-__stringbase)|8000h)))&0ffh
	movwf	(UART_SendTxt@Str)
	movlw	80h
	movwf	(UART_SendTxt@Str+1)
	fcall	_UART_SendTxt
	line	44
	
l3814:	
;main.c: 44:         if(FeedBack > (SetPoint + 0.2))
	movlw	0x3e
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@b+3)
	movlw	0x4c
	movwf	(___fladd@b+2)
	movlw	0xcc
	movwf	(___fladd@b+1)
	movlw	0xcd
	movwf	(___fladd@b)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@SetPoint+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@SetPoint+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@SetPoint+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@SetPoint)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a)

	fcall	___fladd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fladd)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___fladd)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___fladd)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___fladd)),w
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@FeedBack+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@FeedBack+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@FeedBack+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@FeedBack)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u6081
	goto	u6080
u6081:
	goto	l3822
u6080:
	line	47
	
l3816:	
;main.c: 45:         {;main.c: 47:             if(DutyCycle > 0)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	((main@DutyCycle)^0180h),w
	btfsc	status,2
	goto	u6091
	goto	u6090
u6091:
	goto	l3820
u6090:
	line	49
	
l3818:	
;main.c: 48:             {;main.c: 49:                 DutyCycle -= 5;
	movlw	05h
	subwf	(main@DutyCycle)^0180h,f
	line	51
	
l3820:	
;main.c: 51:             PWM_SetDutyCycle(0,DutyCycle);
	movf	(main@DutyCycle)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(PWM_SetDutyCycle@dutyCycle)
	movlw	low(0)
	fcall	_PWM_SetDutyCycle
	line	52
;main.c: 52:         }
	goto	l3830
	line	53
	
l3822:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@FeedBack+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@FeedBack+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@FeedBack+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@FeedBack)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1)

	movlw	0xbe
	movwf	(___fladd@b+3)
	movlw	0x4c
	movwf	(___fladd@b+2)
	movlw	0xcc
	movwf	(___fladd@b+1)
	movlw	0xcd
	movwf	(___fladd@b)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@SetPoint+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@SetPoint+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@SetPoint+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@SetPoint)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a)

	fcall	___fladd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fladd)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___fladd)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___fladd)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___fladd)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u6101
	goto	u6100
u6101:
	goto	l3830
u6100:
	line	56
	
l3824:	
;main.c: 54:         {;main.c: 56:             if(DutyCycle < 100)
	movlw	low(064h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	subwf	(main@DutyCycle)^0180h,w
	skipnc
	goto	u6111
	goto	u6110
u6111:
	goto	l3828
u6110:
	line	58
	
l3826:	
;main.c: 57:             {;main.c: 58:                 DutyCycle += 5;
	movlw	low(05h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@DutyCycle)^0180h,f
	line	60
	
l3828:	
;main.c: 60:             PWM_SetDutyCycle(0,DutyCycle);
	movf	(main@DutyCycle)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(PWM_SetDutyCycle@dutyCycle)
	movlw	low(0)
	fcall	_PWM_SetDutyCycle
	line	66
;main.c: 61:         }
	
l3830:	
;main.c: 66:         _delay((unsigned long)((5)*(16000000UL/4000.0)));
	asmopt push
asmopt off
movlw	26
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_main+0)^080h+0+1)
	movlw	247
movwf	((??_main+0)^080h+0)
	u6127:
decfsz	((??_main+0)^080h+0),f
	goto	u6127
	decfsz	((??_main+0)^080h+0+1),f
	goto	u6127
	nop2
asmopt pop

	goto	l3790
	global	start
	ljmp	start
	callstack 0
	line	68
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 505 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> main@Str(50), 
;;  f               1    4[BANK1 ] PTR const unsigned char 
;;		 -> STR_3(25), 
;; Auto vars:     Size  Location     Type
;;  sp              1   35[BANK1 ] PTR unsigned char 
;;		 -> main@Str(50), 
;;  fval            4   38[BANK1 ] PTR unsigned char 
;;  tmpval          4   31[BANK1 ] struct .
;;  val             4   25[BANK1 ] unsigned long 
;;  prec            2   36[BANK1 ] int 
;;  eexp            2   29[BANK1 ] int 
;;  flag            2   23[BANK1 ] unsigned short 
;;  cp              2    0        PTR const unsigned char 
;;  len             2    0        unsigned int 
;;  width           2    0        int 
;;  c               1   42[BANK1 ] unsigned char 
;;  ap              1   22[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[BANK1 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       9       0       0
;;      Locals:         0       0      25       0       0
;;      Temps:          0       0       5       0       0
;;      Totals:         0       0      39       0       0
;;Total ram usage:       39 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___awdiv
;;		___fladd
;;		___fleq
;;		___flge
;;		___flmul
;;		___flneg
;;		___flsub
;;		___fltol
;;		___lldiv
;;		___llmod
;;		___wmul
;;		___xxtofl
;;		__div_to_l_
;;		__tdiv_to_l_
;;		_fround
;;		_isdigit
;;		_scale
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c"
	line	505
global __ptext1
__ptext1:	;psect for function _sprintf
psect	text1
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c"
	line	505
	
_sprintf:	
;incstack = 0
	callstack 4
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@sp)^080h
	line	550
	
l3420:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 505: sprintf(char * sp, const char * f, ...);C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 506: {;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 507:  va_list ap;;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 512:  char c;;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 514:  int width;;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 517:  int prec;
	movlw	(low(?_sprintf|((0x0)<<8)+01h))&0ffh
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@ap)^080h
	line	553
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 553:  while((c = *f++)) {
	goto	l3614
	line	555
	
l3422:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 555:   if(c != '%')
		movlw	37
	xorwf	((sprintf@c)^080h),w
	btfsc	status,2
	goto	u5431
	goto	u5430
u5431:
	goto	l3428
u5430:
	line	558
	
l3424:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 557:   {;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 558:    ((*sp++ = (c)));
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3426:	
	movlw	low(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	line	559
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 559:    continue;
	goto	l3614
	line	565
	
l3428:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 565:   flag = 0;
	clrf	(sprintf@flag)^080h
	clrf	(sprintf@flag+1)^080h
	line	628
	
l3430:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 628:   if(*f == '.') {
	movf	(sprintf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u5441
	goto	u5440
u5441:
	goto	l3446
u5440:
	line	629
	
l3432:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 629:    flag |= 0x4000;
	bsf	(sprintf@flag)^080h+(14/8),(14)&7
	line	630
	
l3434:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 630:    f++;
	movlw	low(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@f)^080h,f
	line	645
	
l3436:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 644:    {;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 645:     prec = 0;
	clrf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	646
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 646:     while(isdigit((unsigned)*f)) {
	goto	l3444
	line	647
	
l3438:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 647:      prec *= 10;
	movlw	0Ah
	movwf	(___wmul@multiplier)
	movlw	0
	movwf	((___wmul@multiplier))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	movwf	(___wmul@multiplicand+1)
	movf	(sprintf@prec)^080h,w
	movwf	(___wmul@multiplicand)
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@prec+1)^080h
	movf	(0+(?___wmul)),w
	movwf	(sprintf@prec)^080h
	line	648
	
l3440:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 648:         prec += *f++ - '0';
	movf	(sprintf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	addlw	low(-48)
	movwf	(??_sprintf+0)^080h+0
	movlw	high(-48)
	skipnc
	movlw	(high(-48)+1)&0ffh
	movwf	((??_sprintf+0)^080h+0)+1
	movf	0+(??_sprintf+0)^080h+0,w
	addwf	(sprintf@prec)^080h,f
	skipnc
	incf	(sprintf@prec+1)^080h,f
	movf	1+(??_sprintf+0)^080h+0,w
	addwf	(sprintf@prec+1)^080h,f
	
l3442:	
	movlw	low(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@f)^080h,f
	line	646
	
l3444:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 646:     while(isdigit((unsigned)*f)) {
	movf	(sprintf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u5451
	goto	u5450
u5451:
	goto	l3438
u5450:
	goto	l3452
	line	652
	
l3446:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 652:    prec = 0;
	clrf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	654
	
l3448:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 654:    flag |= 0x1000;
	bsf	(sprintf@flag)^080h+(12/8),(12)&7
	goto	l3452
	line	688
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 688:   case 'f':
	
l312:	
	line	689
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 689:    flag |= 0x400;
	bsf	(sprintf@flag)^080h+(10/8),(10)&7
	line	690
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 690:    break;
	goto	l3454
	line	848
	
l3452:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@f)^080h,f
	movlw	-01h
	addwf	(sprintf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)^080h
	movwf	(??_sprintf+0)^080h+0
	clrf	(??_sprintf+0)^080h+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 1+(??_sprintf+0)^080h+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l3902
	goto	l3614
	asmopt pop
	
l3902:	
; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 0 to 102
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 0+(??_sprintf+0)^080h+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l3616
	xorlw	102^0	; case 102
	skipnz
	goto	l312
	goto	l3614
	asmopt pop

	line	851
	
l3454:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 851:   if(flag & (0x700)) {
	movlw	0
	andwf	(sprintf@flag)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movlw	07h
	andwf	(sprintf@flag+1)^080h,w
	movwf	1+(??_sprintf+0)^080h+0
	movf	((??_sprintf+0)^080h+0),w
iorwf	((??_sprintf+0)^080h+1),w
	btfsc	status,2
	goto	u5461
	goto	u5460
u5461:
	goto	l3596
u5460:
	line	853
	
l3456:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 853:    if(flag & 0x1000)
	btfss	(sprintf@flag+1)^080h,(12)&7
	goto	u5471
	goto	u5470
u5471:
	goto	l3460
u5470:
	line	855
	
l3458:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 855:     prec = 6;
	movlw	06h
	movwf	(sprintf@prec)^080h
	movlw	0
	movwf	((sprintf@prec)^080h)+1
	line	856
	
l3460:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 856:    fval = (*(double *)__va_arg((*(double **)ap), (double)0));
	movf	(sprintf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@fval)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@fval+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@fval+2)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@fval+3)^080h
	
l3462:	
	movlw	low(04h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@ap)^080h,f
	line	857
	
l3464:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 857:    if(fval < 0.0) {
	movf	(sprintf@fval+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1)

	movlw	0x0
	movwf	(___flge@ff2+3)
	movlw	0x0
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u5481
	goto	u5480
u5481:
	goto	l3470
u5480:
	line	858
	
l3466:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 858:     fval = -fval;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+3)^080h,w
	movwf	(___flneg@f1+3)
	movf	(sprintf@fval+2)^080h,w
	movwf	(___flneg@f1+2)
	movf	(sprintf@fval+1)^080h,w
	movwf	(___flneg@f1+1)
	movf	(sprintf@fval)^080h,w
	movwf	(___flneg@f1)

	fcall	___flneg
	movf	(3+(?___flneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+3)^080h
	movf	(2+(?___flneg)),w
	movwf	(sprintf@fval+2)^080h
	movf	(1+(?___flneg)),w
	movwf	(sprintf@fval+1)^080h
	movf	(0+(?___flneg)),w
	movwf	(sprintf@fval)^080h

	line	859
	
l3468:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 859:     flag |= 0x03;
	movlw	03h
	iorwf	(sprintf@flag)^080h,f
	movlw	0
	iorwf	(sprintf@flag+1)^080h,f
	line	861
	
l3470:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 861:    eexp = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@eexp)^080h
	clrf	(sprintf@eexp+1)^080h
	line	862
	
l3472:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 862:    if( fval!=0) {
	movf	(sprintf@fval+3)^080h,w
	movwf	(___fleq@ff1+3)
	movf	(sprintf@fval+2)^080h,w
	movwf	(___fleq@ff1+2)
	movf	(sprintf@fval+1)^080h,w
	movwf	(___fleq@ff1+1)
	movf	(sprintf@fval)^080h,w
	movwf	(___fleq@ff1)

	movlw	0x0
	movwf	(___fleq@ff2+3)
	movlw	0x0
	movwf	(___fleq@ff2+2)
	movlw	0x0
	movwf	(___fleq@ff2+1)
	movlw	0x0
	movwf	(___fleq@ff2)

	fcall	___fleq
	btfsc	status,0
	goto	u5491
	goto	u5490
u5491:
	goto	l3498
u5490:
	line	863
	
l3474:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 863:     (void)(*(&eexp) = (unsigned char)((*(unsigned long *)&fval >> 23) & 255) - 126);
	clrc
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	rlf	(sprintf@fval+2)^080h,w
	rlf	(sprintf@fval+3)^080h,w
	addlw	low(-126)
	movwf	(sprintf@eexp)^080h
	movlw	high(-126)
	skipnc
	movlw	(high(-126)+1)&0ffh
	movwf	((sprintf@eexp)^080h)+1
	line	864
	
l3476:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 864:     eexp--;
	movlw	0FFh
	addwf	(sprintf@eexp)^080h,f
	skipnc
	incf	(sprintf@eexp+1)^080h,f
	movlw	0FFh
	addwf	(sprintf@eexp+1)^080h,f
	line	865
	
l3478:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 865:     eexp *= 3;
	movlw	03h
	movwf	(___wmul@multiplier)
	movlw	0
	movwf	((___wmul@multiplier))+1
	movf	(sprintf@eexp+1)^080h,w
	movwf	(___wmul@multiplicand+1)
	movf	(sprintf@eexp)^080h,w
	movwf	(___wmul@multiplicand)
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@eexp+1)^080h
	movf	(0+(?___wmul)),w
	movwf	(sprintf@eexp)^080h
	line	866
	
l3480:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 866:     eexp /= 10;
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(sprintf@eexp+1)^080h,w
	movwf	(___awdiv@dividend+1)
	movf	(sprintf@eexp)^080h,w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@eexp+1)^080h
	movf	(0+(?___awdiv)),w
	movwf	(sprintf@eexp)^080h
	line	867
	
l3482:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 867:     if(eexp < 0)
	btfss	(sprintf@eexp+1)^080h,7
	goto	u5501
	goto	u5500
u5501:
	goto	l3486
u5500:
	line	868
	
l3484:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 868:      eexp--;
	movlw	0FFh
	addwf	(sprintf@eexp)^080h,f
	skipnc
	incf	(sprintf@eexp+1)^080h,f
	movlw	0FFh
	addwf	(sprintf@eexp+1)^080h,f
	line	872
	
l3486:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 872:     tmpval.integ = scale(-eexp);
	decf	(sprintf@eexp)^080h,w
	xorlw	0ffh
	fcall	_scale
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@tmpval+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@tmpval+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@tmpval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@tmpval)^080h

	line	873
	
l3488:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 873:     tmpval.integ *= fval;
	movf	(sprintf@fval+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@tmpval+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@tmpval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@tmpval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@tmpval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@tmpval+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@tmpval+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@tmpval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@tmpval)^080h

	line	874
	
l3490:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 874:     if(tmpval.integ < 1.0)
	movf	(sprintf@tmpval+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@tmpval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@tmpval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@tmpval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1)

	movlw	0x3f
	movwf	(___flge@ff2+3)
	movlw	0x80
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u5511
	goto	u5510
u5511:
	goto	l3494
u5510:
	line	875
	
l3492:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 875:      eexp--;
	movlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@eexp)^080h,f
	skipnc
	incf	(sprintf@eexp+1)^080h,f
	movlw	0FFh
	addwf	(sprintf@eexp+1)^080h,f
	goto	l3498
	line	876
	
l3494:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@tmpval+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@tmpval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@tmpval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@tmpval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1)

	movlw	0x41
	movwf	(___flge@ff2+3)
	movlw	0x20
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u5521
	goto	u5520
u5521:
	goto	l3498
u5520:
	line	877
	
l3496:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 877:      eexp++;
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@eexp)^080h,f
	skipnc
	incf	(sprintf@eexp+1)^080h,f
	movlw	0
	addwf	(sprintf@eexp+1)^080h,f
	line	1138
	
l3498:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1138:      if(prec <= 12)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u5535
	movlw	0Dh
	subwf	(sprintf@prec)^080h,w
u5535:

	skipnc
	goto	u5531
	goto	u5530
u5531:
	goto	l3502
u5530:
	line	1139
	
l3500:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1139:       fval += fround((unsigned int)prec);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	fcall	_fround
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?_fround)),w
	movwf	(___fladd@b+3)
	movf	(2+(?_fround)),w
	movwf	(___fladd@b+2)
	movf	(1+(?_fround)),w
	movwf	(___fladd@b+1)
	movf	(0+(?_fround)),w
	movwf	(___fladd@b)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@a)

	fcall	___fladd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval)^080h

	line	1142
	
l3502:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1142:     if((eexp > 9)||(fval != 0 && (unsigned long)fval == 0 && eexp > 1)) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@eexp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u5545
	movlw	0Ah
	subwf	(sprintf@eexp)^080h,w
u5545:

	skipnc
	goto	u5541
	goto	u5540
u5541:
	goto	l3510
u5540:
	
l3504:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+3)^080h,w
	movwf	(___fleq@ff1+3)
	movf	(sprintf@fval+2)^080h,w
	movwf	(___fleq@ff1+2)
	movf	(sprintf@fval+1)^080h,w
	movwf	(___fleq@ff1+1)
	movf	(sprintf@fval)^080h,w
	movwf	(___fleq@ff1)

	movlw	0x0
	movwf	(___fleq@ff2+3)
	movlw	0x0
	movwf	(___fleq@ff2+2)
	movlw	0x0
	movwf	(___fleq@ff2+1)
	movlw	0x0
	movwf	(___fleq@ff2)

	fcall	___fleq
	btfsc	status,0
	goto	u5551
	goto	u5550
u5551:
	goto	l3524
u5550:
	
l3506:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fltol)),w
	iorwf	(2+(?___fltol)),w
	iorwf	(1+(?___fltol)),w
	iorwf	(0+(?___fltol)),w
	skipz
	goto	u5561
	goto	u5560
u5561:
	goto	l3524
u5560:
	
l3508:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@eexp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u5575
	movlw	02h
	subwf	(sprintf@eexp)^080h,w
u5575:

	skipc
	goto	u5571
	goto	u5570
u5571:
	goto	l3524
u5570:
	line	1146
	
l3510:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1146:      if(tmpval.integ < 4.294967296){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@tmpval+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@tmpval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@tmpval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@tmpval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1)

	movlw	0x40
	movwf	(___flge@ff2+3)
	movlw	0x89
	movwf	(___flge@ff2+2)
	movlw	0x70
	movwf	(___flge@ff2+1)
	movlw	0x5f
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u5581
	goto	u5580
u5581:
	goto	l3514
u5580:
	line	1147
	
l3512:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1147:       eexp -= (sizeof dpowers/sizeof dpowers[0])-1;
	movlw	0F7h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@eexp)^080h,f
	skipnc
	incf	(sprintf@eexp+1)^080h,f
	movlw	0FFh
	addwf	(sprintf@eexp+1)^080h,f
	line	1148
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1148:      }else{
	goto	l3516
	line	1149
	
l3514:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1149:       eexp -= (sizeof dpowers/sizeof dpowers[0])-2;
	movlw	0F8h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@eexp)^080h,f
	skipnc
	incf	(sprintf@eexp+1)^080h,f
	movlw	0FFh
	addwf	(sprintf@eexp+1)^080h,f
	line	1151
	
l3516:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1152:      val = ((sizeof(double)== 3) ? _tdiv_to_l_(fval,tmpval.integ) : _div_to_l_(fval,tmpval.integ));
	movf	(sprintf@eexp)^080h,w
	fcall	_scale
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@tmpval+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@tmpval+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@tmpval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@tmpval)^080h

	line	1152
	
l3518:	
	movf	(sprintf@fval+3)^080h,w
	movwf	(__div_to_l_@f1+3)
	movf	(sprintf@fval+2)^080h,w
	movwf	(__div_to_l_@f1+2)
	movf	(sprintf@fval+1)^080h,w
	movwf	(__div_to_l_@f1+1)
	movf	(sprintf@fval)^080h,w
	movwf	(__div_to_l_@f1)

	movf	(sprintf@tmpval+3)^080h,w
	movwf	(__div_to_l_@f2+3)
	movf	(sprintf@tmpval+2)^080h,w
	movwf	(__div_to_l_@f2+2)
	movf	(sprintf@tmpval+1)^080h,w
	movwf	(__div_to_l_@f2+1)
	movf	(sprintf@tmpval)^080h,w
	movwf	(__div_to_l_@f2)

	fcall	__div_to_l_
	movf	(3+(?__div_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@val+3)^080h
	movf	(2+(?__div_to_l_)),w
	movwf	(sprintf@val+2)^080h
	movf	(1+(?__div_to_l_)),w
	movwf	(sprintf@val+1)^080h
	movf	(0+(?__div_to_l_)),w
	movwf	(sprintf@val)^080h

	line	1155
	
l3522:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1155:      fval = 0.0;
	movlw	0x0
	movwf	(sprintf@fval+3)^080h
	movlw	0x0
	movwf	(sprintf@fval+2)^080h
	movlw	0x0
	movwf	(sprintf@fval+1)^080h
	movlw	0x0
	movwf	(sprintf@fval)^080h

	line	1156
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1156:     } else {
	goto	l3530
	line	1157
	
l3524:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1157:      val = (unsigned long)fval;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fltol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fltol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fltol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fltol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@val)^080h

	line	1158
	
l3526:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1158:      fval -= (double)val;
	movf	(sprintf@val+3)^080h,w
	movwf	(___xxtofl@val+3)
	movf	(sprintf@val+2)^080h,w
	movwf	(___xxtofl@val+2)
	movf	(sprintf@val+1)^080h,w
	movwf	(___xxtofl@val+1)
	movf	(sprintf@val)^080h,w
	movwf	(___xxtofl@val)

	movlw	low(0)
	fcall	___xxtofl
	movf	(3+(?___xxtofl)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@a+3)
	movf	(2+(?___xxtofl)),w
	movwf	(___flsub@a+2)
	movf	(1+(?___xxtofl)),w
	movwf	(___flsub@a+1)
	movf	(0+(?___xxtofl)),w
	movwf	(___flsub@a)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@b+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@b+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@b)

	fcall	___flsub
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval)^080h

	line	1159
	
l3528:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1159:      eexp = 0;
	clrf	(sprintf@eexp)^080h
	clrf	(sprintf@eexp+1)^080h
	line	1162
	
l3530:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1162:     for(c = 1 ; c != (sizeof dpowers/sizeof dpowers[0]) ; c++)
	clrf	(sprintf@c)^080h
	incf	(sprintf@c)^080h,f
	line	1163
	
l3536:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1163:      if(val < dpowers[c])
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movlw	(02h)-1
u5595:
	clrc
	rlf	(??_sprintf+0)^080h+0,f
	addlw	-1
	skipz
	goto	u5595
	clrc
	rlf	(??_sprintf+0)^080h+0,w
	addlw	low((((_dpowers)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_sprintf+1)^080h+0)
	fcall	stringdir
	movwf	((??_sprintf+1)^080h+0+1)
	fcall	stringdir
	movwf	((??_sprintf+1)^080h+0+2)
	fcall	stringdir
	movwf	((??_sprintf+1)^080h+0+3)
	movf	3+(??_sprintf+1)^080h+0,w
	subwf	(sprintf@val+3)^080h,w
	skipz
	goto	u5605
	movf	2+(??_sprintf+1)^080h+0,w
	subwf	(sprintf@val+2)^080h,w
	skipz
	goto	u5605
	movf	1+(??_sprintf+1)^080h+0,w
	subwf	(sprintf@val+1)^080h,w
	skipz
	goto	u5605
	movf	0+(??_sprintf+1)^080h+0,w
	subwf	(sprintf@val)^080h,w
u5605:
	skipnc
	goto	u5601
	goto	u5600
u5601:
	goto	l3540
u5600:
	goto	l3542
	line	1164
	
l3540:	
	movlw	low(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@c)^080h,f
		movlw	10
	xorwf	((sprintf@c)^080h),w
	btfss	status,2
	goto	u5611
	goto	u5610
u5611:
	goto	l3536
u5610:
	line	1214
	
l3542:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1201:     {;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1214:     if(flag & 0x03)
	movlw	03h
	andwf	(sprintf@flag)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movlw	0
	andwf	(sprintf@flag+1)^080h,w
	movwf	1+(??_sprintf+0)^080h+0
	movf	((??_sprintf+0)^080h+0),w
iorwf	((??_sprintf+0)^080h+1),w
	btfsc	status,2
	goto	u5621
	goto	u5620
u5621:
	goto	l338
u5620:
	line	1216
	
l3544:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1216:      ((*sp++ = ('-')));
	movlw	low(02Dh)
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3546:	
	movlw	low(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	goto	l338
	line	1227
	
l3548:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1226:     {;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1227:      tmpval.vd = val/dpowers[c];
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movlw	(02h)-1
u5635:
	clrc
	rlf	(??_sprintf+0)^080h+0,f
	addlw	-1
	skipz
	goto	u5635
	clrc
	rlf	(??_sprintf+0)^080h+0,w
	addlw	low((((_dpowers)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(___lldiv@divisor)
	fcall	stringdir
	movwf	(___lldiv@divisor+1)
	fcall	stringdir
	movwf	(___lldiv@divisor+2)
	fcall	stringdir
	movwf	(___lldiv@divisor+3)
	movf	(sprintf@val+3)^080h,w
	movwf	(___lldiv@dividend+3)
	movf	(sprintf@val+2)^080h,w
	movwf	(___lldiv@dividend+2)
	movf	(sprintf@val+1)^080h,w
	movwf	(___lldiv@dividend+1)
	movf	(sprintf@val)^080h,w
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@tmpval+3)^080h
	movf	(2+(?___lldiv)),w
	movwf	(sprintf@tmpval+2)^080h
	movf	(1+(?___lldiv)),w
	movwf	(sprintf@tmpval+1)^080h
	movf	(0+(?___lldiv)),w
	movwf	(sprintf@tmpval)^080h

	line	1228
	
l3550:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1228:      tmpval.vd %= 10;
	movlw	0
	movwf	(___llmod@divisor+3)
	movlw	0
	movwf	(___llmod@divisor+2)
	movlw	0
	movwf	(___llmod@divisor+1)
	movlw	0Ah
	movwf	(___llmod@divisor)

	movf	(sprintf@tmpval+3)^080h,w
	movwf	(___llmod@dividend+3)
	movf	(sprintf@tmpval+2)^080h,w
	movwf	(___llmod@dividend+2)
	movf	(sprintf@tmpval+1)^080h,w
	movwf	(___llmod@dividend+1)
	movf	(sprintf@tmpval)^080h,w
	movwf	(___llmod@dividend)

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@tmpval+3)^080h
	movf	(2+(?___llmod)),w
	movwf	(sprintf@tmpval+2)^080h
	movf	(1+(?___llmod)),w
	movwf	(sprintf@tmpval+1)^080h
	movf	(0+(?___llmod)),w
	movwf	(sprintf@tmpval)^080h

	line	1229
	
l3552:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1229:      ((*sp++ = ('0' + tmpval.vd)));
	movf	(sprintf@tmpval)^080h,w
	addlw	030h
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	movlw	low(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	line	1232
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1230:     };C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1232:    }
	
l338:	
	line	1222
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1222:    while(c--) {
	movlw	01h
	subwf	(sprintf@c)^080h,f
		incf	(((sprintf@c)^080h)),w
	btfss	status,2
	goto	u5641
	goto	u5640
u5641:
	goto	l3548
u5640:
	goto	l3560
	line	1234
	
l3554:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1234:     ((*sp++ = ('0')));
	movlw	low(030h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3556:	
	movlw	low(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	line	1235
	
l3558:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1235:     eexp--;
	movlw	0FFh
	addwf	(sprintf@eexp)^080h,f
	skipnc
	incf	(sprintf@eexp+1)^080h,f
	movlw	0FFh
	addwf	(sprintf@eexp+1)^080h,f
	line	1233
	
l3560:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1233:    while(eexp > 0) {
	movf	(sprintf@eexp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u5655
	movlw	01h
	subwf	(sprintf@eexp)^080h,w
u5655:

	skipnc
	goto	u5651
	goto	u5650
u5651:
	goto	l3554
u5650:
	line	1237
	
l3562:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1237:    if(prec > (int)((sizeof dpowers/sizeof dpowers[0])-2))
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u5665
	movlw	09h
	subwf	(sprintf@prec)^080h,w
u5665:

	skipc
	goto	u5661
	goto	u5660
u5661:
	goto	l3566
u5660:
	line	1238
	
l3564:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1238:     c = (sizeof dpowers/sizeof dpowers[0])-2;
	movlw	low(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@c)^080h
	goto	l345
	line	1240
	
l3566:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1240:     c = (char)prec;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@c)^080h
	
l345:	
	line	1241
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1241:    prec -= (int)c;
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	clrf	(??_sprintf+0)^080h+0+1
	movf	0+(??_sprintf+0)^080h+0,w
	subwf	(sprintf@prec)^080h,f
	movf	1+(??_sprintf+0)^080h+0,w
	skipc
	decf	(sprintf@prec+1)^080h,f
	subwf	(sprintf@prec+1)^080h,f
	line	1245
	
l3568:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1245:    if(c)
	movf	((sprintf@c)^080h),w
	btfsc	status,2
	goto	u5671
	goto	u5670
u5671:
	goto	l3574
u5670:
	line	1247
	
l3570:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1247:     ((*sp++ = ('.')));
	movlw	low(02Eh)
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3572:	
	movlw	low(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	line	1253
	
l3574:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1253:    val = (unsigned long)(fval * scale((signed char)c));
	movf	(sprintf@c)^080h,w
	fcall	_scale
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$874+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$874+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$874+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$874)^080h

	
l3576:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1253:    val = (unsigned long)(fval * scale((signed char)c));
	movf	(_sprintf$874+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_sprintf$874+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_sprintf$874+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_sprintf$874)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@a)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@b)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(___fltol@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___fltol@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___fltol@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___fltol@f1)

	fcall	___fltol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fltol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fltol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fltol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fltol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@val)^080h

	line	1254
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1254:    while(c--) {
	goto	l3586
	line	1255
	
l3578:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1255:     tmpval.vd = val/dpowers[c];
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movlw	(02h)-1
u5685:
	clrc
	rlf	(??_sprintf+0)^080h+0,f
	addlw	-1
	skipz
	goto	u5685
	clrc
	rlf	(??_sprintf+0)^080h+0,w
	addlw	low((((_dpowers)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(___lldiv@divisor)
	fcall	stringdir
	movwf	(___lldiv@divisor+1)
	fcall	stringdir
	movwf	(___lldiv@divisor+2)
	fcall	stringdir
	movwf	(___lldiv@divisor+3)
	movf	(sprintf@val+3)^080h,w
	movwf	(___lldiv@dividend+3)
	movf	(sprintf@val+2)^080h,w
	movwf	(___lldiv@dividend+2)
	movf	(sprintf@val+1)^080h,w
	movwf	(___lldiv@dividend+1)
	movf	(sprintf@val)^080h,w
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@tmpval+3)^080h
	movf	(2+(?___lldiv)),w
	movwf	(sprintf@tmpval+2)^080h
	movf	(1+(?___lldiv)),w
	movwf	(sprintf@tmpval+1)^080h
	movf	(0+(?___lldiv)),w
	movwf	(sprintf@tmpval)^080h

	line	1256
	
l3580:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1256:     tmpval.vd %= 10;
	movlw	0
	movwf	(___llmod@divisor+3)
	movlw	0
	movwf	(___llmod@divisor+2)
	movlw	0
	movwf	(___llmod@divisor+1)
	movlw	0Ah
	movwf	(___llmod@divisor)

	movf	(sprintf@tmpval+3)^080h,w
	movwf	(___llmod@dividend+3)
	movf	(sprintf@tmpval+2)^080h,w
	movwf	(___llmod@dividend+2)
	movf	(sprintf@tmpval+1)^080h,w
	movwf	(___llmod@dividend+1)
	movf	(sprintf@tmpval)^080h,w
	movwf	(___llmod@dividend)

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@tmpval+3)^080h
	movf	(2+(?___llmod)),w
	movwf	(sprintf@tmpval+2)^080h
	movf	(1+(?___llmod)),w
	movwf	(sprintf@tmpval+1)^080h
	movf	(0+(?___llmod)),w
	movwf	(sprintf@tmpval)^080h

	line	1257
	
l3582:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1257:     ((*sp++ = ('0' + tmpval.vd)));
	movf	(sprintf@tmpval)^080h,w
	addlw	030h
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	movlw	low(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	line	1258
	
l3584:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1258:     val %= dpowers[c];
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movlw	(02h)-1
u5695:
	clrc
	rlf	(??_sprintf+0)^080h+0,f
	addlw	-1
	skipz
	goto	u5695
	clrc
	rlf	(??_sprintf+0)^080h+0,w
	addlw	low((((_dpowers)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(___llmod@divisor)
	fcall	stringdir
	movwf	(___llmod@divisor+1)
	fcall	stringdir
	movwf	(___llmod@divisor+2)
	fcall	stringdir
	movwf	(___llmod@divisor+3)
	movf	(sprintf@val+3)^080h,w
	movwf	(___llmod@dividend+3)
	movf	(sprintf@val+2)^080h,w
	movwf	(___llmod@dividend+2)
	movf	(sprintf@val+1)^080h,w
	movwf	(___llmod@dividend+1)
	movf	(sprintf@val)^080h,w
	movwf	(___llmod@dividend)

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@val+3)^080h
	movf	(2+(?___llmod)),w
	movwf	(sprintf@val+2)^080h
	movf	(1+(?___llmod)),w
	movwf	(sprintf@val+1)^080h
	movf	(0+(?___llmod)),w
	movwf	(sprintf@val)^080h

	line	1254
	
l3586:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1254:    while(c--) {
	movlw	01h
	subwf	(sprintf@c)^080h,f
		incf	(((sprintf@c)^080h)),w
	btfss	status,2
	goto	u5701
	goto	u5700
u5701:
	goto	l3578
u5700:
	goto	l3594
	line	1262
	
l3588:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1262:     ((*sp++ = ('0')));
	movlw	low(030h)
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3590:	
	movlw	low(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	line	1263
	
l3592:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1263:     prec--;
	movlw	0FFh
	addwf	(sprintf@prec)^080h,f
	skipnc
	incf	(sprintf@prec+1)^080h,f
	movlw	0FFh
	addwf	(sprintf@prec+1)^080h,f
	line	1261
	
l3594:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1261:    while(prec) {
	movf	((sprintf@prec)^080h),w
iorwf	((sprintf@prec+1)^080h),w
	btfss	status,2
	goto	u5711
	goto	u5710
u5711:
	goto	l3588
u5710:
	goto	l3614
	line	1316
	
l3596:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1316:   if(prec == 0 && val == 0)
	movf	((sprintf@prec)^080h),w
iorwf	((sprintf@prec+1)^080h),w
	btfss	status,2
	goto	u5721
	goto	u5720
u5721:
	goto	l353
u5720:
	
l3598:	
	movf	(sprintf@val+3)^080h,w
	iorwf	(sprintf@val+2)^080h,w
	iorwf	(sprintf@val+1)^080h,w
	iorwf	(sprintf@val)^080h,w
	skipz
	goto	u5731
	goto	u5730
u5731:
	goto	l353
u5730:
	line	1317
	
l3600:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1317:    prec++;
	movlw	01h
	addwf	(sprintf@prec)^080h,f
	skipnc
	incf	(sprintf@prec+1)^080h,f
	movlw	0
	addwf	(sprintf@prec+1)^080h,f
	
l353:	
	line	1365
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1365:   if(c < prec)
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u5745
	movf	(sprintf@prec)^080h,w
	subwf	(sprintf@c)^080h,w
u5745:

	skipnc
	goto	u5741
	goto	u5740
u5741:
	goto	l3604
u5740:
	line	1366
	
l3602:	
	goto	l3608
	line	1367
	
l3604:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	(??_sprintf+0)^080h+0
	movlw	80h
	subwf	(??_sprintf+0)^080h+0,w
	skipz
	goto	u5755
	movf	(sprintf@c)^080h,w
	subwf	(sprintf@prec)^080h,w
u5755:

	skipnc
	goto	u5751
	goto	u5750
u5751:
	goto	l3608
u5750:
	line	1368
	
l3606:	
	line	1464
	
l3608:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1448:   {;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1464:    if(flag & 0x03)
	movlw	03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(sprintf@flag)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movlw	0
	andwf	(sprintf@flag+1)^080h,w
	movwf	1+(??_sprintf+0)^080h+0
	movf	((??_sprintf+0)^080h+0),w
iorwf	((??_sprintf+0)^080h+1),w
	btfsc	status,2
	goto	u5761
	goto	u5760
u5761:
	goto	l3614
u5760:
	line	1465
	
l3610:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1465:     ((*sp++ = ('-')));
	movlw	low(02Dh)
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	goto	l3426
	line	553
	
l3614:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 553:  while((c = *f++)) {
	movlw	01h
	addwf	(sprintf@f)^080h,f
	movlw	-01h
	addwf	(sprintf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@c)^080h
	movf	(((sprintf@c)^080h)),w
	btfss	status,2
	goto	u5771
	goto	u5770
u5771:
	goto	l3422
u5770:
	line	1564
	
l3616:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 1564:  *sp = 0;
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	clrf	indf
	line	1567
	
l359:	
	return
	callstack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	_scale

;; *************** function _scale *****************
;; Defined at:
;;		line 433 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  scl             1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  scl             1   50[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  4   32[BANK0 ] char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0      10       0       0       0
;;      Totals:         0      19       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___flmul
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=1
	line	433
global __ptext2
__ptext2:	;psect for function _scale
psect	text2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c"
	line	433
	
_scale:	
;incstack = 0
	callstack 4
; Regs used in _scale: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;scale@scl stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(scale@scl)
	line	436
	
l2974:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 433: scale(signed char scl);C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 434: {;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 436:  if(scl < 0) {
	btfss	(scale@scl),7
	goto	u4361
	goto	u4360
u4361:
	goto	l2996
u4360:
	line	437
	
l2976:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 437:   scl = -scl;
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	438
	
l2978:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 438:   if(scl>=110)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u4371
	goto	u4370
u4371:
	goto	l2986
u4370:
	line	439
	
l2980:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 439:    return _npowers_[(unsigned char)(scl/100+18)] * _npowers_[(unsigned char)((scl%100)/10+9)] * _npowers_[(unsigned char)(scl%10)];
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	064h
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	(___awdiv@dividend+1)
	movf	(0+(?___awmod)),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_scale+0)+0
	movlw	(02h)-1
u4385:
	clrc
	rlf	(??_scale+0)+0,f
	addlw	-1
	skipz
	goto	u4385
	clrc
	rlf	(??_scale+0)+0,w
	addlw	low((((__npowers_)-__stringbase)|8000h)+024h)
	movwf	fsr0
	fcall	stringdir
	movwf	((??_scale+1)+0)
	fcall	stringdir
	movwf	((??_scale+1)+0+1)
	fcall	stringdir
	movwf	((??_scale+1)+0+2)
	fcall	stringdir
	movwf	((??_scale+1)+0+3)
	movf	3+(??_scale+1)+0,w
	movwf	(___flmul@b+3)
	movf	2+(??_scale+1)+0,w
	movwf	(___flmul@b+2)
	movf	1+(??_scale+1)+0,w
	movwf	(___flmul@b+1)
	movf	0+(??_scale+1)+0,w
	movwf	(___flmul@b)

	movlw	064h
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	btfsc	(___awdiv@dividend),7
	decf	(___awdiv@dividend+1),f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_scale+5)+0
	movlw	(02h)-1
u4395:
	clrc
	rlf	(??_scale+5)+0,f
	addlw	-1
	skipz
	goto	u4395
	clrc
	rlf	(??_scale+5)+0,w
	addlw	low((((__npowers_)-__stringbase)|8000h)+048h)
	movwf	fsr0
	fcall	stringdir
	movwf	((??_scale+6)+0)
	fcall	stringdir
	movwf	((??_scale+6)+0+1)
	fcall	stringdir
	movwf	((??_scale+6)+0+2)
	fcall	stringdir
	movwf	((??_scale+6)+0+3)
	movf	3+(??_scale+6)+0,w
	movwf	(___flmul@a+3)
	movf	2+(??_scale+6)+0,w
	movwf	(___flmul@a+2)
	movf	1+(??_scale+6)+0,w
	movwf	(___flmul@a+1)
	movf	0+(??_scale+6)+0,w
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(_scale$873+3)
	movf	(2+(?___flmul)),w
	movwf	(_scale$873+2)
	movf	(1+(?___flmul)),w
	movwf	(_scale$873+1)
	movf	(0+(?___flmul)),w
	movwf	(_scale$873)

;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 439:    return _npowers_[(unsigned char)(scl/100+18)] * _npowers_[(unsigned char)((scl%100)/10+9)] * _npowers_[(unsigned char)(scl%10)];
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	fcall	___awmod
	movf	(0+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_scale+0)+0
	movlw	(02h)-1
u4405:
	clrc
	rlf	(??_scale+0)+0,f
	addlw	-1
	skipz
	goto	u4405
	clrc
	rlf	(??_scale+0)+0,w
	addlw	low((((__npowers_)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_scale+1)+0)
	fcall	stringdir
	movwf	((??_scale+1)+0+1)
	fcall	stringdir
	movwf	((??_scale+1)+0+2)
	fcall	stringdir
	movwf	((??_scale+1)+0+3)
	movf	3+(??_scale+1)+0,w
	movwf	(___flmul@b+3)
	movf	2+(??_scale+1)+0,w
	movwf	(___flmul@b+2)
	movf	1+(??_scale+1)+0,w
	movwf	(___flmul@b+1)
	movf	0+(??_scale+1)+0,w
	movwf	(___flmul@b)

	movf	(_scale$873+3),w
	movwf	(___flmul@a+3)
	movf	(_scale$873+2),w
	movwf	(___flmul@a+2)
	movf	(_scale$873+1),w
	movwf	(___flmul@a+1)
	movf	(_scale$873),w
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(?_scale+3)
	movf	(2+(?___flmul)),w
	movwf	(?_scale+2)
	movf	(1+(?___flmul)),w
	movwf	(?_scale+1)
	movf	(0+(?___flmul)),w
	movwf	(?_scale)

	goto	l293
	line	440
	
l2986:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u4411
	goto	u4410
u4411:
	goto	l2992
u4410:
	line	441
	
l2988:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 441:    return _npowers_[(unsigned char)(scl/10+9)] * _npowers_[(unsigned char)(scl%10)];
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	fcall	___awmod
	movf	(0+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_scale+0)+0
	movlw	(02h)-1
u4425:
	clrc
	rlf	(??_scale+0)+0,f
	addlw	-1
	skipz
	goto	u4425
	clrc
	rlf	(??_scale+0)+0,w
	addlw	low((((__npowers_)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_scale+1)+0)
	fcall	stringdir
	movwf	((??_scale+1)+0+1)
	fcall	stringdir
	movwf	((??_scale+1)+0+2)
	fcall	stringdir
	movwf	((??_scale+1)+0+3)
	movf	3+(??_scale+1)+0,w
	movwf	(___flmul@b+3)
	movf	2+(??_scale+1)+0,w
	movwf	(___flmul@b+2)
	movf	1+(??_scale+1)+0,w
	movwf	(___flmul@b+1)
	movf	0+(??_scale+1)+0,w
	movwf	(___flmul@b)

	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	btfsc	(___awdiv@dividend),7
	decf	(___awdiv@dividend+1),f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_scale+5)+0
	movlw	(02h)-1
u4435:
	clrc
	rlf	(??_scale+5)+0,f
	addlw	-1
	skipz
	goto	u4435
	clrc
	rlf	(??_scale+5)+0,w
	addlw	low((((__npowers_)-__stringbase)|8000h)+024h)
	movwf	fsr0
	fcall	stringdir
	movwf	((??_scale+6)+0)
	fcall	stringdir
	movwf	((??_scale+6)+0+1)
	fcall	stringdir
	movwf	((??_scale+6)+0+2)
	fcall	stringdir
	movwf	((??_scale+6)+0+3)
	movf	3+(??_scale+6)+0,w
	movwf	(___flmul@a+3)
	movf	2+(??_scale+6)+0,w
	movwf	(___flmul@a+2)
	movf	1+(??_scale+6)+0,w
	movwf	(___flmul@a+1)
	movf	0+(??_scale+6)+0,w
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(?_scale+3)
	movf	(2+(?___flmul)),w
	movwf	(?_scale+2)
	movf	(1+(?___flmul)),w
	movwf	(?_scale+1)
	movf	(0+(?___flmul)),w
	movwf	(?_scale)

	goto	l293
	line	442
	
l2992:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 442:   return _npowers_[(unsigned char)scl];
	movf	(scale@scl),w
	movwf	(??_scale+0)+0
	movlw	(02h)-1
u4445:
	clrc
	rlf	(??_scale+0)+0,f
	addlw	-1
	skipz
	goto	u4445
	clrc
	rlf	(??_scale+0)+0,w
	addlw	low((((__npowers_)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_scale+1)+0)
	fcall	stringdir
	movwf	((??_scale+1)+0+1)
	fcall	stringdir
	movwf	((??_scale+1)+0+2)
	fcall	stringdir
	movwf	((??_scale+1)+0+3)
	movf	3+(??_scale+1)+0,w
	movwf	(?_scale+3)
	movf	2+(??_scale+1)+0,w
	movwf	(?_scale+2)
	movf	1+(??_scale+1)+0,w
	movwf	(?_scale+1)
	movf	0+(??_scale+1)+0,w
	movwf	(?_scale)

	goto	l293
	line	444
	
l2996:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 444:  if(scl>=110)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u4451
	goto	u4450
u4451:
	goto	l3004
u4450:
	line	445
	
l2998:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 445:   return _powers_[(unsigned char)(scl/100+18)] * _powers_[(unsigned char)((scl%100)/10+9)] * _powers_[(unsigned char)(scl%10)];
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	064h
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	(___awdiv@dividend+1)
	movf	(0+(?___awmod)),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_scale+0)+0
	movlw	(02h)-1
u4465:
	clrc
	rlf	(??_scale+0)+0,f
	addlw	-1
	skipz
	goto	u4465
	clrc
	rlf	(??_scale+0)+0,w
	addlw	low((((__powers_)-__stringbase)|8000h)+024h)
	movwf	fsr0
	fcall	stringdir
	movwf	((??_scale+1)+0)
	fcall	stringdir
	movwf	((??_scale+1)+0+1)
	fcall	stringdir
	movwf	((??_scale+1)+0+2)
	fcall	stringdir
	movwf	((??_scale+1)+0+3)
	movf	3+(??_scale+1)+0,w
	movwf	(___flmul@b+3)
	movf	2+(??_scale+1)+0,w
	movwf	(___flmul@b+2)
	movf	1+(??_scale+1)+0,w
	movwf	(___flmul@b+1)
	movf	0+(??_scale+1)+0,w
	movwf	(___flmul@b)

	movlw	064h
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	btfsc	(___awdiv@dividend),7
	decf	(___awdiv@dividend+1),f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_scale+5)+0
	movlw	(02h)-1
u4475:
	clrc
	rlf	(??_scale+5)+0,f
	addlw	-1
	skipz
	goto	u4475
	clrc
	rlf	(??_scale+5)+0,w
	addlw	low((((__powers_)-__stringbase)|8000h)+048h)
	movwf	fsr0
	fcall	stringdir
	movwf	((??_scale+6)+0)
	fcall	stringdir
	movwf	((??_scale+6)+0+1)
	fcall	stringdir
	movwf	((??_scale+6)+0+2)
	fcall	stringdir
	movwf	((??_scale+6)+0+3)
	movf	3+(??_scale+6)+0,w
	movwf	(___flmul@a+3)
	movf	2+(??_scale+6)+0,w
	movwf	(___flmul@a+2)
	movf	1+(??_scale+6)+0,w
	movwf	(___flmul@a+1)
	movf	0+(??_scale+6)+0,w
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(_scale$873+3)
	movf	(2+(?___flmul)),w
	movwf	(_scale$873+2)
	movf	(1+(?___flmul)),w
	movwf	(_scale$873+1)
	movf	(0+(?___flmul)),w
	movwf	(_scale$873)

;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 445:   return _powers_[(unsigned char)(scl/100+18)] * _powers_[(unsigned char)((scl%100)/10+9)] * _powers_[(unsigned char)(scl%10)];
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	fcall	___awmod
	movf	(0+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_scale+0)+0
	movlw	(02h)-1
u4485:
	clrc
	rlf	(??_scale+0)+0,f
	addlw	-1
	skipz
	goto	u4485
	clrc
	rlf	(??_scale+0)+0,w
	addlw	low((((__powers_)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_scale+1)+0)
	fcall	stringdir
	movwf	((??_scale+1)+0+1)
	fcall	stringdir
	movwf	((??_scale+1)+0+2)
	fcall	stringdir
	movwf	((??_scale+1)+0+3)
	movf	3+(??_scale+1)+0,w
	movwf	(___flmul@b+3)
	movf	2+(??_scale+1)+0,w
	movwf	(___flmul@b+2)
	movf	1+(??_scale+1)+0,w
	movwf	(___flmul@b+1)
	movf	0+(??_scale+1)+0,w
	movwf	(___flmul@b)

	movf	(_scale$873+3),w
	movwf	(___flmul@a+3)
	movf	(_scale$873+2),w
	movwf	(___flmul@a+2)
	movf	(_scale$873+1),w
	movwf	(___flmul@a+1)
	movf	(_scale$873),w
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(?_scale+3)
	movf	(2+(?___flmul)),w
	movwf	(?_scale+2)
	movf	(1+(?___flmul)),w
	movwf	(?_scale+1)
	movf	(0+(?___flmul)),w
	movwf	(?_scale)

	goto	l293
	line	446
	
l3004:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u4491
	goto	u4490
u4491:
	goto	l3010
u4490:
	line	447
	
l3006:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 447:   return _powers_[(unsigned char)(scl/10+9)] * _powers_[(unsigned char)(scl%10)];
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	fcall	___awmod
	movf	(0+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_scale+0)+0
	movlw	(02h)-1
u4505:
	clrc
	rlf	(??_scale+0)+0,f
	addlw	-1
	skipz
	goto	u4505
	clrc
	rlf	(??_scale+0)+0,w
	addlw	low((((__powers_)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_scale+1)+0)
	fcall	stringdir
	movwf	((??_scale+1)+0+1)
	fcall	stringdir
	movwf	((??_scale+1)+0+2)
	fcall	stringdir
	movwf	((??_scale+1)+0+3)
	movf	3+(??_scale+1)+0,w
	movwf	(___flmul@b+3)
	movf	2+(??_scale+1)+0,w
	movwf	(___flmul@b+2)
	movf	1+(??_scale+1)+0,w
	movwf	(___flmul@b+1)
	movf	0+(??_scale+1)+0,w
	movwf	(___flmul@b)

	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	btfsc	(___awdiv@dividend),7
	decf	(___awdiv@dividend+1),f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_scale+5)+0
	movlw	(02h)-1
u4515:
	clrc
	rlf	(??_scale+5)+0,f
	addlw	-1
	skipz
	goto	u4515
	clrc
	rlf	(??_scale+5)+0,w
	addlw	low((((__powers_)-__stringbase)|8000h)+024h)
	movwf	fsr0
	fcall	stringdir
	movwf	((??_scale+6)+0)
	fcall	stringdir
	movwf	((??_scale+6)+0+1)
	fcall	stringdir
	movwf	((??_scale+6)+0+2)
	fcall	stringdir
	movwf	((??_scale+6)+0+3)
	movf	3+(??_scale+6)+0,w
	movwf	(___flmul@a+3)
	movf	2+(??_scale+6)+0,w
	movwf	(___flmul@a+2)
	movf	1+(??_scale+6)+0,w
	movwf	(___flmul@a+1)
	movf	0+(??_scale+6)+0,w
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(?_scale+3)
	movf	(2+(?___flmul)),w
	movwf	(?_scale+2)
	movf	(1+(?___flmul)),w
	movwf	(?_scale+1)
	movf	(0+(?___flmul)),w
	movwf	(?_scale)

	goto	l293
	line	448
	
l3010:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 448:  return _powers_[(unsigned char)scl];
	movf	(scale@scl),w
	movwf	(??_scale+0)+0
	movlw	(02h)-1
u4525:
	clrc
	rlf	(??_scale+0)+0,f
	addlw	-1
	skipz
	goto	u4525
	clrc
	rlf	(??_scale+0)+0,w
	addlw	low((((__powers_)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_scale+1)+0)
	fcall	stringdir
	movwf	((??_scale+1)+0+1)
	fcall	stringdir
	movwf	((??_scale+1)+0+2)
	fcall	stringdir
	movwf	((??_scale+1)+0+3)
	movf	3+(??_scale+1)+0,w
	movwf	(?_scale+3)
	movf	2+(??_scale+1)+0,w
	movwf	(?_scale+2)
	movf	1+(??_scale+1)+0,w
	movwf	(?_scale+1)
	movf	0+(??_scale+1)+0,w
	movwf	(?_scale)

	line	449
	
l293:	
	return
	callstack 0
GLOBAL	__end_of_scale
	__end_of_scale:
	signat	_scale,4220
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\awmod.c"
	line	5
global __ptext3
__ptext3:	;psect for function ___awmod
psect	text3
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\awmod.c"
	line	5
	
___awmod:	
;incstack = 0
	callstack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	12
	
l2500:	
	clrf	(___awmod@sign)
	line	13
	
l2502:	
	btfss	(___awmod@dividend+1),7
	goto	u3201
	goto	u3200
u3201:
	goto	l2508
u3200:
	line	14
	
l2504:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	15
	
l2506:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	17
	
l2508:	
	btfss	(___awmod@divisor+1),7
	goto	u3211
	goto	u3210
u3211:
	goto	l2512
u3210:
	line	18
	
l2510:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	19
	
l2512:	
	movf	((___awmod@divisor)),w
iorwf	((___awmod@divisor+1)),w
	btfsc	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l2530
u3220:
	line	20
	
l2514:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	21
	goto	l2520
	line	22
	
l2516:	
	movlw	01h
	
u3235:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3235
	line	23
	
l2518:	
	movlw	low(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	21
	
l2520:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l2516
u3240:
	line	26
	
l2522:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3255
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3255:
	skipc
	goto	u3251
	goto	u3250
u3251:
	goto	l2526
u3250:
	line	27
	
l2524:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	28
	
l2526:	
	movlw	01h
	
u3265:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3265
	line	29
	
l2528:	
	movlw	01h
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3271
	goto	u3270
u3271:
	goto	l2522
u3270:
	line	31
	
l2530:	
	movf	((___awmod@sign)),w
	btfsc	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l2534
u3280:
	line	32
	
l2532:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	33
	
l2534:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	34
	
l529:	
	return
	callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[COMMON] int 
;;  dividend        2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] int 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       4       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\awdiv.c"
	line	5
global __ptext4
__ptext4:	;psect for function ___awdiv
psect	text4
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\awdiv.c"
	line	5
	
___awdiv:	
;incstack = 0
	callstack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	13
	
l2456:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	14
	
l2458:	
	btfss	(___awdiv@divisor+1),7
	goto	u3101
	goto	u3100
u3101:
	goto	l2464
u3100:
	line	15
	
l2460:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	16
	
l2462:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	18
	
l2464:	
	btfss	(___awdiv@dividend+1),7
	goto	u3111
	goto	u3110
u3111:
	goto	l2470
u3110:
	line	19
	
l2466:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	20
	
l2468:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	22
	
l2470:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	23
	
l2472:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l2492
u3120:
	line	24
	
l2474:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	25
	goto	l2480
	line	26
	
l2476:	
	movlw	01h
	
u3135:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3135
	line	27
	
l2478:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	25
	
l2480:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l2476
u3140:
	line	30
	
l2482:	
	movlw	01h
	
u3155:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3155
	line	31
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3165
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3165:
	skipc
	goto	u3161
	goto	u3160
u3161:
	goto	l2488
u3160:
	line	32
	
l2484:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	33
	
l2486:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	35
	
l2488:	
	movlw	01h
	
u3175:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3175
	line	36
	
l2490:	
	movlw	01h
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3181
	goto	u3180
u3181:
	goto	l2482
u3180:
	line	38
	
l2492:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u3191
	goto	u3190
u3191:
	goto	l2496
u3190:
	line	39
	
l2494:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	40
	
l2496:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	41
	
l516:	
	return
	callstack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_isdigit

;; *************** function _isdigit *****************
;; Defined at:
;;		line 8 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\isdigit.c"
	line	8
global __ptext5
__ptext5:	;psect for function _isdigit
psect	text5
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\isdigit.c"
	line	8
	
_isdigit:	
;incstack = 0
	callstack 6
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l3014:	
	clrf	(_isdigit$684)
	
l3016:	
	movlw	low(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u4531
	goto	u4530
u4531:
	goto	l3022
u4530:
	
l3018:	
	movlw	low(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u4541
	goto	u4540
u4541:
	goto	l3022
u4540:
	
l3020:	
	clrf	(_isdigit$684)
	incf	(_isdigit$684),f
	
l3022:	
	rrf	(_isdigit$684),w
	
	line	15
	
l850:	
	return
	callstack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
	signat	_isdigit,4216
	global	_fround

;; *************** function _fround *****************
;; Defined at:
;;		line 417 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  prec            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prec            1   51[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   32[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          0       7       0       0       0
;;      Totals:         0      20       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___flmul
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c"
	line	417
global __ptext6
__ptext6:	;psect for function _fround
psect	text6
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c"
	line	417
	
_fround:	
;incstack = 0
	callstack 4
; Regs used in _fround: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;fround@prec stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(fround@prec)
	line	421
	
l2956:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 417: fround(unsigned char prec);C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 418: {;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 421:  if(prec>=110)
	movlw	low(06Eh)
	subwf	(fround@prec),w
	skipc
	goto	u4281
	goto	u4280
u4281:
	goto	l2964
u4280:
	line	422
	
l2958:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 422:   return 0.5 * _npowers_[prec/100U+18U] * _npowers_[(prec%100U)/10U+9U] * _npowers_[prec%10U];
	movlw	0x3f
	movwf	(___flmul@b+3)
	movlw	0x0
	movwf	(___flmul@b+2)
	movlw	0x0
	movwf	(___flmul@b+1)
	movlw	0x0
	movwf	(___flmul@b)

	movlw	064h
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	movf	(fround@prec),w
	movwf	(??_fround+0)+0
	clrf	(??_fround+0)+0+1
	movf	0+(??_fround+0)+0,w
	movwf	(___lwdiv@dividend)
	movf	1+(??_fround+0)+0,w
	movwf	(___lwdiv@dividend+1)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_fround+2)+0
	movlw	(02h)-1
u4295:
	clrc
	rlf	(??_fround+2)+0,f
	addlw	-1
	skipz
	goto	u4295
	clrc
	rlf	(??_fround+2)+0,w
	addlw	low((((__npowers_)-__stringbase)|8000h)+048h)
	movwf	fsr0
	fcall	stringdir
	movwf	((??_fround+3)+0)
	fcall	stringdir
	movwf	((??_fround+3)+0+1)
	fcall	stringdir
	movwf	((??_fround+3)+0+2)
	fcall	stringdir
	movwf	((??_fround+3)+0+3)
	movf	3+(??_fround+3)+0,w
	movwf	(___flmul@a+3)
	movf	2+(??_fround+3)+0,w
	movwf	(___flmul@a+2)
	movf	1+(??_fround+3)+0,w
	movwf	(___flmul@a+1)
	movf	0+(??_fround+3)+0,w
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(_fround$871+3)
	movf	(2+(?___flmul)),w
	movwf	(_fround$871+2)
	movf	(1+(?___flmul)),w
	movwf	(_fround$871+1)
	movf	(0+(?___flmul)),w
	movwf	(_fround$871)

;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 422:   return 0.5 * _npowers_[prec/100U+18U] * _npowers_[(prec%100U)/10U+9U] * _npowers_[prec%10U];
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	movf	(fround@prec),w
	movwf	(??_fround+0)+0
	clrf	(??_fround+0)+0+1
	movf	0+(??_fround+0)+0,w
	movwf	(___lwmod@dividend)
	movf	1+(??_fround+0)+0,w
	movwf	(___lwmod@dividend+1)
	movlw	064h
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	movwf	(___lwdiv@dividend+1)
	movf	(0+(?___lwmod)),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_fround+2)+0
	movlw	(02h)-1
u4305:
	clrc
	rlf	(??_fround+2)+0,f
	addlw	-1
	skipz
	goto	u4305
	clrc
	rlf	(??_fround+2)+0,w
	addlw	low((((__npowers_)-__stringbase)|8000h)+024h)
	movwf	fsr0
	fcall	stringdir
	movwf	((??_fround+3)+0)
	fcall	stringdir
	movwf	((??_fround+3)+0+1)
	fcall	stringdir
	movwf	((??_fround+3)+0+2)
	fcall	stringdir
	movwf	((??_fround+3)+0+3)
	movf	3+(??_fround+3)+0,w
	movwf	(___flmul@b+3)
	movf	2+(??_fround+3)+0,w
	movwf	(___flmul@b+2)
	movf	1+(??_fround+3)+0,w
	movwf	(___flmul@b+1)
	movf	0+(??_fround+3)+0,w
	movwf	(___flmul@b)

	movf	(_fround$871+3),w
	movwf	(___flmul@a+3)
	movf	(_fround$871+2),w
	movwf	(___flmul@a+2)
	movf	(_fround$871+1),w
	movwf	(___flmul@a+1)
	movf	(_fround$871),w
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(_fround$872+3)
	movf	(2+(?___flmul)),w
	movwf	(_fround$872+2)
	movf	(1+(?___flmul)),w
	movwf	(_fround$872+1)
	movf	(0+(?___flmul)),w
	movwf	(_fround$872)

;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 422:   return 0.5 * _npowers_[prec/100U+18U] * _npowers_[(prec%100U)/10U+9U] * _npowers_[prec%10U];
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(fround@prec),w
	movwf	(??_fround+0)+0
	clrf	(??_fround+0)+0+1
	movf	0+(??_fround+0)+0,w
	movwf	(___lwmod@dividend)
	movf	1+(??_fround+0)+0,w
	movwf	(___lwmod@dividend+1)
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_fround+2)+0
	movlw	(02h)-1
u4315:
	clrc
	rlf	(??_fround+2)+0,f
	addlw	-1
	skipz
	goto	u4315
	clrc
	rlf	(??_fround+2)+0,w
	addlw	low((((__npowers_)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_fround+3)+0)
	fcall	stringdir
	movwf	((??_fround+3)+0+1)
	fcall	stringdir
	movwf	((??_fround+3)+0+2)
	fcall	stringdir
	movwf	((??_fround+3)+0+3)
	movf	3+(??_fround+3)+0,w
	movwf	(___flmul@b+3)
	movf	2+(??_fround+3)+0,w
	movwf	(___flmul@b+2)
	movf	1+(??_fround+3)+0,w
	movwf	(___flmul@b+1)
	movf	0+(??_fround+3)+0,w
	movwf	(___flmul@b)

	movf	(_fround$872+3),w
	movwf	(___flmul@a+3)
	movf	(_fround$872+2),w
	movwf	(___flmul@a+2)
	movf	(_fround$872+1),w
	movwf	(___flmul@a+1)
	movf	(_fround$872),w
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(?_fround+3)
	movf	(2+(?___flmul)),w
	movwf	(?_fround+2)
	movf	(1+(?___flmul)),w
	movwf	(?_fround+1)
	movf	(0+(?___flmul)),w
	movwf	(?_fround)

	goto	l286
	line	423
	
l2964:	
	movlw	low(0Bh)
	subwf	(fround@prec),w
	skipc
	goto	u4321
	goto	u4320
u4321:
	goto	l2970
u4320:
	line	424
	
l2966:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 424:   return 0.5 * _npowers_[prec/10U+9U] * _npowers_[prec%10U];
	movlw	0x3f
	movwf	(___flmul@b+3)
	movlw	0x0
	movwf	(___flmul@b+2)
	movlw	0x0
	movwf	(___flmul@b+1)
	movlw	0x0
	movwf	(___flmul@b)

	movlw	0Ah
	movwf	(___lwdiv@divisor)
	movlw	0
	movwf	((___lwdiv@divisor))+1
	movf	(fround@prec),w
	movwf	(??_fround+0)+0
	clrf	(??_fround+0)+0+1
	movf	0+(??_fround+0)+0,w
	movwf	(___lwdiv@dividend)
	movf	1+(??_fround+0)+0,w
	movwf	(___lwdiv@dividend+1)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_fround+2)+0
	movlw	(02h)-1
u4335:
	clrc
	rlf	(??_fround+2)+0,f
	addlw	-1
	skipz
	goto	u4335
	clrc
	rlf	(??_fround+2)+0,w
	addlw	low((((__npowers_)-__stringbase)|8000h)+024h)
	movwf	fsr0
	fcall	stringdir
	movwf	((??_fround+3)+0)
	fcall	stringdir
	movwf	((??_fround+3)+0+1)
	fcall	stringdir
	movwf	((??_fround+3)+0+2)
	fcall	stringdir
	movwf	((??_fround+3)+0+3)
	movf	3+(??_fround+3)+0,w
	movwf	(___flmul@a+3)
	movf	2+(??_fround+3)+0,w
	movwf	(___flmul@a+2)
	movf	1+(??_fround+3)+0,w
	movwf	(___flmul@a+1)
	movf	0+(??_fround+3)+0,w
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(_fround$871+3)
	movf	(2+(?___flmul)),w
	movwf	(_fround$871+2)
	movf	(1+(?___flmul)),w
	movwf	(_fround$871+1)
	movf	(0+(?___flmul)),w
	movwf	(_fround$871)

;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 424:   return 0.5 * _npowers_[prec/10U+9U] * _npowers_[prec%10U];
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(fround@prec),w
	movwf	(??_fround+0)+0
	clrf	(??_fround+0)+0+1
	movf	0+(??_fround+0)+0,w
	movwf	(___lwmod@dividend)
	movf	1+(??_fround+0)+0,w
	movwf	(___lwmod@dividend+1)
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_fround+2)+0
	movlw	(02h)-1
u4345:
	clrc
	rlf	(??_fround+2)+0,f
	addlw	-1
	skipz
	goto	u4345
	clrc
	rlf	(??_fround+2)+0,w
	addlw	low((((__npowers_)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_fround+3)+0)
	fcall	stringdir
	movwf	((??_fround+3)+0+1)
	fcall	stringdir
	movwf	((??_fround+3)+0+2)
	fcall	stringdir
	movwf	((??_fround+3)+0+3)
	movf	3+(??_fround+3)+0,w
	movwf	(___flmul@b+3)
	movf	2+(??_fround+3)+0,w
	movwf	(___flmul@b+2)
	movf	1+(??_fround+3)+0,w
	movwf	(___flmul@b+1)
	movf	0+(??_fround+3)+0,w
	movwf	(___flmul@b)

	movf	(_fround$871+3),w
	movwf	(___flmul@a+3)
	movf	(_fround$871+2),w
	movwf	(___flmul@a+2)
	movf	(_fround$871+1),w
	movwf	(___flmul@a+1)
	movf	(_fround$871),w
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(?_fround+3)
	movf	(2+(?___flmul)),w
	movwf	(?_fround+2)
	movf	(1+(?___flmul)),w
	movwf	(?_fround+1)
	movf	(0+(?___flmul)),w
	movwf	(?_fround)

	goto	l286
	line	425
	
l2970:	
;C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\doprnt.c: 425:  return 0.5 * _npowers_[prec];
	movlw	0x3f
	movwf	(___flmul@b+3)
	movlw	0x0
	movwf	(___flmul@b+2)
	movlw	0x0
	movwf	(___flmul@b+1)
	movlw	0x0
	movwf	(___flmul@b)

	movf	(fround@prec),w
	movwf	(??_fround+0)+0
	movlw	(02h)-1
u4355:
	clrc
	rlf	(??_fround+0)+0,f
	addlw	-1
	skipz
	goto	u4355
	clrc
	rlf	(??_fround+0)+0,w
	addlw	low((((__npowers_)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_fround+1)+0)
	fcall	stringdir
	movwf	((??_fround+1)+0+1)
	fcall	stringdir
	movwf	((??_fround+1)+0+2)
	fcall	stringdir
	movwf	((??_fround+1)+0+3)
	movf	3+(??_fround+1)+0,w
	movwf	(___flmul@a+3)
	movf	2+(??_fround+1)+0,w
	movwf	(___flmul@a+2)
	movf	1+(??_fround+1)+0,w
	movwf	(___flmul@a+1)
	movf	0+(??_fround+1)+0,w
	movwf	(___flmul@a)

	fcall	___flmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___flmul)),w
	movwf	(?_fround+3)
	movf	(2+(?___flmul)),w
	movwf	(?_fround+2)
	movf	(1+(?___flmul)),w
	movwf	(?_fround+1)
	movf	(0+(?___flmul)),w
	movwf	(?_fround)

	line	426
	
l286:	
	return
	callstack 0
GLOBAL	__end_of_fround
	__end_of_fround:
	signat	_fround,4220
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\lwmod.c"
	line	5
global __ptext7
__ptext7:	;psect for function ___lwmod
psect	text7
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\lwmod.c"
	line	5
	
___lwmod:	
;incstack = 0
	callstack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	12
	
l2564:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u3361
	goto	u3360
u3361:
	goto	l2582
u3360:
	line	13
	
l2566:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	14
	goto	l2572
	line	15
	
l2568:	
	movlw	01h
	
u3375:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3375
	line	16
	
l2570:	
	movlw	low(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	line	14
	
l2572:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3381
	goto	u3380
u3381:
	goto	l2568
u3380:
	line	19
	
l2574:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3395
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3395:
	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l2578
u3390:
	line	20
	
l2576:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	21
	
l2578:	
	movlw	01h
	
u3405:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u3405
	line	22
	
l2580:	
	movlw	01h
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u3411
	goto	u3410
u3411:
	goto	l2574
u3410:
	line	24
	
l2582:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	25
	
l679:	
	return
	callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[COMMON] unsigned int 
;;  dividend        2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   11[COMMON] unsigned int 
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\lwdiv.c"
	line	5
global __ptext8
__ptext8:	;psect for function ___lwdiv
psect	text8
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\lwdiv.c"
	line	5
	
___lwdiv:	
;incstack = 0
	callstack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	13
	
l2538:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	14
	
l2540:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l2560
u3290:
	line	15
	
l2542:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	16
	goto	l2548
	line	17
	
l2544:	
	movlw	01h
	
u3305:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3305
	line	18
	
l2546:	
	movlw	low(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	line	16
	
l2548:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l2544
u3310:
	line	21
	
l2550:	
	movlw	01h
	
u3325:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3325
	line	22
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3335
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3335:
	skipc
	goto	u3331
	goto	u3330
u3331:
	goto	l2556
u3330:
	line	23
	
l2552:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	24
	
l2554:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	26
	
l2556:	
	movlw	01h
	
u3345:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u3345
	line	27
	
l2558:	
	movlw	01h
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l2550
u3350:
	line	29
	
l2560:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	30
	
l669:	
	return
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	___flmul

;; *************** function ___flmul *****************
;; Defined at:
;;		line 8 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\sprcmul.c"
;; Parameters:    Size  Location     Type
;;  b               4    6[BANK0 ] unsigned int 
;;  a               4   10[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  prod            4   26[BANK0 ] struct .
;;  grs             4   20[BANK0 ] unsigned long 
;;  temp            2   30[BANK0 ] struct .
;;  bexp            1   25[BANK0 ] unsigned char 
;;  aexp            1   24[BANK0 ] unsigned char 
;;  sign            1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    6[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0      13       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0      26       0       0       0
;;Total ram usage:       26 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		__Umul8_16
;; This function is called by:
;;		_main
;;		_fround
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\sprcmul.c"
	line	8
global __ptext9
__ptext9:	;psect for function ___flmul
psect	text9
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\sprcmul.c"
	line	8
	
___flmul:	
;incstack = 0
	callstack 4
; Regs used in ___flmul: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	17
	
l2780:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(___flmul@b)+03h,w
	andlw	080h
	movwf	(??___flmul+0)+0
	movf	(??___flmul+0)+0,w
	movwf	(___flmul@sign)
	line	18
	
l2782:	
	movf	0+(___flmul@b)+03h,w
	movwf	(??___flmul+0)+0
	addwf	(??___flmul+0)+0,w
	movwf	(??___flmul+1)+0
	movf	(??___flmul+1)+0,w
	movwf	(___flmul@bexp)
	line	19
	
l2784:	
	btfss	0+(___flmul@b)+02h,(7)&7
	goto	u3881
	goto	u3880
u3881:
	goto	l2788
u3880:
	line	20
	
l2786:	
	bsf	(___flmul@bexp)+(0/8),(0)&7
	line	24
	
l2788:	
	movf	((___flmul@bexp)),w
	btfsc	status,2
	goto	u3891
	goto	u3890
u3891:
	goto	l2796
u3890:
	line	26
	
l2790:	
		incf	((___flmul@bexp)),w
	btfss	status,2
	goto	u3901
	goto	u3900
u3901:
	goto	l2794
u3900:
	line	28
	
l2792:	
	movlw	0x0
	movwf	(___flmul@b+3)
	movlw	0x0
	movwf	(___flmul@b+2)
	movlw	0x0
	movwf	(___flmul@b+1)
	movlw	0x0
	movwf	(___flmul@b)

	line	31
	
l2794:	
	bsf	(___flmul@b)+(23/8),(23)&7
	line	33
	goto	l2798
	line	36
	
l2796:	
	movlw	0x0
	movwf	(___flmul@b+3)
	movlw	0x0
	movwf	(___flmul@b+2)
	movlw	0x0
	movwf	(___flmul@b+1)
	movlw	0x0
	movwf	(___flmul@b)

	line	39
	
l2798:	
	movf	0+(___flmul@a)+03h,w
	andlw	080h
	movwf	(??___flmul+0)+0
	movf	(??___flmul+0)+0,w
	xorwf	(___flmul@sign),f
	line	40
	
l2800:	
	movf	0+(___flmul@a)+03h,w
	movwf	(??___flmul+0)+0
	addwf	(??___flmul+0)+0,w
	movwf	(??___flmul+1)+0
	movf	(??___flmul+1)+0,w
	movwf	(___flmul@aexp)
	line	41
	
l2802:	
	btfss	0+(___flmul@a)+02h,(7)&7
	goto	u3911
	goto	u3910
u3911:
	goto	l2806
u3910:
	line	42
	
l2804:	
	bsf	(___flmul@aexp)+(0/8),(0)&7
	line	45
	
l2806:	
	movf	((___flmul@aexp)),w
	btfsc	status,2
	goto	u3921
	goto	u3920
u3921:
	goto	l2814
u3920:
	line	48
	
l2808:	
		incf	((___flmul@aexp)),w
	btfss	status,2
	goto	u3931
	goto	u3930
u3931:
	goto	l2812
u3930:
	line	50
	
l2810:	
	movlw	0x0
	movwf	(___flmul@a+3)
	movlw	0x0
	movwf	(___flmul@a+2)
	movlw	0x0
	movwf	(___flmul@a+1)
	movlw	0x0
	movwf	(___flmul@a)

	line	53
	
l2812:	
	bsf	(___flmul@a)+(23/8),(23)&7
	line	54
	goto	l2816
	line	57
	
l2814:	
	movlw	0x0
	movwf	(___flmul@a+3)
	movlw	0x0
	movwf	(___flmul@a+2)
	movlw	0x0
	movwf	(___flmul@a+1)
	movlw	0x0
	movwf	(___flmul@a)

	line	65
	
l2816:	
	movf	((___flmul@aexp)),w
	btfsc	status,2
	goto	u3941
	goto	u3940
u3941:
	goto	l2820
u3940:
	
l2818:	
	movf	((___flmul@bexp)),w
	btfss	status,2
	goto	u3951
	goto	u3950
u3951:
	goto	l2824
u3950:
	line	66
	
l2820:	
	movlw	0x0
	movwf	(?___flmul+3)
	movlw	0x0
	movwf	(?___flmul+2)
	movlw	0x0
	movwf	(?___flmul+1)
	movlw	0x0
	movwf	(?___flmul)

	goto	l786
	line	119
	
l2824:	
	movf	(___flmul@b),w
	movwf	(??___flmul+0)+0
	movf	(??___flmul+0)+0,w
	movwf	(__Umul8_16@multiplicand)
	movf	0+(___flmul@a)+02h,w
	fcall	__Umul8_16
	movf	(1+(?__Umul8_16)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	120
	
l2826:	
	movf	(___flmul@temp),w
	movwf	(??___flmul+0)+0
	clrf	(??___flmul+0)+0+1
	clrf	(??___flmul+0)+0+2
	clrf	(??___flmul+0)+0+3
	movf	3+(??___flmul+0)+0,w
	movwf	(___flmul@grs+3)
	movf	2+(??___flmul+0)+0,w
	movwf	(___flmul@grs+2)
	movf	1+(??___flmul+0)+0,w
	movwf	(___flmul@grs+1)
	movf	0+(??___flmul+0)+0,w
	movwf	(___flmul@grs)

	line	121
	
l2828:	
	movf	0+(___flmul@temp)+01h,w
	movwf	(??___flmul+0)+0
	clrf	(??___flmul+0)+0+1
	clrf	(??___flmul+0)+0+2
	clrf	(??___flmul+0)+0+3
	movf	3+(??___flmul+0)+0,w
	movwf	(___flmul@prod+3)
	movf	2+(??___flmul+0)+0,w
	movwf	(___flmul@prod+2)
	movf	1+(??___flmul+0)+0,w
	movwf	(___flmul@prod+1)
	movf	0+(??___flmul+0)+0,w
	movwf	(___flmul@prod)

	line	122
	movf	0+(___flmul@b)+01h,w
	movwf	(??___flmul+0)+0
	movf	(??___flmul+0)+0,w
	movwf	(__Umul8_16@multiplicand)
	movf	0+(___flmul@a)+01h,w
	fcall	__Umul8_16
	movf	(1+(?__Umul8_16)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	123
	
l2830:	
	movf	(___flmul@temp),w
	movwf	(??___flmul+0)+0
	clrf	(??___flmul+0)+0+1
	clrf	(??___flmul+0)+0+2
	clrf	(??___flmul+0)+0+3
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@grs),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3961
	addwf	(___flmul@grs+1),f
u3961:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3962
	addwf	(___flmul@grs+2),f
u3962:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3963
	addwf	(___flmul@grs+3),f
u3963:

	line	124
	
l2832:	
	movf	0+(___flmul@temp)+01h,w
	movwf	(??___flmul+0)+0
	clrf	(??___flmul+0)+0+1
	clrf	(??___flmul+0)+0+2
	clrf	(??___flmul+0)+0+3
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@prod),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3971
	addwf	(___flmul@prod+1),f
u3971:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3972
	addwf	(___flmul@prod+2),f
u3972:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3973
	addwf	(___flmul@prod+3),f
u3973:

	line	125
	movf	0+(___flmul@b)+02h,w
	movwf	(??___flmul+0)+0
	movf	(??___flmul+0)+0,w
	movwf	(__Umul8_16@multiplicand)
	movf	(___flmul@a),w
	fcall	__Umul8_16
	movf	(1+(?__Umul8_16)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	126
	
l2834:	
	movf	(___flmul@temp),w
	movwf	(??___flmul+0)+0
	clrf	(??___flmul+0)+0+1
	clrf	(??___flmul+0)+0+2
	clrf	(??___flmul+0)+0+3
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@grs),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3981
	addwf	(___flmul@grs+1),f
u3981:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3982
	addwf	(___flmul@grs+2),f
u3982:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3983
	addwf	(___flmul@grs+3),f
u3983:

	line	127
	
l2836:	
	movf	0+(___flmul@temp)+01h,w
	movwf	(??___flmul+0)+0
	clrf	(??___flmul+0)+0+1
	clrf	(??___flmul+0)+0+2
	clrf	(??___flmul+0)+0+3
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@prod),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3991
	addwf	(___flmul@prod+1),f
u3991:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3992
	addwf	(___flmul@prod+2),f
u3992:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3993
	addwf	(___flmul@prod+3),f
u3993:

	line	128
	
l2838:	
	movlw	08h
	movwf	(??___flmul+0)+0
u4005:
	clrc
	rlf	(___flmul@grs),f
	rlf	(___flmul@grs+1),f
	rlf	(___flmul@grs+2),f
	rlf	(___flmul@grs+3),f
	decfsz	(??___flmul+0)+0
	goto	u4005
	line	129
	
l2840:	
	movf	0+(___flmul@b)+01h,w
	movwf	(??___flmul+0)+0
	movf	(??___flmul+0)+0,w
	movwf	(__Umul8_16@multiplicand)
	movf	(___flmul@a),w
	fcall	__Umul8_16
	movf	(1+(?__Umul8_16)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	130
	
l2842:	
	movf	(___flmul@temp),w
	movwf	((??___flmul+0)+0)
	movf	(___flmul@temp+1),w
	movwf	((??___flmul+0)+0+1)
	clrf	((??___flmul+0)+0+2)
	clrf	((??___flmul+0)+0+3)
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@grs),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4011
	addwf	(___flmul@grs+1),f
u4011:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4012
	addwf	(___flmul@grs+2),f
u4012:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4013
	addwf	(___flmul@grs+3),f
u4013:

	line	131
	
l2844:	
	movf	(___flmul@b),w
	movwf	(??___flmul+0)+0
	movf	(??___flmul+0)+0,w
	movwf	(__Umul8_16@multiplicand)
	movf	0+(___flmul@a)+01h,w
	fcall	__Umul8_16
	movf	(1+(?__Umul8_16)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	132
	
l2846:	
	movf	(___flmul@temp),w
	movwf	((??___flmul+0)+0)
	movf	(___flmul@temp+1),w
	movwf	((??___flmul+0)+0+1)
	clrf	((??___flmul+0)+0+2)
	clrf	((??___flmul+0)+0+3)
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@grs),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4021
	addwf	(___flmul@grs+1),f
u4021:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4022
	addwf	(___flmul@grs+2),f
u4022:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4023
	addwf	(___flmul@grs+3),f
u4023:

	line	133
	
l2848:	
	movlw	08h
	movwf	(??___flmul+0)+0
u4035:
	clrc
	rlf	(___flmul@grs),f
	rlf	(___flmul@grs+1),f
	rlf	(___flmul@grs+2),f
	rlf	(___flmul@grs+3),f
	decfsz	(??___flmul+0)+0
	goto	u4035
	line	134
	movf	(___flmul@b),w
	movwf	(??___flmul+0)+0
	movf	(??___flmul+0)+0,w
	movwf	(__Umul8_16@multiplicand)
	movf	(___flmul@a),w
	fcall	__Umul8_16
	movf	(1+(?__Umul8_16)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	135
	
l2850:	
	movf	(___flmul@temp),w
	movwf	((??___flmul+0)+0)
	movf	(___flmul@temp+1),w
	movwf	((??___flmul+0)+0+1)
	clrf	((??___flmul+0)+0+2)
	clrf	((??___flmul+0)+0+3)
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@grs),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4041
	addwf	(___flmul@grs+1),f
u4041:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4042
	addwf	(___flmul@grs+2),f
u4042:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4043
	addwf	(___flmul@grs+3),f
u4043:

	line	136
	
l2852:	
	movf	0+(___flmul@b)+01h,w
	movwf	(??___flmul+0)+0
	movf	(??___flmul+0)+0,w
	movwf	(__Umul8_16@multiplicand)
	movf	0+(___flmul@a)+02h,w
	fcall	__Umul8_16
	movf	(1+(?__Umul8_16)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	137
	movf	(___flmul@temp),w
	movwf	((??___flmul+0)+0)
	movf	(___flmul@temp+1),w
	movwf	((??___flmul+0)+0+1)
	clrf	((??___flmul+0)+0+2)
	clrf	((??___flmul+0)+0+3)
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@prod),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4051
	addwf	(___flmul@prod+1),f
u4051:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4052
	addwf	(___flmul@prod+2),f
u4052:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4053
	addwf	(___flmul@prod+3),f
u4053:

	line	138
	
l2854:	
	movf	0+(___flmul@b)+02h,w
	movwf	(??___flmul+0)+0
	movf	(??___flmul+0)+0,w
	movwf	(__Umul8_16@multiplicand)
	movf	0+(___flmul@a)+01h,w
	fcall	__Umul8_16
	movf	(1+(?__Umul8_16)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	139
	
l2856:	
	movf	(___flmul@temp),w
	movwf	((??___flmul+0)+0)
	movf	(___flmul@temp+1),w
	movwf	((??___flmul+0)+0+1)
	clrf	((??___flmul+0)+0+2)
	clrf	((??___flmul+0)+0+3)
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@prod),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4061
	addwf	(___flmul@prod+1),f
u4061:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4062
	addwf	(___flmul@prod+2),f
u4062:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4063
	addwf	(___flmul@prod+3),f
u4063:

	line	140
	movf	0+(___flmul@b)+02h,w
	movwf	(??___flmul+0)+0
	movf	(??___flmul+0)+0,w
	movwf	(__Umul8_16@multiplicand)
	movf	0+(___flmul@a)+02h,w
	fcall	__Umul8_16
	movf	(1+(?__Umul8_16)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@temp+1)
	movf	(0+(?__Umul8_16)),w
	movwf	(___flmul@temp)
	line	141
	
l2858:	
	movf	(___flmul@temp),w
	movwf	((??___flmul+0)+0)
	movf	(___flmul@temp+1),w
	movwf	((??___flmul+0)+0+1)
	clrf	((??___flmul+0)+0+2)
	clrf	((??___flmul+0)+0+3)
	movlw	08h
u4075:
	clrc
	rlf	(??___flmul+0)+0,f
	rlf	(??___flmul+0)+1,f
	rlf	(??___flmul+0)+2,f
	rlf	(??___flmul+0)+3,f
u4070:
	addlw	-1
	skipz
	goto	u4075
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@prod),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4081
	addwf	(___flmul@prod+1),f
u4081:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4082
	addwf	(___flmul@prod+2),f
u4082:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4083
	addwf	(___flmul@prod+3),f
u4083:

	line	145
	
l2860:	
	movf	(___flmul@grs),w
	movwf	(??___flmul+0)+0
	movf	(___flmul@grs+1),w
	movwf	((??___flmul+0)+0+1)
	movf	(___flmul@grs+2),w
	movwf	((??___flmul+0)+0+2)
	movf	(___flmul@grs+3),w
	movwf	((??___flmul+0)+0+3)
	movlw	018h
u4095:
	clrc
	rrf	(??___flmul+0)+3,f
	rrf	(??___flmul+0)+2,f
	rrf	(??___flmul+0)+1,f
	rrf	(??___flmul+0)+0,f
u4090:
	addlw	-1
	skipz
	goto	u4095
	movf	0+(??___flmul+0)+0,w
	addwf	(___flmul@prod),f
	movf	1+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4101
	addwf	(___flmul@prod+1),f
u4101:
	movf	2+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4102
	addwf	(___flmul@prod+2),f
u4102:
	movf	3+(??___flmul+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4103
	addwf	(___flmul@prod+3),f
u4103:

	line	146
	
l2862:	
	movlw	08h
	movwf	(??___flmul+0)+0
u4115:
	clrc
	rlf	(___flmul@grs),f
	rlf	(___flmul@grs+1),f
	rlf	(___flmul@grs+2),f
	rlf	(___flmul@grs+3),f
	decfsz	(??___flmul+0)+0
	goto	u4115
	line	149
	
l2864:	
	movf	(___flmul@bexp),w
	addwf	(___flmul@aexp),w
	movwf	(??___flmul+0)+0
	clrf	(??___flmul+0)+0+1
	rlf	1+(??___flmul+0)+0,f
	
	movf	0+(??___flmul+0)+0,w
	addlw	low(-126)
	movwf	(___flmul@temp)
	movf	1+(??___flmul+0)+0,w
	skipnc
	addlw	1
	addlw	high(-126)
	movwf	1+(___flmul@temp)
	line	152
	goto	l2876
	line	153
	
l2866:	
	movlw	01h
	movwf	(??___flmul+0)+0
u4125:
	clrc
	rlf	(___flmul@prod),f
	rlf	(___flmul@prod+1),f
	rlf	(___flmul@prod+2),f
	rlf	(___flmul@prod+3),f
	decfsz	(??___flmul+0)+0
	goto	u4125
	line	154
	
l2868:	
	btfss	(___flmul@grs+3),(31)&7
	goto	u4131
	goto	u4130
u4131:
	goto	l2872
u4130:
	line	155
	
l2870:	
	bsf	(___flmul@prod)+(0/8),(0)&7
	line	157
	
l2872:	
	movlw	01h
	movwf	(??___flmul+0)+0
u4145:
	clrc
	rlf	(___flmul@grs),f
	rlf	(___flmul@grs+1),f
	rlf	(___flmul@grs+2),f
	rlf	(___flmul@grs+3),f
	decfsz	(??___flmul+0)+0
	goto	u4145
	line	158
	
l2874:	
	movlw	0FFh
	addwf	(___flmul@temp),f
	skipnc
	incf	(___flmul@temp+1),f
	movlw	0FFh
	addwf	(___flmul@temp+1),f
	line	152
	
l2876:	
	btfss	(___flmul@prod+2),(23)&7
	goto	u4151
	goto	u4150
u4151:
	goto	l2866
u4150:
	line	163
	
l2878:	
	clrf	(___flmul@aexp)
	line	164
	
l2880:	
	btfss	(___flmul@grs+3),(31)&7
	goto	u4161
	goto	u4160
u4161:
	goto	l2888
u4160:
	line	165
	
l2882:	
	movlw	0FFh
	andwf	(___flmul@grs),w
	movwf	(??___flmul+0)+0
	movlw	0FFh
	andwf	(___flmul@grs+1),w
	movwf	((??___flmul+0)+0+1)
	movlw	0FFh
	andwf	(___flmul@grs+2),w
	movwf	((??___flmul+0)+0+2)
	movlw	07Fh
	andwf	(___flmul@grs+3),w
	movwf	((??___flmul+0)+0+3)
	movf	3+(??___flmul+0)+0,w
	iorwf	2+(??___flmul+0)+0,w
	iorwf	1+(??___flmul+0)+0,w
	iorwf	0+(??___flmul+0)+0,w
	skipnz
	goto	u4171
	goto	u4170
u4171:
	goto	l792
u4170:
	line	166
	
l2884:	
	clrf	(___flmul@aexp)
	incf	(___flmul@aexp),f
	line	167
	goto	l2888
	line	168
	
l792:	
	line	169
	btfss	(___flmul@prod),(0)&7
	goto	u4181
	goto	u4180
u4181:
	goto	l2888
u4180:
	goto	l2884
	line	174
	
l2888:	
	movf	((___flmul@aexp)),w
	btfsc	status,2
	goto	u4191
	goto	u4190
u4191:
	goto	l2898
u4190:
	line	175
	
l2890:	
	movlw	01h
	addwf	(___flmul@prod),f
	movlw	0
	skipnc
movlw 1
	addwf	(___flmul@prod+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___flmul@prod+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___flmul@prod+3),f
	line	176
	
l2892:	
	btfss	(___flmul@prod+3),(24)&7
	goto	u4201
	goto	u4200
u4201:
	goto	l2898
u4200:
	line	177
	
l2894:	
	movf	(___flmul@prod),w
	movwf	(??___flmul+0)+0
	movf	(___flmul@prod+1),w
	movwf	((??___flmul+0)+0+1)
	movf	(___flmul@prod+2),w
	movwf	((??___flmul+0)+0+2)
	movf	(___flmul@prod+3),w
	movwf	((??___flmul+0)+0+3)
	movlw	01h
	movwf	(??___flmul+4)+0
u4215:
	rlf	(??___flmul+0)+3,w
	rrf	(??___flmul+0)+3,f
	rrf	(??___flmul+0)+2,f
	rrf	(??___flmul+0)+1,f
	rrf	(??___flmul+0)+0,f
u4210:
	decfsz	(??___flmul+4)+0,f
	goto	u4215
	movf	3+(??___flmul+0)+0,w
	movwf	(___flmul@prod+3)
	movf	2+(??___flmul+0)+0,w
	movwf	(___flmul@prod+2)
	movf	1+(??___flmul+0)+0,w
	movwf	(___flmul@prod+1)
	movf	0+(??___flmul+0)+0,w
	movwf	(___flmul@prod)

	line	178
	
l2896:	
	movlw	01h
	addwf	(___flmul@temp),f
	skipnc
	incf	(___flmul@temp+1),f
	movlw	0
	addwf	(___flmul@temp+1),f
	line	183
	
l2898:	
	movf	(___flmul@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u4225
	movlw	0FFh
	subwf	(___flmul@temp),w
u4225:

	skipc
	goto	u4221
	goto	u4220
u4221:
	goto	l2902
u4220:
	line	184
	
l2900:	
	movlw	07Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@prod+3)
	movlw	080h
	movwf	(___flmul@prod+2)
	movlw	0
	movwf	(___flmul@prod+1)
	movlw	0
	movwf	(___flmul@prod)

	line	185
	goto	l798
	line	187
	
l2902:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___flmul@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u4235
	movlw	01h
	subwf	(___flmul@temp),w
u4235:

	skipnc
	goto	u4231
	goto	u4230
u4231:
	goto	l2908
u4230:
	line	188
	
l2904:	
	movlw	high highword(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@prod+3)
	movlw	low highword(0)
	movwf	(___flmul@prod+2)
	movlw	high(0)
	movwf	(___flmul@prod+1)
	movlw	low(0)
	movwf	(___flmul@prod)

	line	190
	
l2906:	
	clrf	(___flmul@sign)
	line	191
	goto	l798
	line	194
	
l2908:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___flmul@temp),w
	movwf	(??___flmul+0)+0
	movf	(??___flmul+0)+0,w
	movwf	(___flmul@bexp)
	line	195
	movlw	0FFh
	andwf	(___flmul@prod),f
	movlw	0FFh
	andwf	(___flmul@prod+1),f
	movlw	07Fh
	andwf	(___flmul@prod+2),f
	movlw	0
	andwf	(___flmul@prod+3),f
	line	196
	
l2910:	
	btfss	(___flmul@bexp),(0)&7
	goto	u4241
	goto	u4240
u4241:
	goto	l2914
u4240:
	line	197
	
l2912:	
	bsf	0+(___flmul@prod)+02h+(7/8),(7)&7
	line	199
	
l2914:	
	movf	(___flmul@bexp),w
	movwf	(??___flmul+0)+0
	clrc
	rrf	(??___flmul+0)+0,w
	movwf	(??___flmul+1)+0
	movf	(??___flmul+1)+0,w
	movwf	0+(___flmul@prod)+03h
	line	200
	
l798:	
	line	201
	movf	(___flmul@sign),w
	movwf	(??___flmul+0)+0
	movf	(??___flmul+0)+0,w
	iorwf	0+(___flmul@prod)+03h,f
	line	203
	
l2916:	
	movf	(___flmul@prod+3),w
	movwf	(?___flmul+3)
	movf	(___flmul@prod+2),w
	movwf	(?___flmul+2)
	movf	(___flmul@prod+1),w
	movwf	(?___flmul+1)
	movf	(___flmul@prod),w
	movwf	(?___flmul)

	line	205
	
l786:	
	return
	callstack 0
GLOBAL	__end_of___flmul
	__end_of___flmul:
	signat	___flmul,8316
	global	__Umul8_16

;; *************** function __Umul8_16 *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\Umul8_16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    8[COMMON] unsigned char 
;;  word_mpld       2    6[COMMON] unsigned int 
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___flmul
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\Umul8_16.c"
	line	4
global __ptext10
__ptext10:	;psect for function __Umul8_16
psect	text10
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\Umul8_16.c"
	line	4
	
__Umul8_16:	
;incstack = 0
	callstack 4
; Regs used in __Umul8_16: [wreg+status,2+status,0]
;__Umul8_16@multiplier stored from wreg
	movwf	(__Umul8_16@multiplier)
	line	5
	
l2436:	
	clrf	(__Umul8_16@product)
	clrf	(__Umul8_16@product+1)
	line	6
	
l2438:	
	movf	(__Umul8_16@multiplicand),w
	movwf	(??__Umul8_16+0)+0
	clrf	(??__Umul8_16+0)+0+1
	movf	0+(??__Umul8_16+0)+0,w
	movwf	(__Umul8_16@word_mpld)
	movf	1+(??__Umul8_16+0)+0,w
	movwf	(__Umul8_16@word_mpld+1)
	line	51
	
l2440:	
	btfss	(__Umul8_16@multiplier),(0)&7
	goto	u3071
	goto	u3070
u3071:
	goto	l805
u3070:
	line	52
	
l2442:	
	movf	(__Umul8_16@word_mpld),w
	addwf	(__Umul8_16@product),f
	skipnc
	incf	(__Umul8_16@product+1),f
	movf	(__Umul8_16@word_mpld+1),w
	addwf	(__Umul8_16@product+1),f
	line	53
	
l805:	
	line	54
	movlw	01h
	
u3085:
	clrc
	rlf	(__Umul8_16@word_mpld),f
	rlf	(__Umul8_16@word_mpld+1),f
	addlw	-1
	skipz
	goto	u3085
	line	55
	clrc
	rrf	(__Umul8_16@multiplier),f

	line	56
	
l2444:	
	movf	((__Umul8_16@multiplier)),w
	btfss	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l2440
u3090:
	line	59
	
l2446:	
	movf	(__Umul8_16@product+1),w
	movwf	(?__Umul8_16+1)
	movf	(__Umul8_16@product),w
	movwf	(?__Umul8_16)
	line	60
	
l807:	
	return
	callstack 0
GLOBAL	__end_of__Umul8_16
	__end_of__Umul8_16:
	signat	__Umul8_16,8314
	global	__tdiv_to_l_

;; *************** function __tdiv_to_l_ *****************
;; Defined at:
;;		line 60 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\ftdivl.c"
;; Parameters:    Size  Location     Type
;;  f1              4    0[COMMON] float 
;;  f2              4    4[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  quot            4    0[BANK0 ] unsigned long 
;;  exp1            1    5[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        12       6       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\ftdivl.c"
	line	60
global __ptext11
__ptext11:	;psect for function __tdiv_to_l_
psect	text11
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\ftdivl.c"
	line	60
	
__tdiv_to_l_:	
;incstack = 0
	callstack 6
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l3026:	
	movf	(__tdiv_to_l_@f1),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f1+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f1+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movwf	(??__tdiv_to_l_+3)+0
	movf	(??__tdiv_to_l_+3)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__tdiv_to_l_@exp1)
	movf	(((__tdiv_to_l_@exp1))),w
	btfss	status,2
	goto	u4551
	goto	u4550
u4551:
	goto	l3032
u4550:
	line	67
	
l3028:	
	movlw	high highword(0)
	movwf	(?__tdiv_to_l_+3)
	movlw	low highword(0)
	movwf	(?__tdiv_to_l_+2)
	movlw	high(0)
	movwf	(?__tdiv_to_l_+1)
	movlw	low(0)
	movwf	(?__tdiv_to_l_)

	goto	l580
	line	68
	
l3032:	
	movf	(__tdiv_to_l_@f2),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f2+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f2+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movwf	(??__tdiv_to_l_+3)+0
	movf	(??__tdiv_to_l_+3)+0,w
	movwf	(__tdiv_to_l_@cntr)
	movf	(((__tdiv_to_l_@cntr))),w
	btfss	status,2
	goto	u4561
	goto	u4560
u4561:
	goto	l581
u4560:
	goto	l3028
	line	69
	
l581:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l3038:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l3040:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	movlw	high highword(0)
	movwf	(__tdiv_to_l_@quot+3)
	movlw	low highword(0)
	movwf	(__tdiv_to_l_@quot+2)
	movlw	high(0)
	movwf	(__tdiv_to_l_@quot+1)
	movlw	low(0)
	movwf	(__tdiv_to_l_@quot)

	line	75
	
l3042:	
	movlw	07Fh
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l3044:	
	movlw	low(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	low(018h)
	movwf	(??__tdiv_to_l_+0)+0
	movf	(??__tdiv_to_l_+0)+0,w
	movwf	(__tdiv_to_l_@cntr)
	line	79
	
l3046:	
	movlw	01h
	movwf	(??__tdiv_to_l_+0)+0
u4575:
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	decfsz	(??__tdiv_to_l_+0)+0
	goto	u4575
	line	80
	
l3048:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u4585
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u4585
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u4585:
	skipc
	goto	u4581
	goto	u4580
u4581:
	goto	l3054
u4580:
	line	81
	
l3050:	
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),f
	movf	(__tdiv_to_l_@f2+1),w
	skipc
	incfsz	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),f
	movf	(__tdiv_to_l_@f2+2),w
	skipc
	incf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),f
	line	82
	
l3052:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	line	84
	
l3054:	
	movlw	01h
u4595:
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	addlw	-1
	skipz
	goto	u4595
	line	85
	
l3056:	
	movlw	01h
	subwf	(__tdiv_to_l_@cntr),f
	btfss	status,2
	goto	u4601
	goto	u4600
u4601:
	goto	l3046
u4600:
	
l584:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u4611
	goto	u4610
u4611:
	goto	l3066
u4610:
	line	87
	
l3058:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u4621
	goto	u4620
u4621:
	goto	l3064
u4620:
	goto	l3028
	line	90
	
l3064:	
	movlw	01h
u4635:
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	addlw	-1
	skipz
	goto	u4635

	line	91
	movlw	low(01h)
	movwf	(??__tdiv_to_l_+0)+0
	movf	(??__tdiv_to_l_+0)+0,w
	addwf	(__tdiv_to_l_@exp1),f
	btfss	status,2
	goto	u4641
	goto	u4640
u4641:
	goto	l3064
u4640:
	goto	l3074
	line	93
	
l3066:	
	movlw	low(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u4651
	goto	u4650
u4651:
	goto	l591
u4650:
	goto	l3028
	line	96
	
l3072:	
	movlw	01h
	movwf	(??__tdiv_to_l_+0)+0
u4665:
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	decfsz	(??__tdiv_to_l_+0)+0
	goto	u4665
	line	97
	movlw	01h
	subwf	(__tdiv_to_l_@exp1),f
	line	98
	
l591:	
	line	95
	movf	((__tdiv_to_l_@exp1)),w
	btfss	status,2
	goto	u4671
	goto	u4670
u4671:
	goto	l3072
u4670:
	line	100
	
l3074:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	line	101
	
l580:	
	return
	callstack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
	signat	__tdiv_to_l_,8316
	global	__div_to_l_

;; *************** function __div_to_l_ *****************
;; Defined at:
;;		line 60 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\fldivl.c"
;; Parameters:    Size  Location     Type
;;  f1              4    0[COMMON] unsigned long 
;;  f2              4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quot            4    0[BANK0 ] unsigned long 
;;  exp1            1    5[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       6       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\fldivl.c"
	line	60
global __ptext12
__ptext12:	;psect for function __div_to_l_
psect	text12
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\fldivl.c"
	line	60
	
__div_to_l_:	
;incstack = 0
	callstack 6
; Regs used in __div_to_l_: [wreg+status,2+status,0]
	line	66
	
l3078:	
	clrc
	rlf	(__div_to_l_@f1+2),w
	rlf	(__div_to_l_@f1+3),w
	movwf	(??__div_to_l_+0)+0
	movf	(??__div_to_l_+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__div_to_l_@exp1)
	movf	(((__div_to_l_@exp1))),w
	btfss	status,2
	goto	u4681
	goto	u4680
u4681:
	goto	l3084
u4680:
	line	67
	
l3080:	
	movlw	high highword(0)
	movwf	(?__div_to_l_+3)
	movlw	low highword(0)
	movwf	(?__div_to_l_+2)
	movlw	high(0)
	movwf	(?__div_to_l_+1)
	movlw	low(0)
	movwf	(?__div_to_l_)

	goto	l533
	line	68
	
l3084:	
	clrc
	rlf	(__div_to_l_@f2+2),w
	rlf	(__div_to_l_@f2+3),w
	movwf	(??__div_to_l_+0)+0
	movf	(??__div_to_l_+0)+0,w
	movwf	(__div_to_l_@cntr)
	movf	(((__div_to_l_@cntr))),w
	btfss	status,2
	goto	u4691
	goto	u4690
u4691:
	goto	l534
u4690:
	goto	l3080
	line	69
	
l534:	
	line	70
	bsf	(__div_to_l_@f1)+(23/8),(23)&7
	line	71
	
l3090:	
	movlw	0FFh
	andwf	(__div_to_l_@f1),f
	movlw	0FFh
	andwf	(__div_to_l_@f1+1),f
	movlw	0FFh
	andwf	(__div_to_l_@f1+2),f
	movlw	0
	andwf	(__div_to_l_@f1+3),f
	line	72
	
l3092:	
	bsf	(__div_to_l_@f2)+(23/8),(23)&7
	line	73
	movlw	0FFh
	andwf	(__div_to_l_@f2),f
	movlw	0FFh
	andwf	(__div_to_l_@f2+1),f
	movlw	0FFh
	andwf	(__div_to_l_@f2+2),f
	movlw	0
	andwf	(__div_to_l_@f2+3),f
	line	74
	movlw	high highword(0)
	movwf	(__div_to_l_@quot+3)
	movlw	low highword(0)
	movwf	(__div_to_l_@quot+2)
	movlw	high(0)
	movwf	(__div_to_l_@quot+1)
	movlw	low(0)
	movwf	(__div_to_l_@quot)

	line	75
	
l3094:	
	movlw	07Fh
	subwf	(__div_to_l_@exp1),f
	line	76
	
l3096:	
	movlw	low(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	movlw	low(020h)
	movwf	(??__div_to_l_+0)+0
	movf	(??__div_to_l_+0)+0,w
	movwf	(__div_to_l_@cntr)
	line	79
	
l3098:	
	movlw	01h
	movwf	(??__div_to_l_+0)+0
u4705:
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	decfsz	(??__div_to_l_+0)+0
	goto	u4705
	line	80
	
l3100:	
	movf	(__div_to_l_@f2+3),w
	subwf	(__div_to_l_@f1+3),w
	skipz
	goto	u4715
	movf	(__div_to_l_@f2+2),w
	subwf	(__div_to_l_@f1+2),w
	skipz
	goto	u4715
	movf	(__div_to_l_@f2+1),w
	subwf	(__div_to_l_@f1+1),w
	skipz
	goto	u4715
	movf	(__div_to_l_@f2),w
	subwf	(__div_to_l_@f1),w
u4715:
	skipc
	goto	u4711
	goto	u4710
u4711:
	goto	l3106
u4710:
	line	81
	
l3102:	
	movf	(__div_to_l_@f2),w
	subwf	(__div_to_l_@f1),f
	movf	(__div_to_l_@f2+1),w
	skipc
	incfsz	(__div_to_l_@f2+1),w
	subwf	(__div_to_l_@f1+1),f
	movf	(__div_to_l_@f2+2),w
	skipc
	incfsz	(__div_to_l_@f2+2),w
	subwf	(__div_to_l_@f1+2),f
	movf	(__div_to_l_@f2+3),w
	skipc
	incfsz	(__div_to_l_@f2+3),w
	subwf	(__div_to_l_@f1+3),f
	line	82
	
l3104:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	84
	
l3106:	
	movlw	01h
	movwf	(??__div_to_l_+0)+0
u4725:
	clrc
	rlf	(__div_to_l_@f1),f
	rlf	(__div_to_l_@f1+1),f
	rlf	(__div_to_l_@f1+2),f
	rlf	(__div_to_l_@f1+3),f
	decfsz	(??__div_to_l_+0)+0
	goto	u4725
	line	85
	
l3108:	
	movlw	01h
	subwf	(__div_to_l_@cntr),f
	btfss	status,2
	goto	u4731
	goto	u4730
u4731:
	goto	l3098
u4730:
	
l537:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u4741
	goto	u4740
u4741:
	goto	l3118
u4740:
	line	87
	
l3110:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u4751
	goto	u4750
u4751:
	goto	l3116
u4750:
	goto	l3080
	line	90
	
l3116:	
	movlw	01h
u4765:
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	addlw	-1
	skipz
	goto	u4765

	line	91
	movlw	low(01h)
	movwf	(??__div_to_l_+0)+0
	movf	(??__div_to_l_+0)+0,w
	addwf	(__div_to_l_@exp1),f
	btfss	status,2
	goto	u4771
	goto	u4770
u4771:
	goto	l3116
u4770:
	goto	l3126
	line	93
	
l3118:	
	movlw	low(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u4781
	goto	u4780
u4781:
	goto	l544
u4780:
	goto	l3080
	line	96
	
l3124:	
	movlw	01h
	movwf	(??__div_to_l_+0)+0
u4795:
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	decfsz	(??__div_to_l_+0)+0
	goto	u4795
	line	97
	movlw	01h
	subwf	(__div_to_l_@exp1),f
	line	98
	
l544:	
	line	95
	movf	((__div_to_l_@exp1)),w
	btfss	status,2
	goto	u4801
	goto	u4800
u4801:
	goto	l3124
u4800:
	line	100
	
l3126:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	line	101
	
l533:	
	return
	callstack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
	signat	__div_to_l_,8316
	global	___xxtofl

;; *************** function ___xxtofl *****************
;; Defined at:
;;		line 10 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\xxtofl.c"
;; Parameters:    Size  Location     Type
;;  sign            1    wreg     unsigned char 
;;  val             4    4[COMMON] long 
;; Auto vars:     Size  Location     Type
;;  sign            1    0[BANK0 ] unsigned char 
;;  arg             4    2[BANK0 ] unsigned long 
;;  exp             1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    4[COMMON] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         8       6       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\xxtofl.c"
	line	10
global __ptext13
__ptext13:	;psect for function ___xxtofl
psect	text13
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\xxtofl.c"
	line	10
	
___xxtofl:	
;incstack = 0
	callstack 6
; Regs used in ___xxtofl: [wreg+status,2+status,0]
;___xxtofl@sign stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___xxtofl@sign)
	line	15
	
l3270:	
	movf	((___xxtofl@sign)),w
	btfsc	status,2
	goto	u5191
	goto	u5190
u5191:
	goto	l3276
u5190:
	
l3272:	
	btfss	(___xxtofl@val+3),7
	goto	u5201
	goto	u5200
u5201:
	goto	l3276
u5200:
	line	16
	
l3274:	
	comf	(___xxtofl@val)+0,w
	movwf	(___xxtofl@arg)
	comf	(___xxtofl@val)+1,w
	movwf	(___xxtofl@arg+1)
	comf	(___xxtofl@val)+2,w
	movwf	(___xxtofl@arg+2)
	comf	(___xxtofl@val)+3,w
	movwf	(___xxtofl@arg+3)
	incf	(___xxtofl@arg),f
	skipnz
	incf	(___xxtofl@arg+1),f
	skipnz
	incf	(___xxtofl@arg+2),f
	skipnz
	incf	(___xxtofl@arg+3),f
	line	17
	goto	l830
	line	19
	
l3276:	
	movf	(___xxtofl@val+3),w
	movwf	(___xxtofl@arg+3)
	movf	(___xxtofl@val+2),w
	movwf	(___xxtofl@arg+2)
	movf	(___xxtofl@val+1),w
	movwf	(___xxtofl@arg+1)
	movf	(___xxtofl@val),w
	movwf	(___xxtofl@arg)

	line	20
	
l830:	
	line	21
	movf	(___xxtofl@val+3),w
	iorwf	(___xxtofl@val+2),w
	iorwf	(___xxtofl@val+1),w
	iorwf	(___xxtofl@val),w
	skipz
	goto	u5211
	goto	u5210
u5211:
	goto	l3282
u5210:
	line	22
	
l3278:	
	movlw	0x0
	movwf	(?___xxtofl+3)
	movlw	0x0
	movwf	(?___xxtofl+2)
	movlw	0x0
	movwf	(?___xxtofl+1)
	movlw	0x0
	movwf	(?___xxtofl)

	goto	l832
	line	23
	
l3282:	
	movlw	low(096h)
	movwf	(??___xxtofl+0)+0
	movf	(??___xxtofl+0)+0,w
	movwf	(___xxtofl@exp)
	line	24
	goto	l3286
	line	25
	
l3284:	
	movlw	low(01h)
	movwf	(??___xxtofl+0)+0
	movf	(??___xxtofl+0)+0,w
	addwf	(___xxtofl@exp),f
	line	26
	movlw	01h
u5225:
	clrc
	rrf	(___xxtofl@arg+3),f
	rrf	(___xxtofl@arg+2),f
	rrf	(___xxtofl@arg+1),f
	rrf	(___xxtofl@arg),f
	addlw	-1
	skipz
	goto	u5225

	line	24
	
l3286:	
	movlw	high highword(0FE000000h)
	andwf	(___xxtofl@arg+3),w
	btfss	status,2
	goto	u5231
	goto	u5230
u5231:
	goto	l3284
u5230:
	goto	l836
	line	29
	
l3288:	
	movlw	low(01h)
	movwf	(??___xxtofl+0)+0
	movf	(??___xxtofl+0)+0,w
	addwf	(___xxtofl@exp),f
	line	30
	
l3290:	
	movlw	01h
	addwf	(___xxtofl@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___xxtofl@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___xxtofl@arg+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___xxtofl@arg+3),f
	line	31
	
l3292:	
	movlw	01h
u5245:
	clrc
	rrf	(___xxtofl@arg+3),f
	rrf	(___xxtofl@arg+2),f
	rrf	(___xxtofl@arg+1),f
	rrf	(___xxtofl@arg),f
	addlw	-1
	skipz
	goto	u5245

	line	32
	
l836:	
	line	28
	movlw	high highword(0FF000000h)
	andwf	(___xxtofl@arg+3),w
	btfss	status,2
	goto	u5251
	goto	u5250
u5251:
	goto	l3288
u5250:
	goto	l3296
	line	34
	
l3294:	
	movlw	01h
	subwf	(___xxtofl@exp),f
	line	35
	movlw	01h
	movwf	(??___xxtofl+0)+0
u5265:
	clrc
	rlf	(___xxtofl@arg),f
	rlf	(___xxtofl@arg+1),f
	rlf	(___xxtofl@arg+2),f
	rlf	(___xxtofl@arg+3),f
	decfsz	(??___xxtofl+0)+0
	goto	u5265
	line	33
	
l3296:	
	btfsc	(___xxtofl@arg+2),(23)&7
	goto	u5271
	goto	u5270
u5271:
	goto	l843
u5270:
	
l3298:	
	movlw	low(02h)
	subwf	(___xxtofl@exp),w
	skipnc
	goto	u5281
	goto	u5280
u5281:
	goto	l3294
u5280:
	
l843:	
	line	37
	btfsc	(___xxtofl@exp),(0)&7
	goto	u5291
	goto	u5290
u5291:
	goto	l844
u5290:
	line	38
	
l3300:	
	movlw	0FFh
	andwf	(___xxtofl@arg),f
	movlw	0FFh
	andwf	(___xxtofl@arg+1),f
	movlw	07Fh
	andwf	(___xxtofl@arg+2),f
	movlw	0FFh
	andwf	(___xxtofl@arg+3),f
	
l844:	
	line	39
	clrc
	rrf	(___xxtofl@exp),f

	line	40
	
l3302:	
	movf	(___xxtofl@exp),w
	movwf	(??___xxtofl+0)+0
	clrf	(??___xxtofl+0)+0+1
	clrf	(??___xxtofl+0)+0+2
	clrf	(??___xxtofl+0)+0+3
	movlw	018h
u5305:
	clrc
	rlf	(??___xxtofl+0)+0,f
	rlf	(??___xxtofl+0)+1,f
	rlf	(??___xxtofl+0)+2,f
	rlf	(??___xxtofl+0)+3,f
u5300:
	addlw	-1
	skipz
	goto	u5305
	movf	0+(??___xxtofl+0)+0,w
	iorwf	(___xxtofl@arg),f
	movf	1+(??___xxtofl+0)+0,w
	iorwf	(___xxtofl@arg+1),f
	movf	2+(??___xxtofl+0)+0,w
	iorwf	(___xxtofl@arg+2),f
	movf	3+(??___xxtofl+0)+0,w
	iorwf	(___xxtofl@arg+3),f
	line	41
	
l3304:	
	movf	((___xxtofl@sign)),w
	btfsc	status,2
	goto	u5311
	goto	u5310
u5311:
	goto	l3310
u5310:
	
l3306:	
	btfss	(___xxtofl@val+3),7
	goto	u5321
	goto	u5320
u5321:
	goto	l3310
u5320:
	line	42
	
l3308:	
	bsf	(___xxtofl@arg)+(31/8),(31)&7
	line	43
	
l3310:	
	movf	(___xxtofl@arg+3),w
	movwf	(?___xxtofl+3)
	movf	(___xxtofl@arg+2),w
	movwf	(?___xxtofl+2)
	movf	(___xxtofl@arg+1),w
	movwf	(?___xxtofl+1)
	movf	(___xxtofl@arg),w
	movwf	(?___xxtofl)

	line	44
	
l832:	
	return
	callstack 0
GLOBAL	__end_of___xxtofl
	__end_of___xxtofl:
	signat	___xxtofl,8316
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\Umul16.c"
	line	15
global __ptext14
__ptext14:	;psect for function ___wmul
psect	text14
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\Umul16.c"
	line	15
	
___wmul:	
;incstack = 0
	callstack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l3130:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l3132:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u4811
	goto	u4810
u4811:
	goto	l363
u4810:
	line	46
	
l3134:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l363:	
	line	47
	movlw	01h
	
u4825:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u4825
	line	48
	
l3136:	
	movlw	01h
	
u4835:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u4835
	line	49
	
l3138:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u4841
	goto	u4840
u4841:
	goto	l3132
u4840:
	line	52
	
l3140:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	53
	
l365:	
	return
	callstack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___llmod

;; *************** function ___llmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\llmod.c"
	line	5
global __ptext15
__ptext15:	;psect for function ___llmod
psect	text15
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\llmod.c"
	line	5
	
___llmod:	
;incstack = 0
	callstack 6
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	12
	
l3244:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u5131
	goto	u5130
u5131:
	goto	l3260
u5130:
	line	13
	
l3246:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	14
	goto	l3250
	line	15
	
l3248:	
	movlw	01h
	movwf	(??___llmod+0)+0
u5145:
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	decfsz	(??___llmod+0)+0
	goto	u5145
	line	16
	movlw	low(01h)
	movwf	(??___llmod+0)+0
	movf	(??___llmod+0)+0,w
	addwf	(___llmod@counter),f
	line	14
	
l3250:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u5151
	goto	u5150
u5151:
	goto	l3248
u5150:
	line	19
	
l3252:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u5165
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u5165
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u5165
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u5165:
	skipc
	goto	u5161
	goto	u5160
u5161:
	goto	l3256
u5160:
	line	20
	
l3254:	
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),f
	movf	(___llmod@divisor+1),w
	skipc
	incfsz	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),f
	movf	(___llmod@divisor+2),w
	skipc
	incfsz	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),f
	movf	(___llmod@divisor+3),w
	skipc
	incfsz	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),f
	line	21
	
l3256:	
	movlw	01h
u5175:
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	addlw	-1
	skipz
	goto	u5175

	line	22
	
l3258:	
	movlw	01h
	subwf	(___llmod@counter),f
	btfss	status,2
	goto	u5181
	goto	u5180
u5181:
	goto	l3252
u5180:
	line	24
	
l3260:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	line	25
	
l619:	
	return
	callstack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
	signat	___llmod,8316
	global	___fltol

;; *************** function ___fltol *****************
;; Defined at:
;;		line 43 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\fltol.c"
;; Parameters:    Size  Location     Type
;;  f1              4   51[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp1            1   61[BANK0 ] unsigned char 
;;  sign1           1   60[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   51[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\fltol.c"
	line	43
global __ptext16
__ptext16:	;psect for function ___fltol
psect	text16
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\fltol.c"
	line	43
	
___fltol:	
;incstack = 0
	callstack 6
; Regs used in ___fltol: [wreg+status,2+status,0]
	line	47
	
l3208:	
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rlf	(___fltol@f1+2),w
	rlf	(___fltol@f1+3),w
	movwf	(??___fltol+0)+0
	movf	(??___fltol+0)+0,w
	movwf	(___fltol@exp1)
	movf	(((___fltol@exp1))),w
	btfss	status,2
	goto	u5031
	goto	u5030
u5031:
	goto	l3214
u5030:
	line	48
	
l3210:	
	movlw	high highword(0)
	movwf	(?___fltol+3)
	movlw	low highword(0)
	movwf	(?___fltol+2)
	movlw	high(0)
	movwf	(?___fltol+1)
	movlw	low(0)
	movwf	(?___fltol)

	goto	l566
	line	49
	
l3214:	
	movf	(___fltol@f1),w
	movwf	(??___fltol+0)+0
	movf	(___fltol@f1+1),w
	movwf	((??___fltol+0)+0+1)
	movf	(___fltol@f1+2),w
	movwf	((??___fltol+0)+0+2)
	movf	(___fltol@f1+3),w
	movwf	((??___fltol+0)+0+3)
	movlw	01Fh
u5045:
	clrc
	rrf	(??___fltol+0)+3,f
	rrf	(??___fltol+0)+2,f
	rrf	(??___fltol+0)+1,f
	rrf	(??___fltol+0)+0,f
u5040:
	addlw	-1
	skipz
	goto	u5045
	movf	0+(??___fltol+0)+0,w
	movwf	(??___fltol+4)+0
	movf	(??___fltol+4)+0,w
	movwf	(___fltol@sign1)
	line	50
	
l3216:	
	bsf	(___fltol@f1)+(23/8),(23)&7
	line	51
	
l3218:	
	movlw	0FFh
	andwf	(___fltol@f1),f
	movlw	0FFh
	andwf	(___fltol@f1+1),f
	movlw	0FFh
	andwf	(___fltol@f1+2),f
	movlw	0
	andwf	(___fltol@f1+3),f
	line	52
	
l3220:	
	movlw	096h
	subwf	(___fltol@exp1),f
	line	53
	
l3222:	
	btfss	(___fltol@exp1),7
	goto	u5051
	goto	u5050
u5051:
	goto	l3232
u5050:
	line	54
	
l3224:	
	movf	(___fltol@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u5061
	goto	u5060
u5061:
	goto	l3230
u5060:
	goto	l3210
	line	57
	
l3230:	
	movlw	01h
u5075:
	clrc
	rrf	(___fltol@f1+3),f
	rrf	(___fltol@f1+2),f
	rrf	(___fltol@f1+1),f
	rrf	(___fltol@f1),f
	addlw	-1
	skipz
	goto	u5075

	line	58
	movlw	low(01h)
	movwf	(??___fltol+0)+0
	movf	(??___fltol+0)+0,w
	addwf	(___fltol@exp1),f
	btfss	status,2
	goto	u5081
	goto	u5080
u5081:
	goto	l3230
u5080:
	goto	l3240
	line	60
	
l3232:	
	movlw	low(020h)
	subwf	(___fltol@exp1),w
	skipc
	goto	u5091
	goto	u5090
u5091:
	goto	l573
u5090:
	goto	l3210
	line	63
	
l3238:	
	movlw	01h
	movwf	(??___fltol+0)+0
u5105:
	clrc
	rlf	(___fltol@f1),f
	rlf	(___fltol@f1+1),f
	rlf	(___fltol@f1+2),f
	rlf	(___fltol@f1+3),f
	decfsz	(??___fltol+0)+0
	goto	u5105
	line	64
	movlw	01h
	subwf	(___fltol@exp1),f
	line	65
	
l573:	
	line	62
	movf	((___fltol@exp1)),w
	btfss	status,2
	goto	u5111
	goto	u5110
u5111:
	goto	l3238
u5110:
	line	67
	
l3240:	
	movf	((___fltol@sign1)),w
	btfsc	status,2
	goto	u5121
	goto	u5120
u5121:
	goto	l576
u5120:
	line	68
	
l3242:	
	comf	(___fltol@f1),f
	comf	(___fltol@f1+1),f
	comf	(___fltol@f1+2),f
	comf	(___fltol@f1+3),f
	incf	(___fltol@f1),f
	skipnz
	incf	(___fltol@f1+1),f
	skipnz
	incf	(___fltol@f1+2),f
	skipnz
	incf	(___fltol@f1+3),f
	
l576:	
	line	69
	line	70
	
l566:	
	return
	callstack 0
GLOBAL	__end_of___fltol
	__end_of___fltol:
	signat	___fltol,4220
	global	___flsub

;; *************** function ___flsub *****************
;; Defined at:
;;		line 242 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\sprcadd.c"
;; Parameters:    Size  Location     Type
;;  a               4   72[BANK0 ] long 
;;  b               4   76[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   72[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___fladd
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\sprcadd.c"
	line	242
global __ptext17
__ptext17:	;psect for function ___flsub
psect	text17
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\sprcadd.c"
	line	242
	
___flsub:	
;incstack = 0
	callstack 5
; Regs used in ___flsub: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	248
	
l3264:	
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(___flsub@a+3),f
	line	249
	
l3266:	
	movf	(___flsub@b+3),w
	movwf	(___fladd@b+3)
	movf	(___flsub@b+2),w
	movwf	(___fladd@b+2)
	movf	(___flsub@b+1),w
	movwf	(___fladd@b+1)
	movf	(___flsub@b),w
	movwf	(___fladd@b)

	movf	(___flsub@a+3),w
	movwf	(___fladd@a+3)
	movf	(___flsub@a+2),w
	movwf	(___fladd@a+2)
	movf	(___flsub@a+1),w
	movwf	(___fladd@a+1)
	movf	(___flsub@a),w
	movwf	(___fladd@a)

	fcall	___fladd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fladd)),w
	movwf	(?___flsub+3)
	movf	(2+(?___fladd)),w
	movwf	(?___flsub+2)
	movf	(1+(?___fladd)),w
	movwf	(?___flsub+1)
	movf	(0+(?___fladd)),w
	movwf	(?___flsub)

	line	250
	
l736:	
	return
	callstack 0
GLOBAL	__end_of___flsub
	__end_of___flsub:
	signat	___flsub,8316
	global	___fladd

;; *************** function ___fladd *****************
;; Defined at:
;;		line 10 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\sprcadd.c"
;; Parameters:    Size  Location     Type
;;  b               4   52[BANK0 ] long 
;;  a               4   56[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  grs             1   71[BANK0 ] unsigned char 
;;  bexp            1   70[BANK0 ] unsigned char 
;;  aexp            1   69[BANK0 ] unsigned char 
;;  signs           1   68[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   52[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       8       0       0       0
;;      Totals:         0      20       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_sprintf
;;		___flsub
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=2
	line	10
global __ptext18
__ptext18:	;psect for function ___fladd
psect	text18
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\sprcadd.c"
	line	10
	
___fladd:	
;incstack = 0
	callstack 5
; Regs used in ___fladd: [wreg+status,2+status,0+btemp+1]
	line	21
	
l2586:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(___fladd@b)+03h,w
	andlw	080h
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	movwf	(___fladd@signs)
	line	22
	
l2588:	
	movf	0+(___fladd@b)+03h,w
	movwf	(??___fladd+0)+0
	addwf	(??___fladd+0)+0,w
	movwf	(??___fladd+1)+0
	movf	(??___fladd+1)+0,w
	movwf	(___fladd@bexp)
	line	23
	
l2590:	
	btfss	0+(___fladd@b)+02h,(7)&7
	goto	u3421
	goto	u3420
u3421:
	goto	l2594
u3420:
	line	24
	
l2592:	
	bsf	(___fladd@bexp)+(0/8),(0)&7
	line	28
	
l2594:	
	movf	((___fladd@bexp)),w
	btfsc	status,2
	goto	u3431
	goto	u3430
u3431:
	goto	l2604
u3430:
	line	30
	
l2596:	
		incf	((___fladd@bexp)),w
	btfss	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l2600
u3440:
	line	32
	
l2598:	
	movlw	0x0
	movwf	(___fladd@b+3)
	movlw	0x0
	movwf	(___fladd@b+2)
	movlw	0x0
	movwf	(___fladd@b+1)
	movlw	0x0
	movwf	(___fladd@b)

	line	35
	
l2600:	
	bsf	(___fladd@b)+(23/8),(23)&7
	line	37
	
l2602:	
	clrf	0+(___fladd@b)+03h
	line	38
	goto	l2606
	line	41
	
l2604:	
	movlw	0x0
	movwf	(___fladd@b+3)
	movlw	0x0
	movwf	(___fladd@b+2)
	movlw	0x0
	movwf	(___fladd@b+1)
	movlw	0x0
	movwf	(___fladd@b)

	line	44
	
l2606:	
	movf	0+(___fladd@a)+03h,w
	andlw	080h
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	movwf	(___fladd@aexp)
	line	46
	
l2608:	
	movf	(___fladd@aexp),w
	xorwf	(___fladd@signs),w
	skipnz
	goto	u3451
	goto	u3450
u3451:
	goto	l2612
u3450:
	line	47
	
l2610:	
	bsf	(___fladd@signs)+(6/8),(6)&7
	line	49
	
l2612:	
	movf	0+(___fladd@a)+03h,w
	movwf	(??___fladd+0)+0
	addwf	(??___fladd+0)+0,w
	movwf	(??___fladd+1)+0
	movf	(??___fladd+1)+0,w
	movwf	(___fladd@aexp)
	line	50
	
l2614:	
	btfss	0+(___fladd@a)+02h,(7)&7
	goto	u3461
	goto	u3460
u3461:
	goto	l2618
u3460:
	line	51
	
l2616:	
	bsf	(___fladd@aexp)+(0/8),(0)&7
	line	55
	
l2618:	
	movf	((___fladd@aexp)),w
	btfsc	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l2628
u3470:
	line	57
	
l2620:	
		incf	((___fladd@aexp)),w
	btfss	status,2
	goto	u3481
	goto	u3480
u3481:
	goto	l2624
u3480:
	line	59
	
l2622:	
	movlw	0x0
	movwf	(___fladd@a+3)
	movlw	0x0
	movwf	(___fladd@a+2)
	movlw	0x0
	movwf	(___fladd@a+1)
	movlw	0x0
	movwf	(___fladd@a)

	line	62
	
l2624:	
	bsf	(___fladd@a)+(23/8),(23)&7
	line	64
	
l2626:	
	clrf	0+(___fladd@a)+03h
	line	65
	goto	l690
	line	68
	
l2628:	
	movlw	0x0
	movwf	(___fladd@a+3)
	movlw	0x0
	movwf	(___fladd@a+2)
	movlw	0x0
	movwf	(___fladd@a+1)
	movlw	0x0
	movwf	(___fladd@a)

	line	69
	
l690:	
	line	75
	movf	(___fladd@bexp),w
	subwf	(___fladd@aexp),w
	skipnc
	goto	u3491
	goto	u3490
u3491:
	goto	l2664
u3490:
	line	77
	
l2630:	
	btfss	(___fladd@signs),(6)&7
	goto	u3501
	goto	u3500
u3501:
	goto	l2634
u3500:
	line	78
	
l2632:	
	movlw	low(080h)
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	xorwf	(___fladd@signs),f
	line	81
	
l2634:	
	movf	(___fladd@bexp),w
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	movwf	(___fladd@grs)
	line	82
	
l2636:	
	movf	(___fladd@aexp),w
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	movwf	(___fladd@bexp)
	line	83
	
l2638:	
	movf	(___fladd@grs),w
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	movwf	(___fladd@aexp)
	line	84
	
l2640:	
	movf	(___fladd@b),w
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	movwf	(___fladd@grs)
	line	85
	
l2642:	
	movf	(___fladd@a),w
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	movwf	(___fladd@b)
	line	86
	
l2644:	
	movf	(___fladd@grs),w
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	movwf	(___fladd@a)
	line	87
	
l2646:	
	movf	0+(___fladd@b)+01h,w
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	movwf	(___fladd@grs)
	line	88
	
l2648:	
	movf	0+(___fladd@a)+01h,w
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	movwf	0+(___fladd@b)+01h
	line	89
	
l2650:	
	movf	(___fladd@grs),w
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	movwf	0+(___fladd@a)+01h
	line	90
	
l2652:	
	movf	0+(___fladd@b)+02h,w
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	movwf	(___fladd@grs)
	line	91
	
l2654:	
	movf	0+(___fladd@a)+02h,w
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	movwf	0+(___fladd@b)+02h
	line	92
	
l2656:	
	movf	(___fladd@grs),w
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	movwf	0+(___fladd@a)+02h
	line	93
	
l2658:	
	movf	0+(___fladd@b)+03h,w
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	movwf	(___fladd@grs)
	line	94
	
l2660:	
	movf	0+(___fladd@a)+03h,w
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	movwf	0+(___fladd@b)+03h
	line	95
	
l2662:	
	movf	(___fladd@grs),w
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	movwf	0+(___fladd@a)+03h
	line	98
	
l2664:	
	clrf	(___fladd@grs)
	line	100
	
l2666:	
	movf	(___fladd@aexp),w
	movwf	(??___fladd+0)+0
	clrf	(??___fladd+0)+0+1
	movf	1+(??___fladd+0)+0,w
	movwf	(??___fladd+2)+0+1
	movf	(___fladd@bexp),w
	subwf	0+(??___fladd+0)+0,w
	movwf	(??___fladd+2)+0
	skipc
	decf	(??___fladd+2)+0+1,f
	movf	1+(??___fladd+2)+0,w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3515
	movlw	01Ah
	subwf	0+(??___fladd+2)+0,w
u3515:

	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l2682
u3510:
	line	101
	
l2668:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fladd@b+3),w
	iorwf	(___fladd@b+2),w
	iorwf	(___fladd@b+1),w
	iorwf	(___fladd@b),w
	skipz
	goto	u3521
	goto	u3520
u3521:
	movlw	1
	goto	u3530
u3520:
	movlw	0
u3530:
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	movwf	(___fladd@grs)
	line	102
	movlw	high highword(0)
	movwf	(___fladd@b+3)
	movlw	low highword(0)
	movwf	(___fladd@b+2)
	movlw	high(0)
	movwf	(___fladd@b+1)
	movlw	low(0)
	movwf	(___fladd@b)

	line	103
	movf	(___fladd@aexp),w
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	movwf	(___fladd@bexp)
	line	104
	goto	l694
	line	106
	
l696:	
	line	109
	btfss	(___fladd@grs),(0)&7
	goto	u3541
	goto	u3540
u3541:
	goto	l2672
u3540:
	line	110
	
l2670:	
	movf	(___fladd@grs),w
	movwf	(??___fladd+0)+0
	clrc
	rrf	(??___fladd+0)+0,w
	iorlw	01h
	movwf	(??___fladd+1)+0
	movf	(??___fladd+1)+0,w
	movwf	(___fladd@grs)
	line	111
	goto	l2674
	line	113
	
l2672:	
	clrc
	rrf	(___fladd@grs),f

	line	115
	
l2674:	
	btfss	(___fladd@b),(0)&7
	goto	u3551
	goto	u3550
u3551:
	goto	l2678
u3550:
	line	116
	
l2676:	
	bsf	(___fladd@grs)+(7/8),(7)&7
	line	118
	
l2678:	
	movlw	01h
	movwf	(??___fladd+0)+0
u3565:
	rlf	(___fladd@b+3),w
	rrf	(___fladd@b+3),f
	rrf	(___fladd@b+2),f
	rrf	(___fladd@b+1),f
	rrf	(___fladd@b),f
	decfsz	(??___fladd+0)+0&07fh,f
	goto	u3565

	line	119
	
l2680:	
	movlw	low(01h)
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	addwf	(___fladd@bexp),f
	line	106
	
l2682:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fladd@aexp),w
	subwf	(___fladd@bexp),w
	skipc
	goto	u3571
	goto	u3570
u3571:
	goto	l696
u3570:
	line	121
	
l694:	
	line	124
	btfsc	(___fladd@signs),(6)&7
	goto	u3581
	goto	u3580
u3581:
	goto	l2708
u3580:
	line	127
	
l2684:	
	movf	((___fladd@bexp)),w
	btfss	status,2
	goto	u3591
	goto	u3590
u3591:
	goto	l2690
u3590:
	line	128
	
l2686:	
	movlw	0x0
	movwf	(?___fladd+3)
	movlw	0x0
	movwf	(?___fladd+2)
	movlw	0x0
	movwf	(?___fladd+1)
	movlw	0x0
	movwf	(?___fladd)

	goto	l703
	line	132
	
l2690:	
	movf	(___fladd@a),w
	addwf	(___fladd@b),f
	movf	(___fladd@a+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3601
	addwf	(___fladd@b+1),f
u3601:
	movf	(___fladd@a+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3602
	addwf	(___fladd@b+2),f
u3602:
	movf	(___fladd@a+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3603
	addwf	(___fladd@b+3),f
u3603:

	line	134
	
l2692:	
	btfss	(___fladd@b+3),(24)&7
	goto	u3611
	goto	u3610
u3611:
	goto	l2742
u3610:
	line	135
	
l2694:	
	btfss	(___fladd@grs),(0)&7
	goto	u3621
	goto	u3620
u3621:
	goto	l2698
u3620:
	line	136
	
l2696:	
	movf	(___fladd@grs),w
	movwf	(??___fladd+0)+0
	clrc
	rrf	(??___fladd+0)+0,w
	iorlw	01h
	movwf	(??___fladd+1)+0
	movf	(??___fladd+1)+0,w
	movwf	(___fladd@grs)
	line	137
	goto	l2700
	line	139
	
l2698:	
	clrc
	rrf	(___fladd@grs),f

	line	141
	
l2700:	
	btfss	(___fladd@b),(0)&7
	goto	u3631
	goto	u3630
u3631:
	goto	l2704
u3630:
	line	142
	
l2702:	
	bsf	(___fladd@grs)+(7/8),(7)&7
	line	144
	
l2704:	
	movlw	01h
	movwf	(??___fladd+0)+0
u3645:
	rlf	(___fladd@b+3),w
	rrf	(___fladd@b+3),f
	rrf	(___fladd@b+2),f
	rrf	(___fladd@b+1),f
	rrf	(___fladd@b),f
	decfsz	(??___fladd+0)+0&07fh,f
	goto	u3645

	line	145
	
l2706:	
	movlw	low(01h)
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	addwf	(___fladd@bexp),f
	goto	l2742
	line	153
	
l2708:	
	movf	(___fladd@b+3),w
	xorlw	80h
	movwf	btemp+1
	movf	(___fladd@a+3),w
	xorlw	80h
	subwf	btemp+1,w
	
	skipz
	goto	u3653
	movf	(___fladd@a+2),w
	subwf	(___fladd@b+2),w
	skipz
	goto	u3653
	movf	(___fladd@a+1),w
	subwf	(___fladd@b+1),w
	skipz
	goto	u3653
	movf	(___fladd@a),w
	subwf	(___fladd@b),w
u3653:
	skipnc
	goto	u3651
	goto	u3650
u3651:
	goto	l2718
u3650:
	line	154
	
l2710:	
	movlw	0FFh
	movwf	((??___fladd+0)+0)
	movlw	0FFh
	movwf	((??___fladd+0)+0+1)
	movlw	0FFh
	movwf	((??___fladd+0)+0+2)
	movlw	0FFh
	movwf	((??___fladd+0)+0+3)
	movf	(___fladd@a),w
	movwf	(??___fladd+4)+0
	movf	(___fladd@a+1),w
	movwf	((??___fladd+4)+0+1)
	movf	(___fladd@a+2),w
	movwf	((??___fladd+4)+0+2)
	movf	(___fladd@a+3),w
	movwf	((??___fladd+4)+0+3)
	movf	(___fladd@b),w
	subwf	(??___fladd+4)+0,f
	movf	(___fladd@b+1),w
	skipc
	incfsz	(___fladd@b+1),w
	goto	u3661
	goto	u3662
u3661:
	subwf	(??___fladd+4)+1,f
u3662:
	movf	(___fladd@b+2),w
	skipc
	incfsz	(___fladd@b+2),w
	goto	u3663
	goto	u3664
u3663:
	subwf	(??___fladd+4)+2,f
u3664:
	movf	(___fladd@b+3),w
	skipc
	incfsz	(___fladd@b+3),w
	goto	u3665
	goto	u3666
u3665:
	subwf	(??___fladd+4)+3,f
u3666:

	movf	0+(??___fladd+4)+0,w
	addwf	(??___fladd+0)+0,f
	movf	1+(??___fladd+4)+0,w
	skipnc
	incfsz	1+(??___fladd+4)+0,w
	goto	u3670
	goto	u3671
u3670:
	addwf	(??___fladd+0)+1,f
u3671:
	movf	2+(??___fladd+4)+0,w
	skipnc
	incfsz	2+(??___fladd+4)+0,w
	goto	u3672
	goto	u3673
u3672:
	addwf	(??___fladd+0)+2,f
u3673:
	movf	3+(??___fladd+4)+0,w
	skipnc
	incf	3+(??___fladd+4)+0,w
	addwf	(??___fladd+0)+3,f
	movf	3+(??___fladd+0)+0,w
	movwf	(___fladd@b+3)
	movf	2+(??___fladd+0)+0,w
	movwf	(___fladd@b+2)
	movf	1+(??___fladd+0)+0,w
	movwf	(___fladd@b+1)
	movf	0+(??___fladd+0)+0,w
	movwf	(___fladd@b)

	line	155
	
l2712:	
	movlw	low(080h)
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	xorwf	(___fladd@signs),f
	line	156
	comf	(___fladd@grs),f
	incf	(___fladd@grs),f
	line	157
	
l2714:	
	movf	((___fladd@grs)),w
	btfss	status,2
	goto	u3681
	goto	u3680
u3681:
	goto	l711
u3680:
	line	158
	
l2716:	
	movlw	01h
	addwf	(___fladd@b),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fladd@b+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fladd@b+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fladd@b+3),f
	goto	l711
	line	162
	
l2718:	
	movf	(___fladd@a),w
	subwf	(___fladd@b),f
	movf	(___fladd@a+1),w
	skipc
	incfsz	(___fladd@a+1),w
	subwf	(___fladd@b+1),f
	movf	(___fladd@a+2),w
	skipc
	incfsz	(___fladd@a+2),w
	subwf	(___fladd@b+2),f
	movf	(___fladd@a+3),w
	skipc
	incfsz	(___fladd@a+3),w
	subwf	(___fladd@b+3),f
	line	163
	
l711:	
	line	166
	movf	(___fladd@b+3),w
	iorwf	(___fladd@b+2),w
	iorwf	(___fladd@b+1),w
	iorwf	(___fladd@b),w
	skipz
	goto	u3691
	goto	u3690
u3691:
	goto	l2740
u3690:
	
l2720:	
	movf	((___fladd@grs)),w
	btfss	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l2740
u3700:
	line	167
	
l2722:	
	movlw	0x0
	movwf	(?___fladd+3)
	movlw	0x0
	movwf	(?___fladd+2)
	movlw	0x0
	movwf	(?___fladd+1)
	movlw	0x0
	movwf	(?___fladd)

	goto	l703
	line	172
	
l2726:	
	movlw	01h
	movwf	(??___fladd+0)+0
u3715:
	clrc
	rlf	(___fladd@b),f
	rlf	(___fladd@b+1),f
	rlf	(___fladd@b+2),f
	rlf	(___fladd@b+3),f
	decfsz	(??___fladd+0)+0
	goto	u3715
	line	173
	
l2728:	
	btfss	(___fladd@grs),(7)&7
	goto	u3721
	goto	u3720
u3721:
	goto	l715
u3720:
	line	174
	
l2730:	
	bsf	(___fladd@b)+(0/8),(0)&7
	line	175
	
l715:	
	line	176
	btfss	(___fladd@grs),(0)&7
	goto	u3731
	goto	u3730
u3731:
	goto	l2734
u3730:
	line	177
	
l2732:	
	setc
	rlf	(___fladd@grs),f
	line	178
	goto	l2736
	line	180
	
l2734:	
	clrc
	rlf	(___fladd@grs),f

	line	182
	
l2736:	
	movf	((___fladd@bexp)),w
	btfsc	status,2
	goto	u3741
	goto	u3740
u3741:
	goto	l2740
u3740:
	line	183
	
l2738:	
	movlw	01h
	subwf	(___fladd@bexp),f
	line	171
	
l2740:	
	btfss	(___fladd@b+2),(23)&7
	goto	u3751
	goto	u3750
u3751:
	goto	l2726
u3750:
	line	192
	
l2742:	
	clrf	(___fladd@aexp)
	line	193
	
l2744:	
	btfss	(___fladd@grs),(7)&7
	goto	u3761
	goto	u3760
u3761:
	goto	l2752
u3760:
	line	194
	
l2746:	
	movf	(___fladd@grs),w
	andlw	07Fh
	btfsc	status,2
	goto	u3771
	goto	u3770
u3771:
	goto	l721
u3770:
	line	195
	
l2748:	
	clrf	(___fladd@aexp)
	incf	(___fladd@aexp),f
	line	196
	goto	l2752
	line	197
	
l721:	
	line	198
	btfss	(___fladd@b),(0)&7
	goto	u3781
	goto	u3780
u3781:
	goto	l2752
u3780:
	goto	l2748
	line	203
	
l2752:	
	movf	((___fladd@aexp)),w
	btfsc	status,2
	goto	u3791
	goto	u3790
u3791:
	goto	l724
u3790:
	line	204
	
l2754:	
	movlw	01h
	addwf	(___fladd@b),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fladd@b+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fladd@b+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fladd@b+3),f
	line	205
	
l2756:	
	btfss	(___fladd@b+3),(24)&7
	goto	u3801
	goto	u3800
u3801:
	goto	l724
u3800:
	line	206
	
l2758:	
	movf	(___fladd@b),w
	movwf	(??___fladd+0)+0
	movf	(___fladd@b+1),w
	movwf	((??___fladd+0)+0+1)
	movf	(___fladd@b+2),w
	movwf	((??___fladd+0)+0+2)
	movf	(___fladd@b+3),w
	movwf	((??___fladd+0)+0+3)
	movlw	01h
	movwf	(??___fladd+4)+0
u3815:
	rlf	(??___fladd+0)+3,w
	rrf	(??___fladd+0)+3,f
	rrf	(??___fladd+0)+2,f
	rrf	(??___fladd+0)+1,f
	rrf	(??___fladd+0)+0,f
u3810:
	decfsz	(??___fladd+4)+0,f
	goto	u3815
	movf	3+(??___fladd+0)+0,w
	movwf	(___fladd@b+3)
	movf	2+(??___fladd+0)+0,w
	movwf	(___fladd@b+2)
	movf	1+(??___fladd+0)+0,w
	movwf	(___fladd@b+1)
	movf	0+(??___fladd+0)+0,w
	movwf	(___fladd@b)

	line	207
		incf	((___fladd@bexp)),w
	btfsc	status,2
	goto	u3821
	goto	u3820
u3821:
	goto	l724
u3820:
	line	208
	
l2760:	
	movlw	low(01h)
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	addwf	(___fladd@bexp),f
	line	211
	
l724:	
	line	215
		incf	((___fladd@bexp)),w
	btfsc	status,2
	goto	u3831
	goto	u3830
u3831:
	goto	l2764
u3830:
	
l2762:	
	movf	((___fladd@bexp)),w
	btfss	status,2
	goto	u3841
	goto	u3840
u3841:
	goto	l2770
u3840:
	line	216
	
l2764:	
	movlw	high highword(0)
	movwf	(___fladd@b+3)
	movlw	low highword(0)
	movwf	(___fladd@b+2)
	movlw	high(0)
	movwf	(___fladd@b+1)
	movlw	low(0)
	movwf	(___fladd@b)

	line	218
	
l2766:	
	movf	((___fladd@bexp)),w
	btfss	status,2
	goto	u3851
	goto	u3850
u3851:
	goto	l2770
u3850:
	line	219
	
l2768:	
	clrf	(___fladd@signs)
	line	225
	
l2770:	
	btfss	(___fladd@bexp),(0)&7
	goto	u3861
	goto	u3860
u3861:
	goto	l2774
u3860:
	line	226
	
l2772:	
	bsf	0+(___fladd@b)+02h+(7/8),(7)&7
	line	227
	goto	l732
	line	230
	
l2774:	
	movlw	low(07Fh)
	movwf	(??___fladd+0)+0
	movf	(??___fladd+0)+0,w
	andwf	0+(___fladd@b)+02h,f
	line	231
	
l732:	
	line	232
	movf	(___fladd@bexp),w
	movwf	(??___fladd+0)+0
	clrc
	rrf	(??___fladd+0)+0,w
	movwf	(??___fladd+1)+0
	movf	(??___fladd+1)+0,w
	movwf	0+(___fladd@b)+03h
	line	233
	
l2776:	
	btfss	(___fladd@signs),(7)&7
	goto	u3871
	goto	u3870
u3871:
	goto	l733
u3870:
	line	234
	
l2778:	
	bsf	0+(___fladd@b)+03h+(7/8),(7)&7
	line	235
	
l733:	
	line	236
	line	237
	
l703:	
	return
	callstack 0
GLOBAL	__end_of___fladd
	__end_of___fladd:
	signat	___fladd,8316
	global	___flneg

;; *************** function ___flneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\flneg.c"
;; Parameters:    Size  Location     Type
;;  f1              4    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\flneg.c"
	line	15
global __ptext19
__ptext19:	;psect for function ___flneg
psect	text19
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\flneg.c"
	line	15
	
___flneg:	
;incstack = 0
	callstack 6
; Regs used in ___flneg: [wreg]
	line	17
	
l3200:	
	movf	(___flneg@f1+3),w
	iorwf	(___flneg@f1+2),w
	iorwf	(___flneg@f1+1),w
	iorwf	(___flneg@f1),w
	skipnz
	goto	u5021
	goto	u5020
u5021:
	goto	l3204
u5020:
	line	18
	
l3202:	
	movlw	080h
	xorwf	(___flneg@f1+3),f
	line	19
	
l3204:	
	line	20
	
l562:	
	return
	callstack 0
GLOBAL	__end_of___flneg
	__end_of___flneg:
	signat	___flneg,4220
	global	___flge

;; *************** function ___flge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\flge.c"
;; Parameters:    Size  Location     Type
;;  ff1             4   72[BANK0 ] unsigned char 
;;  ff2             4   76[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       8       4       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\flge.c"
	line	4
global __ptext20
__ptext20:	;psect for function ___flge
psect	text20
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\flge.c"
	line	4
	
___flge:	
;incstack = 0
	callstack 6
; Regs used in ___flge: [wreg+status,2+status,0]
	line	7
	
l3180:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(___flge@ff1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??___flge+0)^080h+0
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(___flge@ff1+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	((??___flge+0)^080h+0+1)
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(___flge@ff1+2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	((??___flge+0)^080h+0+2)
	movlw	07Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(___flge@ff1+3),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	((??___flge+0)^080h+0+3)
	movf	3+(??___flge+0)^080h+0,w
	iorwf	2+(??___flge+0)^080h+0,w
	iorwf	1+(??___flge+0)^080h+0,w
	iorwf	0+(??___flge+0)^080h+0,w
	skipz
	goto	u4951
	goto	u4950
u4951:
	goto	l554
u4950:
	line	8
	
l3182:	
	movlw	high highword(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+3)
	movlw	low highword(0)
	movwf	(___flge@ff1+2)
	movlw	high(0)
	movwf	(___flge@ff1+1)
	movlw	low(0)
	movwf	(___flge@ff1)

	
l554:	
	line	9
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	andwf	(___flge@ff2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??___flge+0)^080h+0
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(___flge@ff2+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	((??___flge+0)^080h+0+1)
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(___flge@ff2+2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	((??___flge+0)^080h+0+2)
	movlw	07Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(___flge@ff2+3),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	((??___flge+0)^080h+0+3)
	movf	3+(??___flge+0)^080h+0,w
	iorwf	2+(??___flge+0)^080h+0,w
	iorwf	1+(??___flge+0)^080h+0,w
	iorwf	0+(??___flge+0)^080h+0,w
	skipz
	goto	u4961
	goto	u4960
u4961:
	goto	l3186
u4960:
	line	10
	
l3184:	
	movlw	high highword(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+3)
	movlw	low highword(0)
	movwf	(___flge@ff2+2)
	movlw	high(0)
	movwf	(___flge@ff2+1)
	movlw	low(0)
	movwf	(___flge@ff2)

	line	12
	
l3186:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(___flge@ff1+3),(31)&7
	goto	u4971
	goto	u4970
u4971:
	goto	l3190
u4970:
	line	13
	
l3188:	
	movlw	0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	((??___flge+0)^080h+0)
	movlw	0
	movwf	((??___flge+0)^080h+0+1)
	movlw	0
	movwf	((??___flge+0)^080h+0+2)
	movlw	080h
	movwf	((??___flge+0)^080h+0+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___flge@ff1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(??___flge+0)^080h+0,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___flge@ff1+1),w
	skipc
	incfsz	(___flge@ff1+1),w
	goto	u4981
	goto	u4982
u4981:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(??___flge+0)^080h+1,f
u4982:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___flge@ff1+2),w
	skipc
	incfsz	(___flge@ff1+2),w
	goto	u4983
	goto	u4984
u4983:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(??___flge+0)^080h+2,f
u4984:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___flge@ff1+3),w
	skipc
	incfsz	(___flge@ff1+3),w
	goto	u4985
	goto	u4986
u4985:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(??___flge+0)^080h+3,f
u4986:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1

	movf	3+(??___flge+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	2+(??___flge+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??___flge+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(??___flge+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff1)

	line	14
	
l3190:	
	btfss	(___flge@ff2+3),(31)&7
	goto	u4991
	goto	u4990
u4991:
	goto	l557
u4990:
	line	15
	
l3192:	
	movlw	0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	((??___flge+0)^080h+0)
	movlw	0
	movwf	((??___flge+0)^080h+0+1)
	movlw	0
	movwf	((??___flge+0)^080h+0+2)
	movlw	080h
	movwf	((??___flge+0)^080h+0+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___flge@ff2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(??___flge+0)^080h+0,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___flge@ff2+1),w
	skipc
	incfsz	(___flge@ff2+1),w
	goto	u5001
	goto	u5002
u5001:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(??___flge+0)^080h+1,f
u5002:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___flge@ff2+2),w
	skipc
	incfsz	(___flge@ff2+2),w
	goto	u5003
	goto	u5004
u5003:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(??___flge+0)^080h+2,f
u5004:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___flge@ff2+3),w
	skipc
	incfsz	(___flge@ff2+3),w
	goto	u5005
	goto	u5006
u5005:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(??___flge+0)^080h+3,f
u5006:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1

	movf	3+(??___flge+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	2+(??___flge+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??___flge+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(??___flge+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flge@ff2)

	
l557:	
	line	16
	movlw	080h
	xorwf	(___flge@ff1+3),f
	line	17
	movlw	080h
	xorwf	(___flge@ff2+3),f
	line	18
	movf	(___flge@ff2+3),w
	subwf	(___flge@ff1+3),w
	skipz
	goto	u5015
	movf	(___flge@ff2+2),w
	subwf	(___flge@ff1+2),w
	skipz
	goto	u5015
	movf	(___flge@ff2+1),w
	subwf	(___flge@ff1+1),w
	skipz
	goto	u5015
	movf	(___flge@ff2),w
	subwf	(___flge@ff1),w
u5015:
	skipnc
	goto	u5011
	goto	u5010
u5011:
	goto	l3196
u5010:
	
l3194:	
	clrc
	
	goto	l558
	
l3196:	
	setc
	
	line	19
	
l558:	
	return
	callstack 0
GLOBAL	__end_of___flge
	__end_of___flge:
	signat	___flge,8312
	global	___fleq

;; *************** function ___fleq *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\fleq.c"
;; Parameters:    Size  Location     Type
;;  ff1             4    0[COMMON] unsigned char 
;;  ff2             4    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\fleq.c"
	line	4
global __ptext21
__ptext21:	;psect for function ___fleq
psect	text21
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\fleq.c"
	line	4
	
___fleq:	
;incstack = 0
	callstack 6
; Regs used in ___fleq: [wreg+status,2+status,0]
	line	7
	
l3168:	
	movlw	0
	andwf	(___fleq@ff1),w
	movwf	(??___fleq+0)+0
	movlw	0
	andwf	(___fleq@ff1+1),w
	movwf	((??___fleq+0)+0+1)
	movlw	080h
	andwf	(___fleq@ff1+2),w
	movwf	((??___fleq+0)+0+2)
	movlw	07Fh
	andwf	(___fleq@ff1+3),w
	movwf	((??___fleq+0)+0+3)
	movf	3+(??___fleq+0)+0,w
	iorwf	2+(??___fleq+0)+0,w
	iorwf	1+(??___fleq+0)+0,w
	iorwf	0+(??___fleq+0)+0,w
	skipz
	goto	u4921
	goto	u4920
u4921:
	goto	l549
u4920:
	line	8
	
l3170:	
	movlw	high highword(0)
	movwf	(___fleq@ff1+3)
	movlw	low highword(0)
	movwf	(___fleq@ff1+2)
	movlw	high(0)
	movwf	(___fleq@ff1+1)
	movlw	low(0)
	movwf	(___fleq@ff1)

	
l549:	
	line	9
	movlw	0
	andwf	(___fleq@ff2),w
	movwf	(??___fleq+0)+0
	movlw	0
	andwf	(___fleq@ff2+1),w
	movwf	((??___fleq+0)+0+1)
	movlw	080h
	andwf	(___fleq@ff2+2),w
	movwf	((??___fleq+0)+0+2)
	movlw	07Fh
	andwf	(___fleq@ff2+3),w
	movwf	((??___fleq+0)+0+3)
	movf	3+(??___fleq+0)+0,w
	iorwf	2+(??___fleq+0)+0,w
	iorwf	1+(??___fleq+0)+0,w
	iorwf	0+(??___fleq+0)+0,w
	skipz
	goto	u4931
	goto	u4930
u4931:
	goto	l550
u4930:
	line	10
	
l3172:	
	movlw	high highword(0)
	movwf	(___fleq@ff2+3)
	movlw	low highword(0)
	movwf	(___fleq@ff2+2)
	movlw	high(0)
	movwf	(___fleq@ff2+1)
	movlw	low(0)
	movwf	(___fleq@ff2)

	
l550:	
	line	11
	movf	(___fleq@ff2+3),w
	xorwf	(___fleq@ff1+3),w
	skipz
	goto	u4945
	movf	(___fleq@ff2+2),w
	xorwf	(___fleq@ff1+2),w
	skipz
	goto	u4945
	movf	(___fleq@ff2+1),w
	xorwf	(___fleq@ff1+1),w
	skipz
	goto	u4945
	movf	(___fleq@ff2),w
	xorwf	(___fleq@ff1),w
u4945:
	skipnz
	goto	u4941
	goto	u4940
u4941:
	goto	l3176
u4940:
	
l3174:	
	clrc
	
	goto	l551
	
l3176:	
	setc
	
	line	12
	
l551:	
	return
	callstack 0
GLOBAL	__end_of___fleq
	__end_of___fleq:
	signat	___fleq,8312
	global	_memset

;; *************** function _memset *****************
;; Defined at:
;;		line 8 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\memset.c"
;; Parameters:    Size  Location     Type
;;  p1              1    wreg     PTR void 
;;		 -> main@Str(50), 
;;  c               2    0[COMMON] int 
;;  n               2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  p1              1    5[COMMON] PTR void 
;;		 -> main@Str(50), 
;;  p               1    6[COMMON] PTR unsigned char 
;;		 -> main@Str(50), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=3
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\memset.c"
	line	8
global __ptext22
__ptext22:	;psect for function _memset
psect	text22
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\memset.c"
	line	8
	
_memset:	
;incstack = 0
	callstack 7
; Regs used in _memset: [wreg-fsr0h+status,2+status,0]
;memset@p1 stored from wreg
	movwf	(memset@p1)
	line	18
	
l3412:	
	movf	(memset@p1),w
	movwf	(??_memset+0)+0
	movf	(??_memset+0)+0,w
	movwf	(memset@p)
	line	19
	goto	l3418
	line	20
	
l3414:	
	movf	(memset@c),w
	movwf	(??_memset+0)+0
	movf	(memset@p),w
	movwf	fsr0
	movf	(??_memset+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3416:	
	movlw	low(01h)
	movwf	(??_memset+0)+0
	movf	(??_memset+0)+0,w
	addwf	(memset@p),f
	line	19
	
l3418:	
	movlw	01h
	subwf	(memset@n),f
	movlw	0
	skipc
	decf	(memset@n+1),f
	subwf	(memset@n+1),f
		incf	(((memset@n))),w
	skipz
	goto	u5421
	incf	(((memset@n+1))),w
	btfss	status,2
	goto	u5421
	goto	u5420
u5421:
	goto	l3414
u5420:
	line	22
	
l856:	
	return
	callstack 0
GLOBAL	__end_of_memset
	__end_of_memset:
	signat	_memset,12409
	global	___fldiv

;; *************** function ___fldiv *****************
;; Defined at:
;;		line 8 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\sprcdiv.c"
;; Parameters:    Size  Location     Type
;;  a               4   32[BANK0 ] PTR void 
;;  b               4   36[BANK0 ] PTR void 
;; Auto vars:     Size  Location     Type
;;  grs             4   52[BANK0 ] unsigned long 
;;  rem             4   45[BANK0 ] unsigned long 
;;  new_exp         2   50[BANK0 ] int 
;;  aexp            1   57[BANK0 ] unsigned char 
;;  bexp            1   56[BANK0 ] unsigned char 
;;  sign            1   49[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   32[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0      13       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0      26       0       0       0
;;Total ram usage:       26 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\sprcdiv.c"
	line	8
global __ptext23
__ptext23:	;psect for function ___fldiv
psect	text23
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\sprcdiv.c"
	line	8
	
___fldiv:	
;incstack = 0
	callstack 7
; Regs used in ___fldiv: [wreg+status,2+status,0+btemp+1]
	line	26
	
l3628:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(___fldiv@b)+03h,w
	andlw	080h
	movwf	(??___fldiv+0)+0
	movf	(??___fldiv+0)+0,w
	movwf	(___fldiv@sign)
	line	27
	
l3630:	
	movf	0+(___fldiv@b)+03h,w
	movwf	(??___fldiv+0)+0
	addwf	(??___fldiv+0)+0,w
	movwf	(??___fldiv+1)+0
	movf	(??___fldiv+1)+0,w
	movwf	(___fldiv@bexp)
	line	28
	
l3632:	
	btfss	0+(___fldiv@b)+02h,(7)&7
	goto	u5781
	goto	u5780
u5781:
	goto	l3636
u5780:
	line	29
	
l3634:	
	bsf	(___fldiv@bexp)+(0/8),(0)&7
	line	33
	
l3636:	
	movf	((___fldiv@bexp)),w
	btfsc	status,2
	goto	u5791
	goto	u5790
u5791:
	goto	l3646
u5790:
	line	35
	
l3638:	
		incf	((___fldiv@bexp)),w
	btfss	status,2
	goto	u5801
	goto	u5800
u5801:
	goto	l3642
u5800:
	line	37
	
l3640:	
	movlw	0x0
	movwf	(___fldiv@b+3)
	movlw	0x0
	movwf	(___fldiv@b+2)
	movlw	0x0
	movwf	(___fldiv@b+1)
	movlw	0x0
	movwf	(___fldiv@b)

	line	40
	
l3642:	
	bsf	(___fldiv@b)+(23/8),(23)&7
	line	42
	
l3644:	
	clrf	0+(___fldiv@b)+03h
	line	43
	goto	l3648
	line	46
	
l3646:	
	movlw	0x0
	movwf	(___fldiv@b+3)
	movlw	0x0
	movwf	(___fldiv@b+2)
	movlw	0x0
	movwf	(___fldiv@b+1)
	movlw	0x0
	movwf	(___fldiv@b)

	line	49
	
l3648:	
	movf	0+(___fldiv@a)+03h,w
	andlw	080h
	movwf	(??___fldiv+0)+0
	movf	(??___fldiv+0)+0,w
	xorwf	(___fldiv@sign),f
	line	50
	
l3650:	
	movf	0+(___fldiv@a)+03h,w
	movwf	(??___fldiv+0)+0
	addwf	(??___fldiv+0)+0,w
	movwf	(??___fldiv+1)+0
	movf	(??___fldiv+1)+0,w
	movwf	(___fldiv@aexp)
	line	51
	
l3652:	
	btfss	0+(___fldiv@a)+02h,(7)&7
	goto	u5811
	goto	u5810
u5811:
	goto	l3656
u5810:
	line	52
	
l3654:	
	bsf	(___fldiv@aexp)+(0/8),(0)&7
	line	56
	
l3656:	
	movf	((___fldiv@aexp)),w
	btfsc	status,2
	goto	u5821
	goto	u5820
u5821:
	goto	l3666
u5820:
	line	58
	
l3658:	
		incf	((___fldiv@aexp)),w
	btfss	status,2
	goto	u5831
	goto	u5830
u5831:
	goto	l3662
u5830:
	line	60
	
l3660:	
	movlw	0x0
	movwf	(___fldiv@a+3)
	movlw	0x0
	movwf	(___fldiv@a+2)
	movlw	0x0
	movwf	(___fldiv@a+1)
	movlw	0x0
	movwf	(___fldiv@a)

	line	63
	
l3662:	
	bsf	(___fldiv@a)+(23/8),(23)&7
	line	65
	
l3664:	
	clrf	0+(___fldiv@a)+03h
	line	66
	goto	l746
	line	69
	
l3666:	
	movlw	0x0
	movwf	(___fldiv@a+3)
	movlw	0x0
	movwf	(___fldiv@a+2)
	movlw	0x0
	movwf	(___fldiv@a+1)
	movlw	0x0
	movwf	(___fldiv@a)

	line	70
	
l746:	
	line	75
	movf	(___fldiv@a+3),w
	iorwf	(___fldiv@a+2),w
	iorwf	(___fldiv@a+1),w
	iorwf	(___fldiv@a),w
	skipz
	goto	u5841
	goto	u5840
u5841:
	goto	l3676
u5840:
	line	76
	
l3668:	
	movlw	high highword(0)
	movwf	(___fldiv@b+3)
	movlw	low highword(0)
	movwf	(___fldiv@b+2)
	movlw	high(0)
	movwf	(___fldiv@b+1)
	movlw	low(0)
	movwf	(___fldiv@b)

	line	77
	movlw	080h
	iorwf	0+(___fldiv@b)+02h,f
	movlw	07Fh
	iorwf	1+(___fldiv@b)+02h,f
	line	78
	
l3670:	
	movf	(___fldiv@sign),w
	movwf	(??___fldiv+0)+0
	movf	(??___fldiv+0)+0,w
	iorwf	0+(___fldiv@b)+03h,f
	line	79
	
l3672:	
	movf	(___fldiv@b+3),w
	movwf	(?___fldiv+3)
	movf	(___fldiv@b+2),w
	movwf	(?___fldiv+2)
	movf	(___fldiv@b+1),w
	movwf	(?___fldiv+1)
	movf	(___fldiv@b),w
	movwf	(?___fldiv)

	goto	l748
	line	83
	
l3676:	
	movf	((___fldiv@bexp)),w
	btfss	status,2
	goto	u5851
	goto	u5850
u5851:
	goto	l3682
u5850:
	line	84
	
l3678:	
	line	85
	movlw	high highword(0)
	movwf	(?___fldiv+3)
	movlw	low highword(0)
	movwf	(?___fldiv+2)
	movlw	high(0)
	movwf	(?___fldiv+1)
	movlw	low(0)
	movwf	(?___fldiv)

	goto	l748
	line	89
	
l3682:	
	movf	(___fldiv@bexp),w
	movwf	(??___fldiv+0)+0
	clrf	(??___fldiv+0)+0+1
	movf	1+(??___fldiv+0)+0,w
	movwf	(??___fldiv+2)+0+1
	movf	(___fldiv@aexp),w
	subwf	0+(??___fldiv+0)+0,w
	movwf	(??___fldiv+2)+0
	skipc
	decf	(??___fldiv+2)+0+1,f
	movf	0+(??___fldiv+2)+0,w
	addlw	low(07Fh)
	movwf	(___fldiv@new_exp)
	movf	1+(??___fldiv+2)+0,w
	skipnc
	addlw	1
	addlw	high(07Fh)
	movwf	1+(___fldiv@new_exp)
	line	92
	
l3684:	
	movf	(___fldiv@b+3),w
	movwf	(___fldiv@rem+3)
	movf	(___fldiv@b+2),w
	movwf	(___fldiv@rem+2)
	movf	(___fldiv@b+1),w
	movwf	(___fldiv@rem+1)
	movf	(___fldiv@b),w
	movwf	(___fldiv@rem)

	line	93
	
l3686:	
	movlw	high highword(0)
	movwf	(___fldiv@b+3)
	movlw	low highword(0)
	movwf	(___fldiv@b+2)
	movlw	high(0)
	movwf	(___fldiv@b+1)
	movlw	low(0)
	movwf	(___fldiv@b)

	line	94
	
l3688:	
	movlw	high highword(0)
	movwf	(___fldiv@grs+3)
	movlw	low highword(0)
	movwf	(___fldiv@grs+2)
	movlw	high(0)
	movwf	(___fldiv@grs+1)
	movlw	low(0)
	movwf	(___fldiv@grs)

	line	96
	
l3690:	
	clrf	(___fldiv@aexp)
	line	97
	goto	l3710
	line	100
	
l3692:	
	movf	((___fldiv@aexp)),w
	btfsc	status,2
	goto	u5861
	goto	u5860
u5861:
	goto	l3702
u5860:
	line	101
	
l3694:	
	movlw	01h
	movwf	(??___fldiv+0)+0
u5875:
	clrc
	rlf	(___fldiv@rem),f
	rlf	(___fldiv@rem+1),f
	rlf	(___fldiv@rem+2),f
	rlf	(___fldiv@rem+3),f
	decfsz	(??___fldiv+0)+0
	goto	u5875
	line	102
	movlw	01h
	movwf	(??___fldiv+0)+0
u5885:
	clrc
	rlf	(___fldiv@b),f
	rlf	(___fldiv@b+1),f
	rlf	(___fldiv@b+2),f
	rlf	(___fldiv@b+3),f
	decfsz	(??___fldiv+0)+0
	goto	u5885
	line	103
	
l3696:	
	btfss	(___fldiv@grs+3),(31)&7
	goto	u5891
	goto	u5890
u5891:
	goto	l3700
u5890:
	line	104
	
l3698:	
	bsf	(___fldiv@b)+(0/8),(0)&7
	line	106
	
l3700:	
	movlw	01h
	movwf	(??___fldiv+0)+0
u5905:
	clrc
	rlf	(___fldiv@grs),f
	rlf	(___fldiv@grs+1),f
	rlf	(___fldiv@grs+2),f
	rlf	(___fldiv@grs+3),f
	decfsz	(??___fldiv+0)+0
	goto	u5905
	line	112
	
l3702:	
	movf	(___fldiv@a+3),w
	subwf	(___fldiv@rem+3),w
	skipz
	goto	u5915
	movf	(___fldiv@a+2),w
	subwf	(___fldiv@rem+2),w
	skipz
	goto	u5915
	movf	(___fldiv@a+1),w
	subwf	(___fldiv@rem+1),w
	skipz
	goto	u5915
	movf	(___fldiv@a),w
	subwf	(___fldiv@rem),w
u5915:
	skipc
	goto	u5911
	goto	u5910
u5911:
	goto	l3708
u5910:
	line	115
	
l3704:	
	bsf	(___fldiv@grs)+(30/8),(30)&7
	line	116
	
l3706:	
	movf	(___fldiv@a),w
	subwf	(___fldiv@rem),f
	movf	(___fldiv@a+1),w
	skipc
	incfsz	(___fldiv@a+1),w
	subwf	(___fldiv@rem+1),f
	movf	(___fldiv@a+2),w
	skipc
	incfsz	(___fldiv@a+2),w
	subwf	(___fldiv@rem+2),f
	movf	(___fldiv@a+3),w
	skipc
	incfsz	(___fldiv@a+3),w
	subwf	(___fldiv@rem+3),f
	line	118
	
l3708:	
	movlw	low(01h)
	movwf	(??___fldiv+0)+0
	movf	(??___fldiv+0)+0,w
	addwf	(___fldiv@aexp),f
	line	97
	
l3710:	
	movlw	low(01Ah)
	subwf	(___fldiv@aexp),w
	skipc
	goto	u5921
	goto	u5920
u5921:
	goto	l3692
u5920:
	line	122
	
l3712:	
	movf	(___fldiv@rem+3),w
	iorwf	(___fldiv@rem+2),w
	iorwf	(___fldiv@rem+1),w
	iorwf	(___fldiv@rem),w
	skipnz
	goto	u5931
	goto	u5930
u5931:
	goto	l3726
u5930:
	line	123
	
l3714:	
	bsf	(___fldiv@grs)+(0/8),(0)&7
	goto	l3726
	line	128
	
l3716:	
	movlw	01h
	movwf	(??___fldiv+0)+0
u5945:
	clrc
	rlf	(___fldiv@b),f
	rlf	(___fldiv@b+1),f
	rlf	(___fldiv@b+2),f
	rlf	(___fldiv@b+3),f
	decfsz	(??___fldiv+0)+0
	goto	u5945
	line	129
	
l3718:	
	btfss	(___fldiv@grs+3),(31)&7
	goto	u5951
	goto	u5950
u5951:
	goto	l3722
u5950:
	line	130
	
l3720:	
	bsf	(___fldiv@b)+(0/8),(0)&7
	line	132
	
l3722:	
	movlw	01h
	movwf	(??___fldiv+0)+0
u5965:
	clrc
	rlf	(___fldiv@grs),f
	rlf	(___fldiv@grs+1),f
	rlf	(___fldiv@grs+2),f
	rlf	(___fldiv@grs+3),f
	decfsz	(??___fldiv+0)+0
	goto	u5965
	line	133
	
l3724:	
	movlw	0FFh
	addwf	(___fldiv@new_exp),f
	skipnc
	incf	(___fldiv@new_exp+1),f
	movlw	0FFh
	addwf	(___fldiv@new_exp+1),f
	line	127
	
l3726:	
	btfss	(___fldiv@b+2),(23)&7
	goto	u5971
	goto	u5970
u5971:
	goto	l3716
u5970:
	line	139
	
l3728:	
	clrf	(___fldiv@aexp)
	line	140
	
l3730:	
	btfss	(___fldiv@grs+3),(31)&7
	goto	u5981
	goto	u5980
u5981:
	goto	l3738
u5980:
	line	141
	
l3732:	
	movlw	0FFh
	andwf	(___fldiv@grs),w
	movwf	(??___fldiv+0)+0
	movlw	0FFh
	andwf	(___fldiv@grs+1),w
	movwf	((??___fldiv+0)+0+1)
	movlw	0FFh
	andwf	(___fldiv@grs+2),w
	movwf	((??___fldiv+0)+0+2)
	movlw	07Fh
	andwf	(___fldiv@grs+3),w
	movwf	((??___fldiv+0)+0+3)
	movf	3+(??___fldiv+0)+0,w
	iorwf	2+(??___fldiv+0)+0,w
	iorwf	1+(??___fldiv+0)+0,w
	iorwf	0+(??___fldiv+0)+0,w
	skipnz
	goto	u5991
	goto	u5990
u5991:
	goto	l762
u5990:
	line	142
	
l3734:	
	clrf	(___fldiv@aexp)
	incf	(___fldiv@aexp),f
	line	143
	goto	l3738
	line	144
	
l762:	
	line	145
	btfss	(___fldiv@b),(0)&7
	goto	u6001
	goto	u6000
u6001:
	goto	l3738
u6000:
	goto	l3734
	line	150
	
l3738:	
	movf	((___fldiv@aexp)),w
	btfsc	status,2
	goto	u6011
	goto	u6010
u6011:
	goto	l3748
u6010:
	line	151
	
l3740:	
	movlw	01h
	addwf	(___fldiv@b),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fldiv@b+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fldiv@b+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___fldiv@b+3),f
	line	152
	
l3742:	
	btfss	(___fldiv@b+3),(24)&7
	goto	u6021
	goto	u6020
u6021:
	goto	l3748
u6020:
	line	153
	
l3744:	
	movf	(___fldiv@b),w
	movwf	(??___fldiv+0)+0
	movf	(___fldiv@b+1),w
	movwf	((??___fldiv+0)+0+1)
	movf	(___fldiv@b+2),w
	movwf	((??___fldiv+0)+0+2)
	movf	(___fldiv@b+3),w
	movwf	((??___fldiv+0)+0+3)
	movlw	01h
	movwf	(??___fldiv+4)+0
u6035:
	rlf	(??___fldiv+0)+3,w
	rrf	(??___fldiv+0)+3,f
	rrf	(??___fldiv+0)+2,f
	rrf	(??___fldiv+0)+1,f
	rrf	(??___fldiv+0)+0,f
u6030:
	decfsz	(??___fldiv+4)+0,f
	goto	u6035
	movf	3+(??___fldiv+0)+0,w
	movwf	(___fldiv@b+3)
	movf	2+(??___fldiv+0)+0,w
	movwf	(___fldiv@b+2)
	movf	1+(??___fldiv+0)+0,w
	movwf	(___fldiv@b+1)
	movf	0+(??___fldiv+0)+0,w
	movwf	(___fldiv@b)

	line	154
	
l3746:	
	movlw	01h
	addwf	(___fldiv@new_exp),f
	skipnc
	incf	(___fldiv@new_exp+1),f
	movlw	0
	addwf	(___fldiv@new_exp+1),f
	line	159
	
l3748:	
	movf	(___fldiv@new_exp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u6045
	movlw	0FFh
	subwf	(___fldiv@new_exp),w
u6045:

	skipc
	goto	u6041
	goto	u6040
u6041:
	goto	l3752
u6040:
	line	160
	
l3750:	
	movlw	0FFh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@new_exp)
	movlw	0
	movwf	((___fldiv@new_exp))+1
	line	161
	movlw	high highword(0)
	movwf	(___fldiv@b+3)
	movlw	low highword(0)
	movwf	(___fldiv@b+2)
	movlw	high(0)
	movwf	(___fldiv@b+1)
	movlw	low(0)
	movwf	(___fldiv@b)

	line	165
	
l3752:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fldiv@new_exp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u6055
	movlw	01h
	subwf	(___fldiv@new_exp),w
u6055:

	skipnc
	goto	u6051
	goto	u6050
u6051:
	goto	l768
u6050:
	line	166
	
l3754:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___fldiv@new_exp)
	clrf	(___fldiv@new_exp+1)
	line	167
	
l3756:	
	movlw	high highword(0)
	movwf	(___fldiv@b+3)
	movlw	low highword(0)
	movwf	(___fldiv@b+2)
	movlw	high(0)
	movwf	(___fldiv@b+1)
	movlw	low(0)
	movwf	(___fldiv@b)

	line	169
	
l3758:	
	clrf	(___fldiv@sign)
	line	170
	
l768:	
	line	173
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fldiv@new_exp),w
	movwf	(??___fldiv+0)+0
	movf	(??___fldiv+0)+0,w
	movwf	(___fldiv@bexp)
	line	175
	
l3760:	
	btfss	(___fldiv@bexp),(0)&7
	goto	u6061
	goto	u6060
u6061:
	goto	l3764
u6060:
	line	176
	
l3762:	
	bsf	0+(___fldiv@b)+02h+(7/8),(7)&7
	line	177
	goto	l770
	line	180
	
l3764:	
	movlw	low(07Fh)
	movwf	(??___fldiv+0)+0
	movf	(??___fldiv+0)+0,w
	andwf	0+(___fldiv@b)+02h,f
	line	181
	
l770:	
	line	182
	movf	(___fldiv@bexp),w
	movwf	(??___fldiv+0)+0
	clrc
	rrf	(??___fldiv+0)+0,w
	movwf	(??___fldiv+1)+0
	movf	(??___fldiv+1)+0,w
	movwf	0+(___fldiv@b)+03h
	line	183
	movf	(___fldiv@sign),w
	movwf	(??___fldiv+0)+0
	movf	(??___fldiv+0)+0,w
	iorwf	0+(___fldiv@b)+03h,f
	goto	l3672
	line	185
	
l748:	
	return
	callstack 0
GLOBAL	__end_of___fldiv
	__end_of___fldiv:
	signat	___fldiv,8316
	global	_UART_SendTxt

;; *************** function _UART_SendTxt *****************
;; Defined at:
;;		line 27 in file "Uart.c"
;; Parameters:    Size  Location     Type
;;  Str             2    1[COMMON] PTR unsigned char 
;;		 -> STR_4(3), main@Str(50), STR_1(19), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_UART_TxChar
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	file	"Uart.c"
	line	27
global __ptext24
__ptext24:	;psect for function _UART_SendTxt
psect	text24
	file	"Uart.c"
	line	27
	
_UART_SendTxt:	
;incstack = 0
	callstack 6
; Regs used in _UART_SendTxt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	29
	
l3318:	
;Uart.c: 27: void UART_SendTxt(char* Str);Uart.c: 28: {;Uart.c: 29:     while(*Str)
	goto	l3324
	line	31
	
l3320:	
;Uart.c: 30:     {;Uart.c: 31:         UART_TxChar(*Str);
	movf	(UART_SendTxt@Str+1),w
	movwf	btemp+1
	movf	(UART_SendTxt@Str),w
	movwf	fsr0
	fcall	stringtab
	fcall	_UART_TxChar
	line	32
	
l3322:	
;Uart.c: 32:         Str++;
	movlw	01h
	addwf	(UART_SendTxt@Str),f
	skipnc
	incf	(UART_SendTxt@Str+1),f
	movlw	0
	addwf	(UART_SendTxt@Str+1),f
	line	29
	
l3324:	
;Uart.c: 29:     while(*Str)
	movf	(UART_SendTxt@Str+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(UART_SendTxt@Str),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipz
	goto	u5341
	goto	u5340
u5341:
	goto	l3320
u5340:
	line	34
	
l37:	
	return
	callstack 0
GLOBAL	__end_of_UART_SendTxt
	__end_of_UART_SendTxt:
	signat	_UART_SendTxt,4217
	global	_UART_TxChar

;; *************** function _UART_TxChar *****************
;; Defined at:
;;		line 12 in file "Uart.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_SendTxt
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	line	12
global __ptext25
__ptext25:	;psect for function _UART_TxChar
psect	text25
	file	"Uart.c"
	line	12
	
_UART_TxChar:	
;incstack = 0
	callstack 6
; Regs used in _UART_TxChar: [wreg]
;UART_TxChar@ch stored from wreg
	movwf	(UART_TxChar@ch)
	line	14
	
l2920:	
;Uart.c: 12: void UART_TxChar(char ch);Uart.c: 13: {;Uart.c: 14:     while(TXIF==0);
	
l22:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7	;volatile
	goto	u4251
	goto	u4250
u4251:
	goto	l22
u4250:
	
l24:	
	line	15
;Uart.c: 15:     TXIF=0;
	bcf	(100/8),(100)&7	;volatile
	line	16
	
l2922:	
;Uart.c: 16:     TXREG=ch;
	movf	(UART_TxChar@ch),w
	movwf	(25)	;volatile
	line	17
	
l25:	
	return
	callstack 0
GLOBAL	__end_of_UART_TxChar
	__end_of_UART_TxChar:
	signat	_UART_TxChar,4217
	global	_UART_Init

;; *************** function _UART_Init *****************
;; Defined at:
;;		line 3 in file "Uart.c"
;; Parameters:    Size  Location     Type
;;  baudRate        2    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___lldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	line	3
global __ptext26
__ptext26:	;psect for function _UART_Init
psect	text26
	file	"Uart.c"
	line	3
	
_UART_Init:	
;incstack = 0
	callstack 6
; Regs used in _UART_Init: [wreg+status,2+status,0+pclath+cstack]
	line	5
	
l3314:	
;Uart.c: 3: void UART_Init(int baudRate);Uart.c: 4: {;Uart.c: 5:     TRISC=0x80;
	movlw	low(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	6
;Uart.c: 6:     TXSTA=(1<<5);
	movlw	low(020h)
	movwf	(152)^080h	;volatile
	line	7
;Uart.c: 7:     RCSTA=(1<<7) | (1<<4);
	movlw	low(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	8
	
l3316:	
;Uart.c: 8:     SPBRG = ( 16000000UL /(long)(64UL*baudRate))-1;
	movf	(UART_Init@baudRate),w
	movwf	((??_UART_Init+0)+0)
	movf	(UART_Init@baudRate+1),w
	movwf	((??_UART_Init+0)+0+1)
	movlw	0
	btfsc	((??_UART_Init+0)+0+1),7
	movlw	255
	movwf	((??_UART_Init+0)+0+2)
	movwf	((??_UART_Init+0)+0+3)
	movlw	06h
u5335:
	clrc
	rlf	(??_UART_Init+0)+0,f
	rlf	(??_UART_Init+0)+1,f
	rlf	(??_UART_Init+0)+2,f
	rlf	(??_UART_Init+0)+3,f
u5330:
	addlw	-1
	skipz
	goto	u5335
	movf	3+(??_UART_Init+0)+0,w
	movwf	(___lldiv@divisor+3)
	movf	2+(??_UART_Init+0)+0,w
	movwf	(___lldiv@divisor+2)
	movf	1+(??_UART_Init+0)+0,w
	movwf	(___lldiv@divisor+1)
	movf	0+(??_UART_Init+0)+0,w
	movwf	(___lldiv@divisor)

	movlw	0
	movwf	(___lldiv@dividend+3)
	movlw	0F4h
	movwf	(___lldiv@dividend+2)
	movlw	024h
	movwf	(___lldiv@dividend+1)
	movlw	0
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	movf	(0+(?___lldiv)),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	9
	
l19:	
	return
	callstack 0
GLOBAL	__end_of_UART_Init
	__end_of_UART_Init:
	signat	_UART_Init,4217
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\__lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    9[COMMON] unsigned long 
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_Init
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\__lldiv.c"
	line	5
global __ptext27
__ptext27:	;psect for function ___lldiv
psect	text27
	file	"C:\Program Files\Microchip\xc8\v2.35\pic\sources\c90\common\__lldiv.c"
	line	5
	
___lldiv:	
;incstack = 0
	callstack 6
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	13
	
l3144:	
	movlw	high highword(0)
	movwf	(___lldiv@quotient+3)
	movlw	low highword(0)
	movwf	(___lldiv@quotient+2)
	movlw	high(0)
	movwf	(___lldiv@quotient+1)
	movlw	low(0)
	movwf	(___lldiv@quotient)

	line	14
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u4851
	goto	u4850
u4851:
	goto	l3164
u4850:
	line	15
	
l3146:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	16
	goto	l3150
	line	17
	
l3148:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u4865:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u4865
	line	18
	movlw	low(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	line	16
	
l3150:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u4871
	goto	u4870
u4871:
	goto	l3148
u4870:
	line	21
	
l3152:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u4885:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u4885
	line	22
	
l3154:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u4895
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u4895
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u4895
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u4895:
	skipc
	goto	u4891
	goto	u4890
u4891:
	goto	l3160
u4890:
	line	23
	
l3156:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	24
	
l3158:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	26
	
l3160:	
	movlw	01h
u4905:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u4905

	line	27
	
l3162:	
	movlw	01h
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u4911
	goto	u4910
u4911:
	goto	l3152
u4910:
	line	29
	
l3164:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	30
	
l399:	
	return
	callstack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	_PWM_Start

;; *************** function _PWM_Start *****************
;; Defined at:
;;		line 79 in file "PWM.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=0
	file	"PWM.c"
	line	79
global __ptext28
__ptext28:	;psect for function _PWM_Start
psect	text28
	file	"PWM.c"
	line	79
	
_PWM_Start:	
;incstack = 0
	callstack 7
; Regs used in _PWM_Start: [wreg]
	line	81
	
l3384:	
;PWM.c: 79: void PWM_Start(unsigned char channel);PWM.c: 80: {;PWM.c: 81:     TMR2ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7	;volatile
	line	82
	
l177:	
	return
	callstack 0
GLOBAL	__end_of_PWM_Start
	__end_of_PWM_Start:
	signat	_PWM_Start,4217
	global	_PWM_SetDutyCycle

;; *************** function _PWM_SetDutyCycle *****************
;; Defined at:
;;		line 49 in file "PWM.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;;  dutyCycle       1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=0
	line	49
global __ptext29
__ptext29:	;psect for function _PWM_SetDutyCycle
psect	text29
	file	"PWM.c"
	line	49
	
_PWM_SetDutyCycle:	
;incstack = 0
	callstack 7
; Regs used in _PWM_SetDutyCycle: [wreg-fsr0h+status,2+status,0]
;PWM_SetDutyCycle@channel stored from wreg
	movwf	(PWM_SetDutyCycle@channel)
	line	51
	
l3368:	
;PWM.c: 49: void PWM_SetDutyCycle(unsigned char channel,unsigned char dutyCycle);PWM.c: 50: {;PWM.c: 51:     if(dutyCycle>100)
	movlw	low(065h)
	subwf	(PWM_SetDutyCycle@dutyCycle),w
	skipc
	goto	u5371
	goto	u5370
u5371:
	goto	l3378
u5370:
	line	52
	
l3370:	
;PWM.c: 52:         dutyCycle = 100;
	movlw	low(064h)
	movwf	(??_PWM_SetDutyCycle+0)+0
	movf	(??_PWM_SetDutyCycle+0)+0,w
	movwf	(PWM_SetDutyCycle@dutyCycle)
	goto	l3378
	line	57
	
l3372:	
;PWM.c: 57:         CCPR1L = dutyCycle;
	movf	(PWM_SetDutyCycle@dutyCycle),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	58
;PWM.c: 58:         break;
	goto	l174
	line	61
	
l3374:	
;PWM.c: 61:         CCPR2L = dutyCycle;
	movf	(PWM_SetDutyCycle@dutyCycle),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	line	62
;PWM.c: 62:         break;
	goto	l174
	line	63
	
l3378:	
	movf	(PWM_SetDutyCycle@channel),w
	movwf	(??_PWM_SetDutyCycle+0)+0
	clrf	(??_PWM_SetDutyCycle+0)+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 1+(??_PWM_SetDutyCycle+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l3904
	goto	l174
	asmopt pop
	
l3904:	
; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           14     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 0+(??_PWM_SetDutyCycle+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l3372
	xorlw	1^0	; case 1
	skipnz
	goto	l3374
	goto	l174
	asmopt pop

	line	64
	
l174:	
	return
	callstack 0
GLOBAL	__end_of_PWM_SetDutyCycle
	__end_of_PWM_SetDutyCycle:
	signat	_PWM_SetDutyCycle,8313
	global	_PWM_Init

;; *************** function _PWM_Init *****************
;; Defined at:
;;		line 10 in file "PWM.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	line	10
global __ptext30
__ptext30:	;psect for function _PWM_Init
psect	text30
	file	"PWM.c"
	line	10
	
_PWM_Init:	
;incstack = 0
	callstack 7
; Regs used in _PWM_Init: [wreg-fsr0h+status,2+status,0]
;PWM_Init@channel stored from wreg
	movwf	(PWM_Init@channel)
	line	12
	
l3350:	
;PWM.c: 10: void PWM_Init(unsigned char channel);PWM.c: 11: {;PWM.c: 12:     switch (channel)
	goto	l3362
	line	15
	
l3352:	
;PWM.c: 15:         CCP1CON = 0x0F;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	16
;PWM.c: 16:         PR2 = 100;
	movlw	low(064h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	17
;PWM.c: 17:         CCPR1L = 50;
	movlw	low(032h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	18
	
l3354:	
;PWM.c: 18:         ((TRISC) &= ~(1<<(2)));
	movlw	low(0FBh)
	movwf	(??_PWM_Init+0)+0
	movf	(??_PWM_Init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	line	19
;PWM.c: 19:         break;
	goto	l166
	line	22
	
l3356:	
;PWM.c: 22:         CCP2CON = 0x0F;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(29)	;volatile
	line	23
;PWM.c: 23:         PR2 = 100;
	movlw	low(064h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	24
;PWM.c: 24:         CCPR2L = 50;
	movlw	low(032h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	line	25
	
l3358:	
;PWM.c: 25:         ((TRISC) &= ~(1<<(1)));
	movlw	low(0FDh)
	movwf	(??_PWM_Init+0)+0
	movf	(??_PWM_Init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	line	26
;PWM.c: 26:         break;
	goto	l166
	line	27
	
l3362:	
	movf	(PWM_Init@channel),w
	movwf	(??_PWM_Init+0)+0
	clrf	(??_PWM_Init+0)+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 1+(??_PWM_Init+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l3906
	goto	l166
	asmopt pop
	
l3906:	
; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           14     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 0+(??_PWM_Init+0)+0,w
	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l3352
	xorlw	1^0	; case 1
	skipnz
	goto	l3356
	goto	l166
	asmopt pop

	line	28
	
l166:	
	return
	callstack 0
GLOBAL	__end_of_PWM_Init
	__end_of_PWM_Init:
	signat	_PWM_Init,4217
	global	_LCD_Print

;; *************** function _LCD_Print *****************
;; Defined at:
;;		line 80 in file "LCD.c"
;; Parameters:    Size  Location     Type
;;  Str             2    4[COMMON] PTR unsigned char 
;;		 -> main@Str(50), STR_2(17), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_Lcd_DataWrite
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,group=0
	file	"LCD.c"
	line	80
global __ptext31
__ptext31:	;psect for function _LCD_Print
psect	text31
	file	"LCD.c"
	line	80
	
_LCD_Print:	
;incstack = 0
	callstack 5
; Regs used in _LCD_Print: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	82
	
l3392:	
;LCD.c: 80: void LCD_Print(char* Str);LCD.c: 81: {;LCD.c: 82:     while(*Str)
	goto	l3398
	line	84
	
l3394:	
;LCD.c: 83:     {;LCD.c: 84:         Lcd_DataWrite(*Str);
	movf	(LCD_Print@Str+1),w
	movwf	btemp+1
	movf	(LCD_Print@Str),w
	movwf	fsr0
	fcall	stringtab
	fcall	_Lcd_DataWrite
	line	85
	
l3396:	
;LCD.c: 85:         Str++;
	movlw	01h
	addwf	(LCD_Print@Str),f
	skipnc
	incf	(LCD_Print@Str+1),f
	movlw	0
	addwf	(LCD_Print@Str+1),f
	line	82
	
l3398:	
;LCD.c: 82:     while(*Str)
	movf	(LCD_Print@Str+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(LCD_Print@Str),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipz
	goto	u5391
	goto	u5390
u5391:
	goto	l3394
u5390:
	line	87
	
l118:	
	return
	callstack 0
GLOBAL	__end_of_LCD_Print
	__end_of_LCD_Print:
	signat	_LCD_Print,4217
	global	_Lcd_DataWrite

;; *************** function _Lcd_DataWrite *****************
;; Defined at:
;;		line 51 in file "LCD.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_LCD_Enable
;; This function is called by:
;;		_LCD_Print
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1,group=0
	line	51
global __ptext32
__ptext32:	;psect for function _Lcd_DataWrite
psect	text32
	file	"LCD.c"
	line	51
	
_Lcd_DataWrite:	
;incstack = 0
	callstack 5
; Regs used in _Lcd_DataWrite: [wreg+status,2+status,0+pclath+cstack]
;Lcd_DataWrite@dat stored from wreg
	movwf	(Lcd_DataWrite@dat)
	line	53
	
l2940:	
;LCD.c: 51: void Lcd_DataWrite(char dat);LCD.c: 52: {;LCD.c: 53:     PORTD = (dat & 0xF0);
	movf	(Lcd_DataWrite@dat),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	54
	
l2942:	
;LCD.c: 54:     PORTD |= (1<<0);
	bsf	(8)+(0/8),(0)&7	;volatile
	line	55
	
l2944:	
;LCD.c: 55:     PORTD &= ~(1<<1);
	movlw	low(0FDh)
	movwf	(??_Lcd_DataWrite+0)+0
	movf	(??_Lcd_DataWrite+0)+0,w
	andwf	(8),f	;volatile
	line	56
	
l2946:	
;LCD.c: 56:     LCD_Enable();
	fcall	_LCD_Enable
	line	58
	
l2948:	
;LCD.c: 58:     PORTD = ((dat<<4) & 0xF0);
	movf	(Lcd_DataWrite@dat),w
	movwf	(??_Lcd_DataWrite+0)+0
	movlw	(04h)-1
u4275:
	clrc
	rlf	(??_Lcd_DataWrite+0)+0,f
	addlw	-1
	skipz
	goto	u4275
	clrc
	rlf	(??_Lcd_DataWrite+0)+0,w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	59
	
l2950:	
;LCD.c: 59:     PORTD |= (1<<0);
	bsf	(8)+(0/8),(0)&7	;volatile
	line	60
	
l2952:	
;LCD.c: 60:     PORTD &= ~(1<<1);
	movlw	low(0FDh)
	movwf	(??_Lcd_DataWrite+0)+0
	movf	(??_Lcd_DataWrite+0)+0,w
	andwf	(8),f	;volatile
	line	61
	
l2954:	
;LCD.c: 61:     LCD_Enable();
	fcall	_LCD_Enable
	line	62
	
l104:	
	return
	callstack 0
GLOBAL	__end_of_Lcd_DataWrite
	__end_of_Lcd_DataWrite:
	signat	_Lcd_DataWrite,4217
	global	_LCD_Init

;; *************** function _LCD_Init *****************
;; Defined at:
;;		line 13 in file "LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Commands        7    0[BANK0 ] unsigned char [7]
;;  i               2    7[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       9       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_Lcd_CmdWrite
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext33
__ptext33:	;psect for function _LCD_Init
psect	text33
	file	"LCD.c"
	line	13
	
_LCD_Init:	
;incstack = 0
	callstack 5
; Regs used in _LCD_Init: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	15
	
l3332:	
;LCD.c: 15:     char Commands[7] = {0x28,0x33,0x32,0x06,0x0F,0x80};
	movlw	(LCD_Init@Commands)&0ffh
	movwf	fsr0
	movlw	low(LCD_Init@F1004)
	movwf	(??_LCD_Init+0)+0
	movf	fsr0,w
	movwf	((??_LCD_Init+0)+0+1)
	movlw	7
	movwf	((??_LCD_Init+0)+0+2)
u5350:
	movf	(??_LCD_Init+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	indf,w
	movwf	((??_LCD_Init+0)+0+3)
	incf	(??_LCD_Init+0)+0,f
	movf	((??_LCD_Init+0)+0+1),w
	movwf	fsr0
	
	movf	((??_LCD_Init+0)+0+3),w
	movwf	indf
	incf	((??_LCD_Init+0)+0+1),f
	decfsz	((??_LCD_Init+0)+0+2),f
	goto	u5350
	
	line	16
	
l3334:	
	line	18
	
l3336:	
;LCD.c: 18:     TRISD = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	20
	
l3338:	
;LCD.c: 20:     for(i=0;i<7;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCD_Init@i)
	clrf	(LCD_Init@i+1)
	line	22
	
l3344:	
;LCD.c: 21:     {;LCD.c: 22:         Lcd_CmdWrite(Commands[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD_Init@i),w
	addlw	low(LCD_Init@Commands|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_Lcd_CmdWrite
	line	29
	
l3346:	
;LCD.c: 29:     }
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(LCD_Init@i),f
	skipnc
	incf	(LCD_Init@i+1),f
	movlw	0
	addwf	(LCD_Init@i+1),f
	
l3348:	
	movf	(LCD_Init@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u5365
	movlw	07h
	subwf	(LCD_Init@i),w
u5365:

	skipc
	goto	u5361
	goto	u5360
u5361:
	goto	l3344
u5360:
	line	30
	
l98:	
	return
	callstack 0
GLOBAL	__end_of_LCD_Init
	__end_of_LCD_Init:
	signat	_LCD_Init,89
	global	_LCD_GoToXY

;; *************** function _LCD_GoToXY *****************
;; Defined at:
;;		line 64 in file "LCD.c"
;; Parameters:    Size  Location     Type
;;  X               1    wreg     unsigned char 
;;  Y               1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  X               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_Lcd_CmdWrite
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1,group=0
	line	64
global __ptext34
__ptext34:	;psect for function _LCD_GoToXY
psect	text34
	file	"LCD.c"
	line	64
	
_LCD_GoToXY:	
;incstack = 0
	callstack 5
; Regs used in _LCD_GoToXY: [wreg+status,2+status,0+pclath+cstack]
;LCD_GoToXY@X stored from wreg
	movwf	(LCD_GoToXY@X)
	line	66
	
l3386:	
;LCD.c: 64: void LCD_GoToXY(char X,char Y);LCD.c: 65: {;LCD.c: 66:     if(Y == 0)
	movf	((LCD_GoToXY@Y)),w
	btfss	status,2
	goto	u5381
	goto	u5380
u5381:
	goto	l3390
u5380:
	line	68
	
l3388:	
;LCD.c: 67:     {;LCD.c: 68:         Lcd_CmdWrite(0x80 + X);
	movf	(LCD_GoToXY@X),w
	addlw	080h
	fcall	_Lcd_CmdWrite
	line	69
;LCD.c: 69:     }
	goto	l109
	line	72
	
l3390:	
;LCD.c: 71:     {;LCD.c: 72:         Lcd_CmdWrite(0xC0 + X);
	movf	(LCD_GoToXY@X),w
	addlw	0C0h
	fcall	_Lcd_CmdWrite
	line	74
	
l109:	
	return
	callstack 0
GLOBAL	__end_of_LCD_GoToXY
	__end_of_LCD_GoToXY:
	signat	_LCD_GoToXY,8313
	global	_LCD_Clear

;; *************** function _LCD_Clear *****************
;; Defined at:
;;		line 76 in file "LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_Lcd_CmdWrite
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1,group=0
	line	76
global __ptext35
__ptext35:	;psect for function _LCD_Clear
psect	text35
	file	"LCD.c"
	line	76
	
_LCD_Clear:	
;incstack = 0
	callstack 5
; Regs used in _LCD_Clear: [wreg+status,2+status,0+pclath+cstack]
	line	78
	
l3626:	
;LCD.c: 78:     Lcd_CmdWrite(0x01);
	movlw	low(01h)
	fcall	_Lcd_CmdWrite
	line	79
	
l112:	
	return
	callstack 0
GLOBAL	__end_of_LCD_Clear
	__end_of_LCD_Clear:
	signat	_LCD_Clear,89
	global	_Lcd_CmdWrite

;; *************** function _Lcd_CmdWrite *****************
;; Defined at:
;;		line 34 in file "LCD.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_LCD_Enable
;; This function is called by:
;;		_LCD_Init
;;		_LCD_GoToXY
;;		_LCD_Clear
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=0
	line	34
global __ptext36
__ptext36:	;psect for function _Lcd_CmdWrite
psect	text36
	file	"LCD.c"
	line	34
	
_Lcd_CmdWrite:	
;incstack = 0
	callstack 5
; Regs used in _Lcd_CmdWrite: [wreg+status,2+status,0+pclath+cstack]
;Lcd_CmdWrite@cmd stored from wreg
	movwf	(Lcd_CmdWrite@cmd)
	line	36
	
l2924:	
;LCD.c: 34: void Lcd_CmdWrite(char cmd);LCD.c: 35: {;LCD.c: 36:     PORTD = (cmd & 0xF0);
	movf	(Lcd_CmdWrite@cmd),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	37
	
l2926:	
;LCD.c: 37:     PORTD &= ~(1<<0);
	movlw	low(0FEh)
	movwf	(??_Lcd_CmdWrite+0)+0
	movf	(??_Lcd_CmdWrite+0)+0,w
	andwf	(8),f	;volatile
	line	38
	
l2928:	
;LCD.c: 38:     PORTD &= ~(1<<1);
	movlw	low(0FDh)
	movwf	(??_Lcd_CmdWrite+0)+0
	movf	(??_Lcd_CmdWrite+0)+0,w
	andwf	(8),f	;volatile
	line	39
	
l2930:	
;LCD.c: 39:     LCD_Enable();
	fcall	_LCD_Enable
	line	41
	
l2932:	
;LCD.c: 41:     PORTD = ((cmd<<4) & 0xF0);
	movf	(Lcd_CmdWrite@cmd),w
	movwf	(??_Lcd_CmdWrite+0)+0
	movlw	(04h)-1
u4265:
	clrc
	rlf	(??_Lcd_CmdWrite+0)+0,f
	addlw	-1
	skipz
	goto	u4265
	clrc
	rlf	(??_Lcd_CmdWrite+0)+0,w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	42
	
l2934:	
;LCD.c: 42:     PORTD &= ~(1<<0);
	movlw	low(0FEh)
	movwf	(??_Lcd_CmdWrite+0)+0
	movf	(??_Lcd_CmdWrite+0)+0,w
	andwf	(8),f	;volatile
	line	43
	
l2936:	
;LCD.c: 43:     PORTD &= ~(1<<1);
	movlw	low(0FDh)
	movwf	(??_Lcd_CmdWrite+0)+0
	movf	(??_Lcd_CmdWrite+0)+0,w
	andwf	(8),f	;volatile
	line	44
	
l2938:	
;LCD.c: 44:     LCD_Enable();
	fcall	_LCD_Enable
	line	45
	
l101:	
	return
	callstack 0
GLOBAL	__end_of_Lcd_CmdWrite
	__end_of_Lcd_CmdWrite:
	signat	_Lcd_CmdWrite,4217
	global	_LCD_Enable

;; *************** function _LCD_Enable *****************
;; Defined at:
;;		line 6 in file "LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_CmdWrite
;;		_Lcd_DataWrite
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1,group=0
	line	6
global __ptext37
__ptext37:	;psect for function _LCD_Enable
psect	text37
	file	"LCD.c"
	line	6
	
_LCD_Enable:	
;incstack = 0
	callstack 5
; Regs used in _LCD_Enable: [wreg+status,2+status,0]
	line	8
	
l2450:	
;LCD.c: 8:     PORTD |= (1<<2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8)+(2/8),(2)&7	;volatile
	line	9
	
l2452:	
;LCD.c: 9:     _delay((unsigned long)((2)*(16000000UL/4000.0)));
	asmopt push
asmopt off
movlw	11
movwf	((??_LCD_Enable+0)+0+1)
	movlw	98
movwf	((??_LCD_Enable+0)+0)
	u6137:
decfsz	((??_LCD_Enable+0)+0),f
	goto	u6137
	decfsz	((??_LCD_Enable+0)+0+1),f
	goto	u6137
	nop
asmopt pop

	line	10
	
l2454:	
;LCD.c: 10:     PORTD &= ~(1<<2);
	movlw	low(0FBh)
	movwf	(??_LCD_Enable+0)+0
	movf	(??_LCD_Enable+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	line	11
	
l91:	
	return
	callstack 0
GLOBAL	__end_of_LCD_Enable
	__end_of_LCD_Enable:
	signat	_LCD_Enable,89
	global	_ADC_Init

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 3 in file "ADC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1,group=0
	file	"ADC.c"
	line	3
global __ptext38
__ptext38:	;psect for function _ADC_Init
psect	text38
	file	"ADC.c"
	line	3
	
_ADC_Init:	
;incstack = 0
	callstack 7
; Regs used in _ADC_Init: [wreg+status,2+status,0]
	line	5
	
l3326:	
;ADC.c: 5:     ADCON0=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(31)	;volatile
	line	6
	
l3328:	
;ADC.c: 6:     ADCON1=0x80;
	movlw	low(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	8
	
l3330:	
;ADC.c: 8:     TRISA |= (1<<0)|(1<<1);
	movlw	low(03h)
	movwf	(??_ADC_Init+0)+0
	movf	(??_ADC_Init+0)+0,w
	iorwf	(133)^080h,f	;volatile
	line	10
	
l139:	
	return
	callstack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
	signat	_ADC_Init,89
	global	_ADC_GetAdcValue

;; *************** function _ADC_GetAdcValue *****************
;; Defined at:
;;		line 12 in file "ADC.c"
;; Parameters:    Size  Location     Type
;;  var_adcChann    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  var_adcChann    1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1,group=0
	line	12
global __ptext39
__ptext39:	;psect for function _ADC_GetAdcValue
psect	text39
	file	"ADC.c"
	line	12
	
_ADC_GetAdcValue:	
;incstack = 0
	callstack 7
; Regs used in _ADC_GetAdcValue: [wreg+status,2+status,0]
;ADC_GetAdcValue@var_adcChannel_u8 stored from wreg
	movwf	(ADC_GetAdcValue@var_adcChannel_u8)
	line	14
	
l3400:	
;ADC.c: 12: unsigned int ADC_GetAdcValue(unsigned char var_adcChannel_u8);ADC.c: 13: {;ADC.c: 14:     ADCON0= (var_adcChannel_u8<<3);
	movf	(ADC_GetAdcValue@var_adcChannel_u8),w
	movwf	(??_ADC_GetAdcValue+0)+0
	movlw	(03h)-1
u5405:
	clrc
	rlf	(??_ADC_GetAdcValue+0)+0,f
	addlw	-1
	skipz
	goto	u5405
	clrc
	rlf	(??_ADC_GetAdcValue+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	15
	
l3402:	
;ADC.c: 15:  ADON = 1;
	bsf	(248/8),(248)&7	;volatile
	line	16
	
l3404:	
;ADC.c: 16:     _delay((unsigned long)((10)*(16000000UL/4000000.0)));
	asmopt push
asmopt off
	movlw	13
movwf	((??_ADC_GetAdcValue+0)+0)
	u6147:
decfsz	(??_ADC_GetAdcValue+0)+0,f
	goto	u6147
asmopt pop

	line	17
	
l3406:	
;ADC.c: 17:     GO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	18
;ADC.c: 18:     while(GO_DONE == 1);
	
l142:	
	btfsc	(250/8),(250)&7	;volatile
	goto	u5411
	goto	u5410
u5411:
	goto	l142
u5410:
	line	21
	
l3408:	
;ADC.c: 21:     return((unsigned int)(ADRESH<<8) + (unsigned int)ADRESL);
	movf	(30),w	;volatile
	movwf	(?_ADC_GetAdcValue+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(?_ADC_GetAdcValue)
	line	22
	
l145:	
	return
	callstack 0
GLOBAL	__end_of_ADC_GetAdcValue
	__end_of_ADC_GetAdcValue:
	signat	_ADC_GetAdcValue,4218
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
