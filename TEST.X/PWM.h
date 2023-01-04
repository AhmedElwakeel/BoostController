/* 
 * File:   PWM.h
 * Author: Ahmed
 *
 * Created on January 4, 2023, 8:42 PM
 */

#ifndef PWM_H
#define	PWM_H

#ifdef	__cplusplus
extern "C" {
#endif
#include "Lib.h"
#define  util_GetBitMask(bit)          (1<<(bit))
#define  util_BitSet(x,bit)            ((x) |=  util_GetBitMask(bit))
#define  util_BitClear(x,bit)          ((x) &= ~util_GetBitMask(bit))

/*************************************************************************************************
                                Function Prototypes                                
*************************************************************************************************/
void PWM_Init(unsigned char channel);
void PWM_SetDutyCycle(unsigned char channel,unsigned char dutyCycle);
void PWM_Start(unsigned char channel);
void PWM_Stop(unsigned char channel);   
/*************************************************************************************************/


#ifdef	__cplusplus
}
#endif

#endif	/* PWM_H */

