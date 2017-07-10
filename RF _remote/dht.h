#ifndef __dht_h
#define __dht_h


#define DH11_DATA_BIT  RD2
#define DHTcheck       RD3
#define Dir_D2     TRISD2
#define Dir_D3     TRISD3
#define uint8_t unsigned char 
#define uint16_t short
uint8_t dht11_data[40];

uint8_t dht11_rh;
uint8_t dht11_temp;


uint8_t dht11_measure();



#endif