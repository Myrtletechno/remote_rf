
#ifndef __INCLUDES_H
#define __INCLUDES_H

// Define CPU Frequency
// This must be defined, if __delay_ms() or 
// __delay_us() functions are used in the code
  

#include <htc.h> 
 

#define _XTAL_FREQ   16000000


#include "LCD.h"
#include "Keypad.h"
#include "SPI.H"
#include "CC2500.h"
#include "uart.h"
#include "dht.h"
#include "ssd1306.h"
#include "font.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#endif