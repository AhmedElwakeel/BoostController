/* 
 * File:   LCD.h
 * Author: Ahmed
 *
 * Created on January 4, 2023, 4:17 PM
 */

#ifndef LCD_H
#define	LCD_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define _XTAL_FREQ 16000000UL
#define __delay_ms(x) _delay((unsigned long)((x)*(_XTAL_FREQ/4000.0)))
// set up the timing for the LCD delays
#define LCD_delay 5 // ~5mS
#define LCD_Startup 15 // ~15mS

// Command set for Hitachi 44780U LCD display controller
#define LCD_CLEAR 0x01
#define LCD_HOME 0x02
#define LCD_CURSOR_BACK 0x10
#define LCD_CURSOR_FWD 0x14
#define LCD_PAN_LEFT 0x18
#define LCD_PAN_RIGHT 0x1C
#define LCD_CURSOR_OFF 0x0C
#define LCD_CURSOR_ON 0x0E
#define LCD_CURSOR_BLINK 0x0F
#define LCD_CURSOR_LINE2 0xC0

// display controller setup commands from page 46 of Hitachi datasheet
#define FUNCTION_SET 0x28 // 4 bit interface, 2 lines, 5x8 font
#define ENTRY_MODE 0x06 // increment mode
#define DISPLAY_SETUP 0x0C // display on, cursor off, blink offd

#define LCDLine1() LCDPutCmd(LCD_HOME) // legacy support
#define LCDLine2() LCDPutCmd(LCD_CURSOR_LINE2) // legacy support
#define shift_cursor() LCDPutCmd(LCD_CURSOR_FWD) // legacy support
#define cursor_on() LCDPutCmd(LCD_CURSOR_ON) // legacy support
#define DisplayClr() LCDPutCmd(LCD_CLEAR) // Legacy support


//----------------------------------------------------------------------
// Definitions specific to the PICDEM 2 Plus
// These apply to the Black (2011) version.
//----------------------------------------------------------------------

// single bit for selecting command register or data register
#define instr 0
#define data 1

// These #defines create the pin connections to the LCD in case they are changed on a future demo board
#define LCD_PORT PORTD
#define LCD_PWR PORTDbits.RD7 // LCD power pin
#define LCD_EN PORTDbits.RD6 // LCD enable
#define LCD_RW PORTDbits.RD5 // LCD read/write line
#define LCD_RS PORTDbits.RD4 // LCD register select line

#define NB_LINES 2 // Number of display lines
#define NB_COL 16 // Number of characters per line

void LCD_Initialize(void);
void LCDPutChar(char ch);
void LCDPutCmd(char ch);
void LCDPutStr(const char *); 
void LCDWriteNibble(char ch, char rs);
void LCDGoto(char pos, char ln);


#ifdef	__cplusplus
}
#endif

#endif	/* LCD_H */

