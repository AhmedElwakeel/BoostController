/* 
 * File:   ADC.h
 * Author: Ahmed
 *
 * Created on January 4, 2023, 7:44 PM
 */

#ifndef ADC_H
#define	ADC_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "Lib.h"
    
void ADC_Init();
unsigned int ADC_GetAdcValue(unsigned char var_adcChannel_u8);


#ifdef	__cplusplus
}
#endif

#endif	/* ADC_H */

