/*
 * File:   main.c
 * Author: Ahmed
 *
 * Created on January 4, 2023, 5:13 PM
 */
// PIC16F877A Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#define _XTAL_FREQ 8000000UL
// PIC16F877A Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>

#include "LCD.h"
#include "Lib.h"
#include "Uart.h"
#include "ADC.h"
#include "PWM.h"   
void PrintFloat(char* Str,unsigned int N)
{
    for(int i=4;i>=0;i--)
    {
        if(i == 2)
        {
            Str[i] = '.';
            i--;
        }
        Str[i] = N % 10 + '0';
        N = N / 10;
        
    }
}
int main()
{   
    char Str[10];
    float SetPoint ,FeedBack;
    unsigned char DutyCycle = 1;
    int Count;
    TRISC &=~(1<<3);
    ADC_Init();
    LCD_Init();
    UART_Init(9600);          //Initialize the UART module with 9600 baud rate
    PWM_Init(0);
    PWM_SetDutyCycle(0,DutyCycle);
    PWM_Start(0);    
    PORTC |= (1<<3);
    UART_SendTxt("      AST       \r\n");
    LCD_GoToXY(0,0);
    LCD_Print("      AST       ");  
    __delay_ms(2000);
    while(1)
    {         
        __delay_ms(5);
        Count+=5;
        SetPoint = ((float)ADC_GetAdcValue(0) * (float)1200 ) / (float)1024;      //0 -- 12V in Volt  1200 --- 0000
        FeedBack = ((float)ADC_GetAdcValue(1) * (float)1200 ) / (float)1024;      // 0 ---- 1024    0 ---- 1200
        
        //F = FeedBack / 100;
        if(Count >= 1000)//Every 1 SEC
        {
            Count = 0;  
            PrintFloat(Str,(unsigned int)SetPoint);          
            LCD_Clear();
            
            LCD_GoToXY(0,0);
            
            LCD_Print("SET Volt:    ");
            LCD_GoToXY(10,0);
            LCD_Print(Str);
            LCD_GoToXY(15,0);
            LCD_Print("V");
            UART_SendTxt("SET Volt:    ");
            UART_SendTxt(Str);
            UART_SendTxt("V\r\n");
            
            PrintFloat(Str,(unsigned int)FeedBack);
            LCD_GoToXY(0,1);
            LCD_Print("OUTPUT :  ");            
            LCD_GoToXY(10,1);
            LCD_Print(Str);
            LCD_GoToXY(15,1);
            LCD_Print("V");
            UART_SendTxt("OUTPUT : ");
            UART_SendTxt(Str);
            UART_SendTxt("V\r\n");      
        }
        
        if(FeedBack > (SetPoint + 20))
        {
            //Decrease PWM
            if(DutyCycle > 0)
            {
                DutyCycle -= 1; 
            }                
            PWM_SetDutyCycle(0,DutyCycle);
        }
        else if(FeedBack < (SetPoint - 20))
        {
            //increase PWM
            if(DutyCycle < 100)
            {
                DutyCycle += 1; 
            }    
            PWM_SetDutyCycle(0,DutyCycle);
        }
        else
        {
            
        }
        
    }
    
}

