#include <stdint.h>

#include "ADC.h"


void ADC_Init()
{
    TRISA  = 0XEF;//configuring adc  ports as input
    TRISE  = 0X07;
    ADCON1 = 0X80;// configuring all ports as analog ports
}
// function for reading the adc value
uint16_t Read_ADC(char channel)
{
    int val;
    ADCON1 = 0x80; //port config
    ADCON0 = 0x81 | channel << 3;// channel selection SET THE CHANNEL NUMBER
    __delay_us(50);
    GO_nDONE   = 1;//turn on the ADC
    while(GO_nDONE)   // checking the ADC conversion
        continue;
    val = (ADRESH<<8) | ADRESL;// combining the both adresh and adresl values to a single variable
    return (val);
}