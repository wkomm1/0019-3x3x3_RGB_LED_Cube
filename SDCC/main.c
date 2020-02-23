#include <pic18f2520.h>
#include <delay.h>
#include <stdlib.h>
#include <stdint.h>

__code char __at 0x300001 CONFIG1H = 0x0008;
__code char __at 0x300003 CONFIG2H = 0x001E;
__code char __at 0x300005 CONFIG3H = 0x0003;
__code char __at 0x300006 CONFIG4L = 0x0081;
__code char __at 0x300009 CONFIG5H = 0x00C0;
__code char __at 0x30000B CONFIG6H = 0x00E0;
__code char __at 0x30000D CONFIG7H = 0x0040;

char redData[27];
char blueData[27];
char greenData[27];
char i, j, k, l, pointer;
unsigned long workingVar;
const int delaySpeed = 10;

void delay_us(uint16_t iterations) {
	uint16_t i;
	for (i = iterations; i > 0; i--) {
		__asm nop __endasm;
	}
}

void delay_ms(uint16_t iterations) {
	uint16_t i;
	for (i = iterations*100; i > 0; i--) {
		__asm nop __endasm;
	}
}

void allOff(void) {
  PORTA=0xFF;
  PORTB=0x00;
  PORTC=0x01;
}

void colorSet(char colorAddr) {
  switch (colorAddr) {
    case 0: PORTC = 0x00; break;  //layer 0 red
    case 1: PORTA = 0xDF; break;  //layer 1 red
    case 2: PORTA = 0xFB; break;  //layer 2 red
    case 3: PORTA = 0xBF; break;  //layer 0 green
    case 4: PORTA = 0xEF; break;  //layer 1 green
    case 5: PORTA = 0xFD; break;  //layer 2 green
    case 6: PORTA = 0x7F; break;  //layer 0 blue
    case 7: PORTA = 0xF7; break;  //layer 1 blue
    case 8: PORTA = 0xFE; break;  //layer 2 blue
  }
}

void columbSet(char columbAddr, char columbData) {
  if(columbData != 0) {
    switch (columbAddr) {
      case 0: PORTB |= 0x20; break;
      case 1: PORTB |= 0x10; break;
      case 2: PORTB |= 0x08; break;
      case 3: PORTB |= 0x04; break;
      case 4: PORTB |= 0x02; break;
      case 5: PORTB |= 0x01; break;
      case 6: PORTC |= 0x02; break;
      case 7: PORTC |= 0x08; break;
      case 8: PORTC |= 0x10; break;
    }
  }
}

void displayFrame(void) {
  pointer = 0;
  for(i = 0; i <= 2; i++) {
    for(j = 0; j <= 8; j++) {
      allOff();
      colorSet(i);
      columbSet(j, redData[pointer]);
      delay_us(delaySpeed*2);
      pointer++;
    }
  }
  
  pointer = 0;
  for(i = 3; i <= 5; i++) {
    for(j = 0; j <= 8; j++) {
      allOff();
      colorSet(i);
      columbSet(j, greenData[pointer]);
      delay_us(delaySpeed);
      pointer++;
    }
  }
  
  pointer = 0;
  for(i = 6; i <= 8; i++) {
    for(j = 0; j <= 8; j++) {
      allOff();
      colorSet(i);
      columbSet(j, blueData[pointer]);
      delay_us(delaySpeed);
      pointer++;
    }
  }
}

void renderFrame(unsigned long redValues, unsigned long greenValues, unsigned long blueValues, char holdTime) {
  workingVar = redValues;
  for(i = 0; i <= 26; i++) {
    redData[i] = (workingVar >> i) & 1;
  }
  
  workingVar = greenValues;
  for(i = 0; i <= 26; i++) {
    greenData[i] = (workingVar >> i) & 1;
  }
  
  workingVar = blueValues;
  for(i = 0; i <= 26; i++) {
    blueData[i] = (workingVar >> i) & 1;
  }
  
  for(k = 0; k < holdTime; k++) {
    displayFrame();
  }
}

void randomPixle(int count) {
  while(count>0) {
    switch(rand()%(3)) {
      case 0: renderFrame(0400000000>>(rand()%27), 0400000000>>(rand()%27), 0, 3); allOff(); break;
      case 1: renderFrame(0, 0400000000>>(rand()%27), 0400000000>>(rand()%27), 3); allOff(); break;
      case 2: renderFrame(0400000000>>(rand()%27), 0, 0400000000>>(rand()%27), 3); allOff(); break;
    }
    count--;
  }
}

