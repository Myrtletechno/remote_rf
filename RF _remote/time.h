

#ifndef _SPI_H
#define _SPI_H

#define SCK_dir TRISC3
#define SDO_dir TRISC5


#define SS_dir TRISA5

#define SS  RA5


void initialise_SPI(void);  // INITIALISE THE SPI 
unsigned char spi_r();



#endif