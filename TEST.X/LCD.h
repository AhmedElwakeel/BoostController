/* 
 * File:   LCD.h
 * Author: Ahmed
 *
 * Created on January 4, 2023, 5:30 PM
 */

#ifndef LCD_H
#define	LCD_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "Lib.h"

/* Configure the data bus and Control bus as per the hardware connection 
   Dtatus bus is connected to PB4:PB7 and control bus PB0:PB2*/
#define LcdDataBus      PORTD
#define LcdControlBus   PORTD

#define LcdDataBusDirnReg   TRISD

#define LCD_RS     0
#define LCD_RW     1
#define LCD_EN     2

#define C_CountForOneMsDelay_U16 120
void DELAY_us(unsigned int us_count);
void DELAY_ms(unsigned int ms_count);
/* Function to send the command to LCD. 
   As it is 4bit mode, a byte of data is sent in two 4-bit nibbles */
void Lcd_CmdWrite(char cmd); 
/* Function to send the Data to LCD. 
   As it is 4bit mode, a byte of data is sent in two 4-bit nibbles */
void Lcd_DataWrite(char dat);
void LCD_Init();
void LCD_GoToXY(char X,char Y);
void LCD_Clear();
void LCD_Print(char* Str);


#ifdef	__cplusplus
}
#endif

#endif	/* LCD_H */
