#include <pic.h>

#include "LCD.h"

/* local function to generate delay */
void LCD_Enable()
{
    LcdControlBus |= (1<<LCD_EN);   // Generate a High-to-low pulse on EN pin
    __delay_ms(2);
    LcdControlBus &= ~(1<<LCD_EN); 
}

void LCD_Init()
{
    char Commands[7] = {0x28,0x33,0x32,0x06,0x0F,0x80};
    int i = 0;
    
    LcdDataBusDirnReg = 0x00;  // Configure all the LCD pins as output

    for(i=0;i<7;i++)
    {
        Lcd_CmdWrite(Commands[i]);        
        // Initialize Lcd in 4-bit mode
        // enable 5x7 mode for chars 
        // Display OFF, Cursor ON
        // Clear Display
        // Move the cursor to beginning of first line

    }
}

/* Function to send the command to LCD. 
   As it is 4bit mode, a byte of data is sent in two 4-bit nibbles */
void Lcd_CmdWrite(char cmd)
{
    LcdDataBus = (cmd & 0xF0);     //Send higher nibble
    LcdControlBus &= ~(1<<LCD_RS); // Send LOW pulse on RS pin for selecting Command register
    LcdControlBus &= ~(1<<LCD_RW); // Send LOW pulse on RW pin for Write operation
    LCD_Enable();

    LcdDataBus = ((cmd<<4) & 0xF0); //Send Lower nibble
    LcdControlBus &= ~(1<<LCD_RS);  // Send LOW pulse on RS pin for selecting Command register
    LcdControlBus &= ~(1<<LCD_RW);  // Send LOW pulse on RW pin for Write operation
    LCD_Enable();
}



/* Function to send the Data to LCD. 
   As it is 4bit mode, a byte of data is sent in two 4-bit nibbles */
void Lcd_DataWrite(char dat)
{
    LcdDataBus = (dat & 0xF0);      //Send higher nibble
    LcdControlBus |= (1<<LCD_RS);   // Send HIGH pulse on RS pin for selecting data register
    LcdControlBus &= ~(1<<LCD_RW);  // Send LOW pulse on RW pin for Write operation
    LCD_Enable();

    LcdDataBus = ((dat<<4) & 0xF0);  //Send Lower nibble
    LcdControlBus |= (1<<LCD_RS);    // Send HIGH pulse on RS pin for selecting data register
    LcdControlBus &= ~(1<<LCD_RW);   // Send LOW pulse on RW pin for Write operation
    LCD_Enable();
}

void LCD_GoToXY(char X,char Y)
{
    if(Y == 0)
    {
        Lcd_CmdWrite(0x80 + X);
    }
    else
    {
        Lcd_CmdWrite(0xC0 + X);
    }
}

void LCD_Clear()
{
    Lcd_CmdWrite(0x01);
}
void LCD_Print(char* Str)
{
    while(*Str)
    {
        Lcd_DataWrite(*Str);
        Str++;
    }
}

