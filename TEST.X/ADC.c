#include "ADC.h"

void ADC_Init()
{    
    ADCON0=0x00;        // sampling freq=osc_freq/2,ADC off initially
    ADCON1=0x80;  /* All pins are configured as Analog input pins and
                          the 10-bit ADC result is right justified */ 
    TRISA |= (1<<0)|(1<<1); /*set as CH0 & CH1 input port*/
    //ADCON1 = 0x0e; /*ref vtg is VDD and Configure pin as analog pin*/
}

unsigned int ADC_GetAdcValue(unsigned char var_adcChannel_u8)
{
    ADCON0= (var_adcChannel_u8<<3);   //select particular channel and turn ON adc
	ADON = 1;
    __delay_us(10);   
    GO = 1;                                    // Start ADC conversion
    while(GO_DONE == 1);                       // Wait for the conversion to complete
	                                         // GO bit will be cleared once conversion is complete

    return((unsigned int)(ADRESH<<8) + (unsigned int)ADRESL);            // return right justified 10-bit result
}
    