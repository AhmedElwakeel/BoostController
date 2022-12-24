/* 
 * File:   ADC.h
 * Author: Ahmed
 *
 * Created on January 23, 2022, 7:30 PM
 */

#ifndef ADC_H
#define	ADC_H

#define _XTAL_FREQ 16000000UL
#include <xc.h>

#ifdef	__cplusplus
extern "C" {
#endif

void ADC_Init();
uint16_t Read_ADC(char channel);// function for reading the adc value


#ifdef	__cplusplus
}
#endif

#endif	/* ADC_H */

