#include "Uart.h"

void UART_Init(int baudRate)
{    
    TRISC=0x80;            // Configure Rx pin as input and Tx as output  
    TXSTA=(1<<SBIT_TXEN);  // Asynchronous mode, 8-bit data & enable transmitter
    RCSTA=(1<<SBIT_SPEN) | (1<<SBIT_CREN);  // Enable Serial Port and 8-bit continuous receive
    SPBRG = ( _XTAL_FREQ /(long)(64UL*baudRate))-1;      // baud rate @16Mhz Clock
}


void UART_TxChar(char ch)
{
    while(TXIF==0);    // Wait till the transmitter register becomes empty
    TXIF=0;            // Clear transmitter flag
    TXREG=ch;          // load the char to be transmitted into transmit reg
}


char UART_RxChar()
{
    while(RCIF==0);    // Wait till the data is received 
    RCIF=0;            // Clear receiver flag
    return(RCREG);     // Return the received data to calling function
}

void UART_SendTxt(char* Str)
{
    while(*Str)
    {
        UART_TxChar(*Str);
        Str++;                
    }
}