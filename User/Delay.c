#include "Delay.h"



void Delay20us(void)   //��� 0us
{
    unsigned char a,b;
    for(b=1;b>0;b--)
        for(a=77;a>0;a--);
}

void Delay5ms(void)   //��� 0us
{
    unsigned char a,b;
    for(b=95;b>0;b--)
        for(a=209;a>0;a--);
}



void Delay15ms(void)   //��� 0us
{
    unsigned char a,b,c;
    for(c=103;c>0;c--)
        for(b=166;b>0;b--)
            for(a=2;a>0;a--);
}


void Delay100ms(void)   //��� 0us
{
    unsigned char a,b,c;
    for(c=95;c>0;c--)
        for(b=138;b>0;b--)
            for(a=29;a>0;a--);
}

