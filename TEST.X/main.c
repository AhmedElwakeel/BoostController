/*
 * File:   main.c
 * Author: Ahmed
 *
 * Created on January 4, 2023, 5:13 PM
 */

#include "Lib.h"
#include "Uart.h"
#include "LCD.h"
#include "ADC.h"
#include "PWM.h"
int main()
{
    char Str[50];
    float SetPoint ,FeedBack;
    unsigned char DutyCycle = 25;
    int Count;
    ADC_Init();
    LCD_Init();
    UART_Init(9600);          //Initialize the UART module with 9600 baud rate
    PWM_Init(0);
    PWM_SetDutyCycle(0,DutyCycle);
    PWM_Start(0);
    UART_SendTxt("System Start....\r\n");
    LCD_GoToXY(0,0);
    LCD_Print("System Start....");
    while(1)
    {
        Count+=5;
        SetPoint = ((float)ADC_GetAdcValue(0) * (float)5 ) / (float)1024;
        FeedBack = ((float)ADC_GetAdcValue(1) * (float)5 ) / (float)1024;
        if(Count >= 1000)//Every 1 SEC
        {
            Count = 0;            
            memset(Str,'\0',50);
            sprintf(Str,"CH0 = %.3f -- CH1 = %.3f",SetPoint ,FeedBack);//
            LCD_GoToXY(0,0);
            LCD_Clear();
            LCD_Print(Str);
            UART_SendTxt(Str);
            UART_SendTxt("\r\n");             
        }
        if(FeedBack > (SetPoint + 0.2))
        {
            //Decrease PWM
            if(DutyCycle > 0)
            {
                DutyCycle -= 5; 
            }                
            PWM_SetDutyCycle(0,DutyCycle);
        }
        else if(FeedBack < (SetPoint - 0.2))
        {
            //increase PWM
            if(DutyCycle < 100)
            {
                DutyCycle += 5; 
            }    
            PWM_SetDutyCycle(0,DutyCycle);
        }
        else
        {
            
        }
        __delay_ms(5);
    }
}