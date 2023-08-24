#include <pic14/pic12f683.h>
 
//To compile:
//sdcc -mpic14 -p16f675 blink.c
 
//To program the chip using picp:
//Assuming /dev/ttyUSB0 is the serial port.
 
//Erase the chip:
//picp /dev/ttyUSB0 16f887 -ef
 
//Write the program:
//picp /dev/ttyUSB0 16f887 -wp blink.hex
 
//Write the configuration words (optional):
//picp /dev/ttyUSB0 16f887 -wc 0x2ff4 0x3fff
 
//Doing it all at once: erasing, programming, and reading back config words:
//picp /dev/ttyUSB0 16f887 -ef -wp blink.hex -rc
 
//To program the chip using pk2cmd:
//pk2cmd -M -PPIC16f887 -Fblink.hex
 
void delay (unsigned int tiempo);

typedef unsigned int word;
word __at 0x2007 __CONFIG = (_WDT_OFF & _MCLRE_OFF);

 
void main(void)
{

    //TRISIO = 0b00000000; //Poner todos los pines como salidas
	//GPIO = 0x00; //Poner pines en bajo
	TRISIO = 0x08;
	GPIO = 0x00; //Poner pines en bajo
    unsigned int time = 100;
	int contador = 0;
    //Loop forever
    while ( 1 )
    {
		if(GP3 == 0){
			GP0 = 0X00;
			GP1 = 0x00;
			contador += 1;
		}
		else{
			switch (contador)
			{
			case 1:
				GP0 = 0x01;
				GP1 = 0x01;
				delay(time);
				GP0 = 0x00;
				//GP0 = ~GP0;
				delay(time);
				break;
			case 2:
				GP0 = 0x01;
				GP1 = 0x01;
				delay(time);
				GP0 = 0x00;
				//GP0 = ~GP0;
				delay(time);
				break;
			case 3:
				GP0 = 0x01;
				GP1 = 0x01;
				delay(time);
				GP0 = 0x00;
				//GP0 = ~GP0;
				delay(time);
				break;
			case 4:
				GP0 = 0x01;
				GP1 = 0x01;
				delay(time);
				GP0 = 0x00;
				//GP0 = ~GP0;
				delay(time);
				break;
			case 5:
				GP0 = 0x01;
				GP1 = 0x01;
				delay(time);
				GP0 = 0x00;
				//GP0 = ~GP0;
				delay(time);
				break;
			case 6:
				GP0 = 0x01;
				GP1 = 0x01;
				delay(time);
				GP0 = 0x00;
				//GP0 = ~GP0;
				delay(time);
				break;
			
			default:
				break;
			}

		}
		if(contador == 6){
			contador = 0;
		}
    }
 
}

void delay(unsigned int tiempo)
{
	unsigned int i;
	unsigned int j;

	for(i=0;i<tiempo;i++)
	  for(j=0;j<1275;j++);
}
