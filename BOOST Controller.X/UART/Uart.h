/* 
 * File:   Uart.h
 * Author: Muhammad
 *
 * Created on January 23, 2022, 7:35 PM
 */

#ifndef UART_H
#define	UART_H

#define _XTAL_FREQ 16000000UL
#include <xc.h>

#ifdef	__cplusplus
extern "C" {
#endif


char UART_Init(const long int baudrate);
void UART_Write(char data);
char UART_TX_Empty();
void UART_Write_Text(char *text);
char UART_Data_Ready();
char UART_Read();
void UART_Read_Text(char *Output, unsigned int length);

#ifdef	__cplusplus
}
#endif

#endif	/* UART_H */

