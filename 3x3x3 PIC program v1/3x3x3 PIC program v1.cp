#line 1 "C:/Users/william/Dropbox/Projects/0027 - 3x3x3 RGB LED Cube/3x3x3 PIC program v1/3x3x3 PIC program v1.c"
char redData[27];
char blueData[27];
char greenData[27];
char i, j, k, l, pointer;
unsigned long workingVar;
const int delaySpeed = 120;

void allOff(void) {
 porta=0xFF;
 portb=0x00;
 portc=0x01;
}

void colorSet(char colorAddr) {
 switch (colorAddr) {
 case 0: portc = 0x00; break;
 case 1: porta = 0xDF; break;
 case 2: porta = 0xFB; break;
 case 3: porta = 0xBF; break;
 case 4: porta = 0xEF; break;
 case 5: porta = 0xFD; break;
 case 6: porta = 0x7F; break;
 case 7: porta = 0xF7; break;
 case 8: porta = 0xFE; break;
 }
}

void columbSet(char columbAddr, char columbData) {
 if(columbData != 0) {
 switch (columbAddr) {
 case 0: portb |= 0x20; break;
 case 1: portb |= 0x10; break;
 case 2: portb |= 0x08; break;
 case 3: portb |= 0x04; break;
 case 4: portb |= 0x02; break;
 case 5: portb |= 0x01; break;
 case 6: portc |= 0x02; break;
 case 7: portc |= 0x08; break;
 case 8: portc |= 0x10; break;
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
 while(count>0) {
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
 while(count>0) {
 for(l = 0; l < 2; l++) {
 renderFrame(0000000777, 0, 0, 8); allOff();
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
 while(count>0) {
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
 osccon=0x72;
 trisa=0x00;
 trisb=0x00;
 trisc=0x00;

 allOff();

 while(0) {
 snake(10);
 }

 while(1) {
 switch(rand()%(4)) {
 case 0: randomPixle(100); break;
 case 1: helixGreen(4); break;
 case 2: rgbUpDown(2); break;
 case 3: usaFlash(10); break;

 }
 }
}
