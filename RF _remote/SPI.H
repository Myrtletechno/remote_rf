#ifndef _SPI_H
#define _SPI_H

#define SCK_dir TRISC3_bit
#define SDO_dir TRISC5_bit


#define SS_dir TRISA5_bit

#define SS  RA5
#define SD0 RC5

void initialise_SPI(void);  // INITIALISE THE SPI 
void spi_w(unsigned char data);
int WriteSPI(unsigned char data);


#endif 