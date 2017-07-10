#include "Includes.h"


void uart_init(){RCSTA=0x90; // serial communication intiated
     TXSTA=0x20; // intiating transmission
	SPBRG=31; // 0X19  hexa value  // 9600 bauds
TXIF=1;
}

void uart_tx(unsigned char c)
{
while(TXIF==0);
TXREG = c;
TXIF=0;
}

void uart_string(const char *s)
{

while(*s)
uart_tx(*s++);
}