void helixGreen(int count) {
  while(count>0) {  //helix green
    renderFrame(0, 0100200400, 0, 8); allOff();
    renderFrame(0, 0010100200, 0, 8); allOff();
    renderFrame(0, 0001010100, 0, 8); allOff();
    renderFrame(0, 0002001010, 0, 8); allOff();
    renderFrame(0, 0004002001, 0, 8); allOff();
    renderFrame(0, 0040004002, 0, 8); allOff();
    renderFrame(0, 0400040004, 0, 8); allOff();
    renderFrame(0, 0200400040, 0, 8); allOff();
    count--;
  }
}
    
void rgbUpDown(int count) {
  while(count>0) {  //up down rgb
    for(l = 0; l < 2; l++) {
      renderFrame(0000000777, 0, 0, 8); allOff();  //uses 36 Byte of ROM
      renderFrame(0000777000, 0, 0, 8); allOff();
      renderFrame(0777000000, 0, 0, 8); allOff();
      renderFrame(0000777000, 0, 0, 8); allOff();
    }
    for(l = 0; l < 2; l++) {
      renderFrame(0, 0000000777, 0, 8); allOff();
      renderFrame(0, 0000777000, 0, 8); allOff();
      renderFrame(0, 0777000000, 0, 8); allOff();
      renderFrame(0, 0000777000, 0, 8); allOff();
    }
    for(l = 0; l < 2; l++) {
      renderFrame(0, 0, 0000000777, 8); allOff();
      renderFrame(0, 0, 0000777000, 8); allOff();
      renderFrame(0, 0, 0777000000, 8); allOff();
      renderFrame(0, 0, 0000777000, 8); allOff();
    }
    count--;
  }
}

void usaFlash(int count) {
  while(count>0) {  //red white and blue
    renderFrame(0000777777, 0000777000, 0777777000, 20); allOff();
    delay_ms(250);
    count--;
  }
}

void snake(char speed) {
  renderFrame(0000000001, 0, 0, speed);
  renderFrame(0, 0000000003, 0, speed);
  renderFrame(0000000007, 0, 0000000007, speed);
  
  renderFrame(0, 0, 0000000047, speed);
  renderFrame(0, 0000000067, 0000000067, speed);
  renderFrame(0000000077, 0, 0, speed);

  renderFrame(0000000177, 0000000177, 0, speed);
  renderFrame(0, 0, 0000000377, speed);
  renderFrame(0000000777, 0, 0000000777, speed);
  
  renderFrame(0000400777, 0000400777, 0, speed);
  renderFrame(0, 0, 0000600777, speed);
  renderFrame(0000700777, 0, 0, speed);
  
  renderFrame(0, 0, 0000710777, speed);
  renderFrame(0000730777, 0000730777, 0, speed);
  renderFrame(0, 0, 0000770777, speed);
  
  renderFrame(0000774777, 0, 0, speed);
  renderFrame(0000776777, 0, 0000776777, speed);
  renderFrame(0, 0000777777, 0, speed);
  
  renderFrame(0, 0, 0001777777, speed);
  renderFrame(0, 0003777777, 0, speed);
  renderFrame(0007777777, 0, 0007777777, speed);
  
  renderFrame(0, 0047777777, 0, speed);
  renderFrame(0, 0, 0067777777, speed);
  renderFrame(0077777777, 0, 0077777777, speed);
  
  renderFrame(0177777777, 0, 0177777777, speed);
  renderFrame(0, 0377777777, 0, speed);
  renderFrame(0, 0, 0777777777, speed);
  
  allOff();
  
  renderFrame(0777777777, 0777777777, 0777777777, speed);
  allOff(); delay_ms(100);
  renderFrame(0777777777, 0777777777, 0777777777, speed);
  allOff(); delay_ms(100);
  renderFrame(0777777777, 0777777777, 0777777777, speed);
  allOff(); delay_ms(100);
  renderFrame(0777777777, 0777777777, 0777777777, speed);
  allOff(); delay_ms(100);
}

void main() {
  OSCCON=0x72;
  TRISA=0x00;
  TRISB=0x00;
  TRISC=0x00;
    
  allOff();
  
  while(1) {
    switch(rand()%(5)) {
      case 0: randomPixle(75); break;
      case 1: helixGreen(4); break;
      case 2: rgbUpDown(2); break;
      case 3: usaFlash(6); break;
      case 4: snake(8); break;
    }
  }
}