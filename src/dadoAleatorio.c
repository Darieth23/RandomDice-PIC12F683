 //To compile:

#include <pic14/pic12f683.h>
 
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
	unsigned int contador = 1;
    //Loop forever
    while (1){
		if(GP3 == 0){
			GPIO = 0x37;
			//GP0 = 0X00;
			//GP1 = 0x00;
			delay(time);
			contador += 1;
		}
		else{
			switch (contador){
				case 1:
					//GP0 = 0x01;
					//GP1 = 0x01;
					GPIO = 0x2B;
					delay(time);
					//GP0 = 0x00;
					//GPIO = 0x3F;
					//GP0 = ~GP0;
					//delay(time);
					break;
				case 2:
					//GP0 = 0x01;
					//GP1 = 0x01;
					GPIO = 0x29;
					delay(time);
					//GP0 = 0x00;
					//GPIO = 0x3F;
					//GP0 = ~GP0;
					//delay(time);
					break;
				case 3:
					//GP0 = 0x01;
					//GP1 = 0x01;
					GPIO = 0x28;
					delay(time);
					//GP0 = 0x00;
					//GPIO = 0x1A;
					//GP0 = ~GP0;
					//delay(time);
					break;
				case 4:
					//GP0 = 0x01;
					//GP1 = 0x01;
					GPIO = 0x09;//Valor 1 del dado
					delay(time);
					//GP0 = 0x00;
					//GPIO = 0x19;
					//GP0 = ~GP0;
					//delay(time);
					break;
				case 5:
					//GP0 = 0x01;
					//GP1 = 0x01;
					GPIO = 0x28;//Valor 2 del dado 
					delay(time);
					//GP0 = 0x00;
					GPIO = 0x19;
					//GP0 = ~GP0;
					delay(time);
					break;
				case 6:
					//GP0 = 0x01;
					//GP1 = 0x01;
					GPIO = 0x08;
					delay(time);
					//GP0 = 0x00;
					//GPIO = 0x1A;
					//GP0 = ~GP0;
					//delay(time);
					break;
				default:
					break;
			}
		}
		if(contador == 6){
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
