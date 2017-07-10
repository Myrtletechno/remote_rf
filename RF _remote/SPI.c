#include "Includes.h"

void initialise_SPI(void)
{ 

//	SDO_dir = 0; // must be cleared.
//	 SCK_dir = 0; // must be cleared in master mode.
//	SS_dir = 0 ;  // configured as output
	SS=1;
	SSPSTAT |= 0b00000000; 
	SSPCON |=0x22; 
	SSPEN = 1;
}  

void spi_w(unsigned char data)
{  
unsigned char temp;
temp = SSPBUF;
SS=0;
SSPBUF = data;
while(!BF);
//while (!SSPIF);
temp = SSPBUF;
SS=1;


//unsigned char x; 
//PORTC,RC6=0; 
//	WriteDataToLCD("hi");
//while (!SSPIF);  //wait for transmission complete  
//	WriteDataToLCD("bye");
//x=SSPBUF;  //dummy read  
//SSPBUF=data;  
//while (!SSPIF);  //wait for transmission complete  
//x=SSPBUF;  
//PORTC,RC6=1;
}

int WriteSPI(unsigned char data)
{  
unsigned char temp;
temp = SSPBUF;
SS=0;
SSPBUF = data;
while(!BF);
//while (!SSPIF);
temp = SSPBUF;
SS=1;

return 0;
}