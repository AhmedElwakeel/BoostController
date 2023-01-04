/* 
 * File:   Uart.h
 * Author: Ahmed
 *
 * Created on January 4, 2023, 5:19 PM
 */

#ifndef UART_H
#define	UART_H

#include "Lib.h"

#ifdef	__cplusplus
extern "C" {
#endif


#define SBIT_TXEN     5
#define SBIT_SPEN     7
#define SBIT_CREN     4


void UART_Init(int baudRate);
void UART_TxChar(char ch);
char UART_RxChar();
void UART_SendTxt(char* Str);


#ifdef	__cplusplus
}
#endif

#endif	/* UART_H */

