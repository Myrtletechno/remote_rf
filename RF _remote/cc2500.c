#include "Includes.h"

#define SETPIN RC0 // miso coming from GDO, check || tris to be set on

//assign values to the registers
#define CC_IOCFG2_value				 0x2F
#define CC_IOCFG1_value 			 0x2E
#define CC_IOCFG0D_value             0x06
#define CC_FIFOTHR_value             0x07
#define CC_SYNC1_value 			     0xD3
#define CC_SYNC0_value 				 0x91
#define CC_PKTLEN_value 			 0x03
#define CC_PKTCTRL1_value            0x84
#define CC_PKTCTRL0_value            0x04
#define CC_ADDR_value 				 0x00
#define CC_CHANNR_value 			 0x00
#define CC_FSCTRL1_value             0x09
#define CC_FSCTRL0_value             0x00
#define CC_FREQ2_value 				 0x5D
#define CC_FREQ1_value 				 0xD8
#define CC_FREQ0_value 				 0x9D
#define CC_MDMCFG4_value             0x2D
#define CC_MDMCFG3_value             0x3B
#define CC_MDMCFG2_value             0x73
#define CC_MDMCFG1_value             0x23
#define CC_MDMCFG0_value             0x3B
#define CC_DEVIATN_value             0x01
#define CC_MCSM2_value 				 0x07
#define CC_MCSM1_value               0x30
#define CC_MCSM0_value               0x18
#define CC_FOCCFG_value 			 0x1D
#define CC_BSCFG_value 				 0x1C
#define CC_AGCCTRL2_value            0xC7
#define CC_AGCCTRL1_value            0x00
#define CC_AGCCTRL0_value            0xB2
#define CC_WOREVT1_value             0x87
#define CC_WOREVT0_value             0x6B
#define CC_WORCTRL_value             0xF8
#define CC_FREND1_value              0xB6
#define CC_FREND0_value 			 0x10
#define CC_FSCAL3_value 			 0xEA
#define CC_FSCAL2_value 			 0x0A
#define CC_FSCAL1_value 			 0x00
#define CC_FSCAL0_value 			 0x11
#define CC_RCCTRL1_value             0x41
#define CC_RCCTRL0_value             0x00
#define CC_FSTEST_value 			 0x59
#define CC_PTEST_value 				 0x7F
#define CC_AGCTEST_value             0x3F
#define CC_TEST2_value 				 0x88
#define CC_TEST1_value 				 0x31
#define CC_TEST0_value 				 0x0B
#define SRES            			 0x30
#define SFSTXON   					 0x31
#define SXOFF     					 0x32
#define SCAL       			         0x33
#define SRX        			         0x34
#define STX         			     0x35
#define SIDLE        		         0x36
#define SAFC       			         0x37
#define SWOR     					 0x38
#define SPWD    				  	 0x39
#define SFRX                 		 0x3A
#define SFTX                  		 0x3B
#define SWORRST   				     0x3C
#define SNOP     				     0x3D



//creating array for assigned register values
 const unsigned char CC_rfSettings[0x2F]=
{
CC_IOCFG2_value,
CC_IOCFG1_value,
CC_IOCFG0D_value,
CC_FIFOTHR_value,
CC_SYNC1_value,
CC_SYNC0_value,
CC_PKTLEN_value,
CC_PKTCTRL1_value,
CC_PKTCTRL0_value,
CC_ADDR_value,
CC_CHANNR_value,
CC_FSCTRL1_value,
CC_FSCTRL0_value,
CC_FREQ2_value,
CC_FREQ1_value,
CC_FREQ0_value,
CC_MDMCFG4_value,
CC_MDMCFG3_value,
CC_MDMCFG2_value,
CC_MDMCFG1_value,
CC_MDMCFG0_value,
CC_DEVIATN_value,
CC_MCSM2_value,
CC_MCSM1_value, 
CC_MCSM0_value,
CC_FOCCFG_value,
CC_BSCFG_value,
CC_AGCCTRL2_value,
CC_AGCCTRL1_value,
CC_AGCCTRL0_value,
CC_WOREVT1_value,
CC_WOREVT0_value,
CC_WORCTRL_value,
CC_FREND1_value,
CC_FREND0_value,
CC_FSCAL3_value,
CC_FSCAL2_value,
CC_FSCAL1_value,
CC_FSCAL0_value,
CC_RCCTRL1_value,
CC_RCCTRL0_value,
CC_FSTEST_value,
CC_PTEST_value,
CC_AGCTEST_value,
CC_TEST2_value,
CC_TEST1_value,
CC_TEST0_value
};

void send()  // send data in CC wirelessly
{
spi_w(SFTX);      //flush tx FIFO
spi_w(SIDLE);    //turn CC2500 into idle mode
spi_w(SCAL);  
SS=0;
//while(SD0);
spi_w(0x7F);    // tx FIFO address in burst mode
spi_w(0x55); // data byte1
spi_w(0xAA); // data byte2
spi_w(0xff);	//data byte3
SS=1;
spi_w(STX);  //command to send data in tx FIFO wirelessly
//_delay_ms(10);
}



void configure_cc2500()
{
unsigned char i;
SS =1;

 ClearLCDScreen();
WriteStringToLCD("Config CC2500");
__delay_ms(2000);
for(i=0x00;i<0x2F;i++)   // configure registers of CC2500
{
SS=0;
//while(SD0);
spi_w(i); //address byte
 WriteDataToLCD(i);
	WriteCommandToLCD(0xc0);
__delay_ms(1000);
 ClearLCDScreen();
spi_w(CC_rfSettings[i]);// data byte
 WriteDataToLCD(CC_rfSettings[i]);

__delay_ms(1000);
 ClearLCDScreen();
SS=1;
}
 ClearLCDScreen();
WriteStringToLCD("Config completed");
}