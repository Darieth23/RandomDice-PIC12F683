 //To compile:

#include <pic14/pic12f683.h>
 
void delay (unsigned int tiempo);
typedef unsigned int word;
word __at 0x2007 __CONFIG = (_WDT_OFF & _MCLRE_OFF);
void main(void)
{
	TRISIO = 0x08;
	GPIO = 0x00; //Poner pines en bajo
    unsigned int time = 100;
	unsigned int contador = 1;
    //Loop forever
    while (1){
		if(GP3 == 0){
			GPIO = 0x37;
			delay(time);
			contador += 1;
		}
		else{
			switch (contador){
				case 1:
					GPIO = 0x24;
					delay(time);
					break;
				case 2:
					GPIO = 0x26;
					delay(time);
					break;
				case 3:
					GPIO = 0x27;
					delay(time);
					break;
				case 4:
					GPIO = 0x06;//Valor 1 del dado
					delay(time);
					break;
				case 5:
					GPIO = 0x27;//Valor 2 del dado 
					delay(time);
					GPIO = 0x16;
					delay(time);
					break;
				case 6:
					GPIO = 0x07;
					delay(time);
					break;
				default:
					break;
			}
		}
		if(contador == 7){
			contador = 1;
		}
    }
}
void delay(unsigned int tiempo){
	unsigned int i;
	unsigned int j;
	for(i=0;i<tiempo;i++);
	  //for(j=0;j<1275;j++);
}
