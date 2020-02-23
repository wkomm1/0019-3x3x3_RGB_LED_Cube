#include <pic12f683.h>
#include <stdint.h>
uint16_t delayTime = 10000;

//see page 86 in datasheet for more information on configuration register
typedef unsigned int config;
config __at 0x2007 __CONFIG = _CPD_OFF & _CP_OFF & _BOD_OFF  & _MCLRE_OFF & _PWRTE_ON & _WDT_OFF & _INTOSCIO;


void delay(uint16_t iterations) {
	uint16_t i;
	for (i = iterations; i > 0; i--) {
		__asm nop __endasm;
	}
}


void main() {
	ANSEL=0;  //set all pins as digital, instead of analog inputs
	TRISIO=0;  //set all digital pins as outputs


    while(1){
        GPIO=0xFB;
        delay(delayTime);
        GPIO=0xEF;
        delay(delayTime);
        GPIO=0xDF;
        delay(delayTime);
		GPIO = 0xFF;
		delay(delayTime);
	}
}
