/*
 * File:   Main.c
 * Author: Muhammad
 *
 * Created on January 22, 2022, 12:46 AM
 */

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
#include <stdint.h>
#include <stdio.h>
#include "ADC/ADC.h"
void main(void) {
    char Str[50];
    uint16_t SETPOINT  = 0;
    uint16_t FEEDBACK  = 0;
    TRISB = 0x00;
    ADC_Init();
    TRISC &=~ (1<<2);   // Configure PORTC as output(RC2-PWM1, RC1-PWM2)
    CCP1CON = 0x0F; // Select the PWM mode.
    PR2 = 255;      // Set the Cycle time to 255 for varying the duty cycle from 5-250
    CCPR1L = 125;    // By default set the dutyCycle to 125  50%
    TMR2ON = 1;     //Start the Timer for PWM generation
    while(1)
    {
        SETPOINT    = Read_ADC(0);
        FEEDBACK    =  Read_ADC(1);  
        if(SETPOINT > FEEDBACK)
        {
            if(CCPR1L < 250)
            {
                CCPR1L += 1;//Duty Cycle = 50%
                TMR2ON = 1;
            }
        }
        else if(SETPOINT < FEEDBACK)
        {
            if(CCPR1L > 5)
            {
                CCPR1L -= 1;//Duty Cycle = 50%
                TMR2ON = 1;
            }
        }
        else
        {
        }        
        __delay_ms(1);
    }
    return;
}
