/*  Name     : main.c
 *  Purpose  : Main file for keypad interfacing code for PIC16F877.
 *  Company   : Myrtle Technologies
 *  Date     : 25.10.2016
 *  Website  : underconstruction
 *  Revision : None
 */
#include "Includes.h"

__CONFIG(0X2F2A);

// Configuration word for PIC16F877
//__CONFIG( FOSC_HS & WDTE_OFF & PWRTE_ON & CP_OFF & BOREN_ON 
//		& LVP_OFF & CPD_OFF & WRT_ON & DEBUG_OFF);


int count;
// Main Function
void main(void)
{
int i;
//	SS_dir = 1;
char send[10];
	ADCON1 = 0X06;// PORT A DIGITAL I/O OPERATION
	TRISC  = 0X10;
	TRISA = 0X00;
	TRISD = 0X00;
	TRISE=0X00;
unsigned	char Key = 'n';		 // Variable to store pressed key value
	initialise_SPI();   // spi driver 
	 
	Oled_Init();
while(1)
{
Oled_Delay();
Oled_SetFont(Terminal12x16, 12, 16, 32,127);
Oled_ConstText("library for", 0, 0);
Oled_ConstText("Graphic", 0, 2);
Oled_ConstText("OLED 128x64", 0, 4);
Oled_ConstText("SSD1306", 0, 6);
__delay_ms(3000);

Oled_FillScreen(0x00);
Oled_ConstText("lines", 30, 0);
for(i=16; i<64; i=i+4)
   {
    Oled_Line(0, 16, 127, i, BLACK);
  __delay_ms(500);
   }
__delay_ms(3000);
}



	InitKeypad();		 // Initialize Keypad pins
	InitLCD();			 // Initialize LCD in 8bit mode
	WriteStringToLCD("RF REMOTE");
	uart_init();
	__delay_ms(1000);
//	configure_cc2500();

ClearLCDScreen();
WriteStringToLCD(" DHT11Demo ");
	__delay_ms(1000);


while(1)
{

ClearLCDScreen();
 if(dht11_measure())
{
WriteStringToLCD(" Error ");
WriteCommandToLCD(0xc0);
WriteStringToLCD("No sensor found ");
//	__delay_ms(500);
}
else 
{
WriteStringToLCD(" hum ");
WriteCommandToLCD(0x8A);
WriteDataToLCD(dht11_rh/10+'0');
send[0] = dht11_rh/10+'0';
WriteDataToLCD(dht11_rh%10+'0');
send[1] = dht11_rh/10+'0';
WriteCommandToLCD(0xc0);
WriteStringToLCD("Temp");
WriteCommandToLCD(0xca);
WriteDataToLCD(dht11_temp/10+'0');
send[2] =dht11_temp/10+'0';
WriteDataToLCD(dht11_temp%10+'0');
send[3] =dht11_temp%10+'0';


//	__delay_ms(1000);

		Key = GetKey();		 // Get pressed key from keypad
			ClearLCDScreen();	 // Clear LCD screen
		WriteDataToLCD(Key); //	Update LCD with current key value
//	__delay_ms(5000);	



if(Key=='n')
{
count++;
if(count == 250)
{
	uart_string("BMD");
	for(int i=0;i<4;i++)
	uart_tx(send[i]);

	uart_tx('0');
		uart_tx('T');
		uart_tx('\n');
//	uart_tx('^');
//	uart_tx('T'); // check key 
//	uart_tx('\n');

count=0;
}
}
else
{

	uart_string("BMD");
	for(int i=0;i<4;i++)
	uart_tx(send[i]);

if(Key=='1') uart_tx('1');
if(Key=='2') uart_tx('2');
if(Key=='3') uart_tx('3');
if(Key=='4') uart_tx('4');
if(Key=='5') uart_tx('5');
if(Key=='6') uart_tx('6');
if(Key=='7') uart_tx('7');
if(Key=='8') uart_tx('8');
if(Key=='9') uart_tx('9');	
		uart_tx('T');
		uart_tx('\n');
}
}

}
//
//	while(1)
//	{
//	//	send();  // driver testing pending to be sent in serial 
//
//
//		Key = GetKey();		 // Get pressed key from keypad
//		ClearLCDScreen();	 // Clear LCD screen
//	
//		WriteDataToLCD(Key); //	Update LCD with current key value
//		uart_string("BMD");
//		uart_tx(Key);
//		uart_string("$");
//	//	spi_w(Key);
//	}
}





