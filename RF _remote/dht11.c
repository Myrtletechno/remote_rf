
#include "Includes.h"

uint8_t dht11_measure()
{
    for(uint8_t i=0;i<40;i++) dht11_data[i]=0;
	
    DH11_DATA_BIT=0;
	Dir_D2 = 0; // ouput 	
    __delay_ms(20);
    Dir_D2 =1 ; // input

    uint8_t counter=0;

    //wait for falling edge
    while(DH11_DATA_BIT)
    {

        counter++;
        __delay_us(1);

        if(counter==80)
{
ClearLCDScreen();
WriteStringToLCD(" eighty reached");
            return 0;
}
    }

    //wait for rising edge
    while(!DH11_DATA_BIT)
    {
        counter++;
        __delay_us(1);

        if(counter==180)
            return 0;
    }

    //wait for falling edge
    while(DH11_DATA_BIT)
    {
        counter++;
        __delay_us(1);

        if(counter==80)
            return 0;
    }


    for(uint8_t i=0;i<40;i++)
    {
        //wait for rising edge
        while(!(PORTD & (1<<2)));


        //Setup Timer1
        T1CKPS0=1;  //Prescaller = 1:2
        TMR1L=0x00;  //Init counter
        TMR1H=0x00;
        TMR1ON=1;   //Stat timer

        //wait for falling edge
        while((PORTD & (1<<2)));

        TMR1ON=0;

        /**/
        uint16_t time=TMR1L;
        time=time | (TMR1H<<8);

        time=time*2;

        if(time>55 && time <70)
        {
            //bit is 0
            dht11_data[i]=0;
        }
        else if(time>150)
        {
            //bit is 1
            dht11_data[i]=1;

        }
    }

    dht11_rh=dht11_temp=0;

    for(uint8_t i=0;i<8;i++)
    {
        if(dht11_data[i]==1)
            dht11_rh|=(1<<(7-i));
    }

    for(uint8_t i=0;i<8;i++)
    {
        if(dht11_data[16+i]==1)
            dht11_temp|=(1<<(7-i));
    }

    return 1;
}