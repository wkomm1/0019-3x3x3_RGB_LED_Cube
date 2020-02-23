
_allOff:

;3x3x3 PIC program v1.c,8 :: 		void allOff(void) {
;3x3x3 PIC program v1.c,9 :: 		porta=0xFF;
	MOVLW       255
	MOVWF       PORTA+0 
;3x3x3 PIC program v1.c,10 :: 		portb=0x00;
	CLRF        PORTB+0 
;3x3x3 PIC program v1.c,11 :: 		portc=0x01;
	MOVLW       1
	MOVWF       PORTC+0 
;3x3x3 PIC program v1.c,12 :: 		}
L_end_allOff:
	RETURN      0
; end of _allOff

_colorSet:

;3x3x3 PIC program v1.c,14 :: 		void colorSet(char colorAddr) {
;3x3x3 PIC program v1.c,15 :: 		switch (colorAddr) {
	GOTO        L_colorSet0
;3x3x3 PIC program v1.c,16 :: 		case 0: portc = 0x00; break;  //layer 0 red
L_colorSet2:
	CLRF        PORTC+0 
	GOTO        L_colorSet1
;3x3x3 PIC program v1.c,17 :: 		case 1: porta = 0xDF; break;  //layer 1 red
L_colorSet3:
	MOVLW       223
	MOVWF       PORTA+0 
	GOTO        L_colorSet1
;3x3x3 PIC program v1.c,18 :: 		case 2: porta = 0xFB; break;  //layer 2 red
L_colorSet4:
	MOVLW       251
	MOVWF       PORTA+0 
	GOTO        L_colorSet1
;3x3x3 PIC program v1.c,19 :: 		case 3: porta = 0xBF; break;  //layer 0 green
L_colorSet5:
	MOVLW       191
	MOVWF       PORTA+0 
	GOTO        L_colorSet1
;3x3x3 PIC program v1.c,20 :: 		case 4: porta = 0xEF; break;  //layer 1 green
L_colorSet6:
	MOVLW       239
	MOVWF       PORTA+0 
	GOTO        L_colorSet1
;3x3x3 PIC program v1.c,21 :: 		case 5: porta = 0xFD; break;  //layer 2 green
L_colorSet7:
	MOVLW       253
	MOVWF       PORTA+0 
	GOTO        L_colorSet1
;3x3x3 PIC program v1.c,22 :: 		case 6: porta = 0x7F; break;  //layer 0 blue
L_colorSet8:
	MOVLW       127
	MOVWF       PORTA+0 
	GOTO        L_colorSet1
;3x3x3 PIC program v1.c,23 :: 		case 7: porta = 0xF7; break;  //layer 1 blue
L_colorSet9:
	MOVLW       247
	MOVWF       PORTA+0 
	GOTO        L_colorSet1
;3x3x3 PIC program v1.c,24 :: 		case 8: porta = 0xFE; break;  //layer 2 blue
L_colorSet10:
	MOVLW       254
	MOVWF       PORTA+0 
	GOTO        L_colorSet1
;3x3x3 PIC program v1.c,25 :: 		}
L_colorSet0:
	MOVF        FARG_colorSet_colorAddr+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_colorSet2
	MOVF        FARG_colorSet_colorAddr+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_colorSet3
	MOVF        FARG_colorSet_colorAddr+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_colorSet4
	MOVF        FARG_colorSet_colorAddr+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_colorSet5
	MOVF        FARG_colorSet_colorAddr+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_colorSet6
	MOVF        FARG_colorSet_colorAddr+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_colorSet7
	MOVF        FARG_colorSet_colorAddr+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_colorSet8
	MOVF        FARG_colorSet_colorAddr+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_colorSet9
	MOVF        FARG_colorSet_colorAddr+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_colorSet10
L_colorSet1:
;3x3x3 PIC program v1.c,26 :: 		}
L_end_colorSet:
	RETURN      0
; end of _colorSet

_columbSet:

;3x3x3 PIC program v1.c,28 :: 		void columbSet(char columbAddr, char columbData) {
;3x3x3 PIC program v1.c,29 :: 		if(columbData != 0) {
	MOVF        FARG_columbSet_columbData+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_columbSet11
;3x3x3 PIC program v1.c,30 :: 		switch (columbAddr) {
	GOTO        L_columbSet12
;3x3x3 PIC program v1.c,31 :: 		case 0: portb |= 0x20; break;
L_columbSet14:
	BSF         PORTB+0, 5 
	GOTO        L_columbSet13
;3x3x3 PIC program v1.c,32 :: 		case 1: portb |= 0x10; break;
L_columbSet15:
	BSF         PORTB+0, 4 
	GOTO        L_columbSet13
;3x3x3 PIC program v1.c,33 :: 		case 2: portb |= 0x08; break;
L_columbSet16:
	BSF         PORTB+0, 3 
	GOTO        L_columbSet13
;3x3x3 PIC program v1.c,34 :: 		case 3: portb |= 0x04; break;
L_columbSet17:
	BSF         PORTB+0, 2 
	GOTO        L_columbSet13
;3x3x3 PIC program v1.c,35 :: 		case 4: portb |= 0x02; break;
L_columbSet18:
	BSF         PORTB+0, 1 
	GOTO        L_columbSet13
;3x3x3 PIC program v1.c,36 :: 		case 5: portb |= 0x01; break;
L_columbSet19:
	BSF         PORTB+0, 0 
	GOTO        L_columbSet13
;3x3x3 PIC program v1.c,37 :: 		case 6: portc |= 0x02; break;
L_columbSet20:
	BSF         PORTC+0, 1 
	GOTO        L_columbSet13
;3x3x3 PIC program v1.c,38 :: 		case 7: portc |= 0x08; break;
L_columbSet21:
	BSF         PORTC+0, 3 
	GOTO        L_columbSet13
;3x3x3 PIC program v1.c,39 :: 		case 8: portc |= 0x10; break;
L_columbSet22:
	BSF         PORTC+0, 4 
	GOTO        L_columbSet13
;3x3x3 PIC program v1.c,40 :: 		}
L_columbSet12:
	MOVF        FARG_columbSet_columbAddr+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_columbSet14
	MOVF        FARG_columbSet_columbAddr+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_columbSet15
	MOVF        FARG_columbSet_columbAddr+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_columbSet16
	MOVF        FARG_columbSet_columbAddr+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_columbSet17
	MOVF        FARG_columbSet_columbAddr+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_columbSet18
	MOVF        FARG_columbSet_columbAddr+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_columbSet19
	MOVF        FARG_columbSet_columbAddr+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_columbSet20
	MOVF        FARG_columbSet_columbAddr+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_columbSet21
	MOVF        FARG_columbSet_columbAddr+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_columbSet22
L_columbSet13:
;3x3x3 PIC program v1.c,41 :: 		}
L_columbSet11:
;3x3x3 PIC program v1.c,42 :: 		}
L_end_columbSet:
	RETURN      0
; end of _columbSet

_displayFrame:

;3x3x3 PIC program v1.c,44 :: 		void displayFrame(void) {
;3x3x3 PIC program v1.c,45 :: 		pointer = 0;
	CLRF        _pointer+0 
;3x3x3 PIC program v1.c,46 :: 		for(i = 0; i <= 2; i++) {
	CLRF        _i+0 
L_displayFrame23:
	MOVF        _i+0, 0 
	SUBLW       2
	BTFSS       STATUS+0, 0 
	GOTO        L_displayFrame24
;3x3x3 PIC program v1.c,47 :: 		for(j = 0; j <= 8; j++) {
	CLRF        _j+0 
L_displayFrame26:
	MOVF        _j+0, 0 
	SUBLW       8
	BTFSS       STATUS+0, 0 
	GOTO        L_displayFrame27
;3x3x3 PIC program v1.c,48 :: 		allOff();
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,49 :: 		colorSet(i);
	MOVF        _i+0, 0 
	MOVWF       FARG_colorSet_colorAddr+0 
	CALL        _colorSet+0, 0
;3x3x3 PIC program v1.c,50 :: 		columbSet(j, redData[pointer]);
	MOVF        _j+0, 0 
	MOVWF       FARG_columbSet_columbAddr+0 
	MOVLW       _redData+0
	MOVWF       FSR0 
	MOVLW       hi_addr(_redData+0)
	MOVWF       FSR0H 
	MOVF        _pointer+0, 0 
	ADDWF       FSR0, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR0H, 1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_columbSet_columbData+0 
	CALL        _columbSet+0, 0
;3x3x3 PIC program v1.c,51 :: 		delay_us(delaySpeed*2);
	MOVLW       159
	MOVWF       R13, 0
L_displayFrame29:
	DECFSZ      R13, 1, 1
	BRA         L_displayFrame29
	NOP
	NOP
;3x3x3 PIC program v1.c,52 :: 		pointer++;
	INCF        _pointer+0, 1 
;3x3x3 PIC program v1.c,47 :: 		for(j = 0; j <= 8; j++) {
	INCF        _j+0, 1 
;3x3x3 PIC program v1.c,53 :: 		}
	GOTO        L_displayFrame26
L_displayFrame27:
;3x3x3 PIC program v1.c,46 :: 		for(i = 0; i <= 2; i++) {
	INCF        _i+0, 1 
;3x3x3 PIC program v1.c,54 :: 		}
	GOTO        L_displayFrame23
L_displayFrame24:
;3x3x3 PIC program v1.c,56 :: 		pointer = 0;
	CLRF        _pointer+0 
;3x3x3 PIC program v1.c,57 :: 		for(i = 3; i <= 5; i++) {
	MOVLW       3
	MOVWF       _i+0 
L_displayFrame30:
	MOVF        _i+0, 0 
	SUBLW       5
	BTFSS       STATUS+0, 0 
	GOTO        L_displayFrame31
;3x3x3 PIC program v1.c,58 :: 		for(j = 0; j <= 8; j++) {
	CLRF        _j+0 
L_displayFrame33:
	MOVF        _j+0, 0 
	SUBLW       8
	BTFSS       STATUS+0, 0 
	GOTO        L_displayFrame34
;3x3x3 PIC program v1.c,59 :: 		allOff();
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,60 :: 		colorSet(i);
	MOVF        _i+0, 0 
	MOVWF       FARG_colorSet_colorAddr+0 
	CALL        _colorSet+0, 0
;3x3x3 PIC program v1.c,61 :: 		columbSet(j, greenData[pointer]);
	MOVF        _j+0, 0 
	MOVWF       FARG_columbSet_columbAddr+0 
	MOVLW       _greenData+0
	MOVWF       FSR0 
	MOVLW       hi_addr(_greenData+0)
	MOVWF       FSR0H 
	MOVF        _pointer+0, 0 
	ADDWF       FSR0, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR0H, 1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_columbSet_columbData+0 
	CALL        _columbSet+0, 0
;3x3x3 PIC program v1.c,62 :: 		delay_us(delaySpeed);
	MOVLW       79
	MOVWF       R13, 0
L_displayFrame36:
	DECFSZ      R13, 1, 1
	BRA         L_displayFrame36
	NOP
	NOP
;3x3x3 PIC program v1.c,63 :: 		pointer++;
	INCF        _pointer+0, 1 
;3x3x3 PIC program v1.c,58 :: 		for(j = 0; j <= 8; j++) {
	INCF        _j+0, 1 
;3x3x3 PIC program v1.c,64 :: 		}
	GOTO        L_displayFrame33
L_displayFrame34:
;3x3x3 PIC program v1.c,57 :: 		for(i = 3; i <= 5; i++) {
	INCF        _i+0, 1 
;3x3x3 PIC program v1.c,65 :: 		}
	GOTO        L_displayFrame30
L_displayFrame31:
;3x3x3 PIC program v1.c,67 :: 		pointer = 0;
	CLRF        _pointer+0 
;3x3x3 PIC program v1.c,68 :: 		for(i = 6; i <= 8; i++) {
	MOVLW       6
	MOVWF       _i+0 
L_displayFrame37:
	MOVF        _i+0, 0 
	SUBLW       8
	BTFSS       STATUS+0, 0 
	GOTO        L_displayFrame38
;3x3x3 PIC program v1.c,69 :: 		for(j = 0; j <= 8; j++) {
	CLRF        _j+0 
L_displayFrame40:
	MOVF        _j+0, 0 
	SUBLW       8
	BTFSS       STATUS+0, 0 
	GOTO        L_displayFrame41
;3x3x3 PIC program v1.c,70 :: 		allOff();
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,71 :: 		colorSet(i);
	MOVF        _i+0, 0 
	MOVWF       FARG_colorSet_colorAddr+0 
	CALL        _colorSet+0, 0
;3x3x3 PIC program v1.c,72 :: 		columbSet(j, blueData[pointer]);
	MOVF        _j+0, 0 
	MOVWF       FARG_columbSet_columbAddr+0 
	MOVLW       _blueData+0
	MOVWF       FSR0 
	MOVLW       hi_addr(_blueData+0)
	MOVWF       FSR0H 
	MOVF        _pointer+0, 0 
	ADDWF       FSR0, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR0H, 1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_columbSet_columbData+0 
	CALL        _columbSet+0, 0
;3x3x3 PIC program v1.c,73 :: 		delay_us(delaySpeed);
	MOVLW       79
	MOVWF       R13, 0
L_displayFrame43:
	DECFSZ      R13, 1, 1
	BRA         L_displayFrame43
	NOP
	NOP
;3x3x3 PIC program v1.c,74 :: 		pointer++;
	INCF        _pointer+0, 1 
;3x3x3 PIC program v1.c,69 :: 		for(j = 0; j <= 8; j++) {
	INCF        _j+0, 1 
;3x3x3 PIC program v1.c,75 :: 		}
	GOTO        L_displayFrame40
L_displayFrame41:
;3x3x3 PIC program v1.c,68 :: 		for(i = 6; i <= 8; i++) {
	INCF        _i+0, 1 
;3x3x3 PIC program v1.c,76 :: 		}
	GOTO        L_displayFrame37
L_displayFrame38:
;3x3x3 PIC program v1.c,77 :: 		}
L_end_displayFrame:
	RETURN      0
; end of _displayFrame

_renderFrame:

;3x3x3 PIC program v1.c,79 :: 		void renderFrame(unsigned long redValues, unsigned long greenValues, unsigned long blueValues, char holdTime) {
;3x3x3 PIC program v1.c,80 :: 		workingVar = redValues;
	MOVF        FARG_renderFrame_redValues+0, 0 
	MOVWF       _workingVar+0 
	MOVF        FARG_renderFrame_redValues+1, 0 
	MOVWF       _workingVar+1 
	MOVF        FARG_renderFrame_redValues+2, 0 
	MOVWF       _workingVar+2 
	MOVF        FARG_renderFrame_redValues+3, 0 
	MOVWF       _workingVar+3 
;3x3x3 PIC program v1.c,81 :: 		for(i = 0; i <= 26; i++) {
	CLRF        _i+0 
L_renderFrame44:
	MOVF        _i+0, 0 
	SUBLW       26
	BTFSS       STATUS+0, 0 
	GOTO        L_renderFrame45
;3x3x3 PIC program v1.c,82 :: 		redData[i] = (workingVar >> i) & 1;
	MOVLW       _redData+0
	MOVWF       FSR1 
	MOVLW       hi_addr(_redData+0)
	MOVWF       FSR1H 
	MOVF        _i+0, 0 
	ADDWF       FSR1, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR1H, 1 
	MOVF        _i+0, 0 
	MOVWF       R4 
	MOVF        _workingVar+0, 0 
	MOVWF       R0 
	MOVF        _workingVar+1, 0 
	MOVWF       R1 
	MOVF        _workingVar+2, 0 
	MOVWF       R2 
	MOVF        _workingVar+3, 0 
	MOVWF       R3 
	MOVF        R4, 0 
L__renderFrame98:
	BZ          L__renderFrame99
	RRCF        R3, 1 
	RRCF        R2, 1 
	RRCF        R1, 1 
	RRCF        R0, 1 
	BCF         R3, 7 
	ADDLW       255
	GOTO        L__renderFrame98
L__renderFrame99:
	MOVLW       1
	ANDWF       R0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;3x3x3 PIC program v1.c,81 :: 		for(i = 0; i <= 26; i++) {
	INCF        _i+0, 1 
;3x3x3 PIC program v1.c,83 :: 		}
	GOTO        L_renderFrame44
L_renderFrame45:
;3x3x3 PIC program v1.c,85 :: 		workingVar = greenValues;
	MOVF        FARG_renderFrame_greenValues+0, 0 
	MOVWF       _workingVar+0 
	MOVF        FARG_renderFrame_greenValues+1, 0 
	MOVWF       _workingVar+1 
	MOVF        FARG_renderFrame_greenValues+2, 0 
	MOVWF       _workingVar+2 
	MOVF        FARG_renderFrame_greenValues+3, 0 
	MOVWF       _workingVar+3 
;3x3x3 PIC program v1.c,86 :: 		for(i = 0; i <= 26; i++) {
	CLRF        _i+0 
L_renderFrame47:
	MOVF        _i+0, 0 
	SUBLW       26
	BTFSS       STATUS+0, 0 
	GOTO        L_renderFrame48
;3x3x3 PIC program v1.c,87 :: 		greenData[i] = (workingVar >> i) & 1;
	MOVLW       _greenData+0
	MOVWF       FSR1 
	MOVLW       hi_addr(_greenData+0)
	MOVWF       FSR1H 
	MOVF        _i+0, 0 
	ADDWF       FSR1, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR1H, 1 
	MOVF        _i+0, 0 
	MOVWF       R4 
	MOVF        _workingVar+0, 0 
	MOVWF       R0 
	MOVF        _workingVar+1, 0 
	MOVWF       R1 
	MOVF        _workingVar+2, 0 
	MOVWF       R2 
	MOVF        _workingVar+3, 0 
	MOVWF       R3 
	MOVF        R4, 0 
L__renderFrame100:
	BZ          L__renderFrame101
	RRCF        R3, 1 
	RRCF        R2, 1 
	RRCF        R1, 1 
	RRCF        R0, 1 
	BCF         R3, 7 
	ADDLW       255
	GOTO        L__renderFrame100
L__renderFrame101:
	MOVLW       1
	ANDWF       R0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;3x3x3 PIC program v1.c,86 :: 		for(i = 0; i <= 26; i++) {
	INCF        _i+0, 1 
;3x3x3 PIC program v1.c,88 :: 		}
	GOTO        L_renderFrame47
L_renderFrame48:
;3x3x3 PIC program v1.c,90 :: 		workingVar = blueValues;
	MOVF        FARG_renderFrame_blueValues+0, 0 
	MOVWF       _workingVar+0 
	MOVF        FARG_renderFrame_blueValues+1, 0 
	MOVWF       _workingVar+1 
	MOVF        FARG_renderFrame_blueValues+2, 0 
	MOVWF       _workingVar+2 
	MOVF        FARG_renderFrame_blueValues+3, 0 
	MOVWF       _workingVar+3 
;3x3x3 PIC program v1.c,91 :: 		for(i = 0; i <= 26; i++) {
	CLRF        _i+0 
L_renderFrame50:
	MOVF        _i+0, 0 
	SUBLW       26
	BTFSS       STATUS+0, 0 
	GOTO        L_renderFrame51
;3x3x3 PIC program v1.c,92 :: 		blueData[i] = (workingVar >> i) & 1;
	MOVLW       _blueData+0
	MOVWF       FSR1 
	MOVLW       hi_addr(_blueData+0)
	MOVWF       FSR1H 
	MOVF        _i+0, 0 
	ADDWF       FSR1, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR1H, 1 
	MOVF        _i+0, 0 
	MOVWF       R4 
	MOVF        _workingVar+0, 0 
	MOVWF       R0 
	MOVF        _workingVar+1, 0 
	MOVWF       R1 
	MOVF        _workingVar+2, 0 
	MOVWF       R2 
	MOVF        _workingVar+3, 0 
	MOVWF       R3 
	MOVF        R4, 0 
L__renderFrame102:
	BZ          L__renderFrame103
	RRCF        R3, 1 
	RRCF        R2, 1 
	RRCF        R1, 1 
	RRCF        R0, 1 
	BCF         R3, 7 
	ADDLW       255
	GOTO        L__renderFrame102
L__renderFrame103:
	MOVLW       1
	ANDWF       R0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;3x3x3 PIC program v1.c,91 :: 		for(i = 0; i <= 26; i++) {
	INCF        _i+0, 1 
;3x3x3 PIC program v1.c,93 :: 		}
	GOTO        L_renderFrame50
L_renderFrame51:
;3x3x3 PIC program v1.c,95 :: 		for(k = 0; k < holdTime; k++) {
	CLRF        _k+0 
L_renderFrame53:
	MOVF        FARG_renderFrame_holdTime+0, 0 
	SUBWF       _k+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_renderFrame54
;3x3x3 PIC program v1.c,96 :: 		displayFrame();
	CALL        _displayFrame+0, 0
;3x3x3 PIC program v1.c,95 :: 		for(k = 0; k < holdTime; k++) {
	INCF        _k+0, 1 
;3x3x3 PIC program v1.c,97 :: 		}
	GOTO        L_renderFrame53
L_renderFrame54:
;3x3x3 PIC program v1.c,98 :: 		}
L_end_renderFrame:
	RETURN      0
; end of _renderFrame

_randomPixle:

;3x3x3 PIC program v1.c,100 :: 		void randomPixle(int count) {
;3x3x3 PIC program v1.c,101 :: 		while(count>0) {
L_randomPixle56:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_randomPixle_count+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__randomPixle105
	MOVF        FARG_randomPixle_count+0, 0 
	SUBLW       0
L__randomPixle105:
	BTFSC       STATUS+0, 0 
	GOTO        L_randomPixle57
;3x3x3 PIC program v1.c,102 :: 		switch(rand()%(3)) {
	CALL        _rand+0, 0
	MOVLW       3
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       FLOC__randomPixle+4 
	MOVF        R1, 0 
	MOVWF       FLOC__randomPixle+5 
	GOTO        L_randomPixle58
;3x3x3 PIC program v1.c,103 :: 		case 0: renderFrame(0400000000>>(rand()%27), 0400000000>>(rand()%27), 0, 3); allOff(); break;
L_randomPixle60:
	CALL        _rand+0, 0
	MOVLW       27
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       0
	MOVWF       FLOC__randomPixle+0 
	MOVLW       0
	MOVWF       FLOC__randomPixle+1 
	MOVLW       0
	MOVWF       FLOC__randomPixle+2 
	MOVLW       4
	MOVWF       FLOC__randomPixle+3 
	MOVF        R0, 0 
L__randomPixle106:
	BZ          L__randomPixle107
	RRCF        FLOC__randomPixle+3, 1 
	RRCF        FLOC__randomPixle+2, 1 
	RRCF        FLOC__randomPixle+1, 1 
	RRCF        FLOC__randomPixle+0, 1 
	BCF         FLOC__randomPixle+3, 7 
	BTFSC       FLOC__randomPixle+3, 6 
	BSF         FLOC__randomPixle+3, 7 
	ADDLW       255
	GOTO        L__randomPixle106
L__randomPixle107:
	CALL        _rand+0, 0
	MOVLW       27
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+1 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+2 
	MOVLW       4
	MOVWF       FARG_renderFrame_redValues+3 
	MOVF        R0, 0 
L__randomPixle108:
	BZ          L__randomPixle109
	RRCF        FARG_renderFrame_redValues+3, 1 
	RRCF        FARG_renderFrame_redValues+2, 1 
	RRCF        FARG_renderFrame_redValues+1, 1 
	RRCF        FARG_renderFrame_redValues+0, 1 
	BCF         FARG_renderFrame_redValues+3, 7 
	BTFSC       FARG_renderFrame_redValues+3, 6 
	BSF         FARG_renderFrame_redValues+3, 7 
	ADDLW       255
	GOTO        L__randomPixle108
L__randomPixle109:
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVLW       3
	MOVWF       FARG_renderFrame_holdTime+0 
	MOVF        FLOC__randomPixle+0, 0 
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVF        FLOC__randomPixle+1, 0 
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVF        FLOC__randomPixle+2, 0 
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVF        FLOC__randomPixle+3, 0 
	MOVWF       FARG_renderFrame_greenValues+3 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
	GOTO        L_randomPixle59
;3x3x3 PIC program v1.c,104 :: 		case 1: renderFrame(0, 0400000000>>(rand()%27), 0400000000>>(rand()%27), 3); allOff(); break;
L_randomPixle61:
	CALL        _rand+0, 0
	MOVLW       27
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       0
	MOVWF       FLOC__randomPixle+0 
	MOVLW       0
	MOVWF       FLOC__randomPixle+1 
	MOVLW       0
	MOVWF       FLOC__randomPixle+2 
	MOVLW       4
	MOVWF       FLOC__randomPixle+3 
	MOVF        R0, 0 
L__randomPixle110:
	BZ          L__randomPixle111
	RRCF        FLOC__randomPixle+3, 1 
	RRCF        FLOC__randomPixle+2, 1 
	RRCF        FLOC__randomPixle+1, 1 
	RRCF        FLOC__randomPixle+0, 1 
	BCF         FLOC__randomPixle+3, 7 
	BTFSC       FLOC__randomPixle+3, 6 
	BSF         FLOC__randomPixle+3, 7 
	ADDLW       255
	GOTO        L__randomPixle110
L__randomPixle111:
	CALL        _rand+0, 0
	MOVLW       27
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       4
	MOVWF       FARG_renderFrame_greenValues+3 
	MOVF        R0, 0 
L__randomPixle112:
	BZ          L__randomPixle113
	RRCF        FARG_renderFrame_greenValues+3, 1 
	RRCF        FARG_renderFrame_greenValues+2, 1 
	RRCF        FARG_renderFrame_greenValues+1, 1 
	RRCF        FARG_renderFrame_greenValues+0, 1 
	BCF         FARG_renderFrame_greenValues+3, 7 
	BTFSC       FARG_renderFrame_greenValues+3, 6 
	BSF         FARG_renderFrame_greenValues+3, 7 
	ADDLW       255
	GOTO        L__randomPixle112
L__randomPixle113:
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	MOVLW       3
	MOVWF       FARG_renderFrame_holdTime+0 
	MOVF        FLOC__randomPixle+0, 0 
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVF        FLOC__randomPixle+1, 0 
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVF        FLOC__randomPixle+2, 0 
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVF        FLOC__randomPixle+3, 0 
	MOVWF       FARG_renderFrame_blueValues+3 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
	GOTO        L_randomPixle59
;3x3x3 PIC program v1.c,105 :: 		case 2: renderFrame(0400000000>>(rand()%27), 0, 0400000000>>(rand()%27), 3); allOff(); break;
L_randomPixle62:
	CALL        _rand+0, 0
	MOVLW       27
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       0
	MOVWF       FLOC__randomPixle+0 
	MOVLW       0
	MOVWF       FLOC__randomPixle+1 
	MOVLW       0
	MOVWF       FLOC__randomPixle+2 
	MOVLW       4
	MOVWF       FLOC__randomPixle+3 
	MOVF        R0, 0 
L__randomPixle114:
	BZ          L__randomPixle115
	RRCF        FLOC__randomPixle+3, 1 
	RRCF        FLOC__randomPixle+2, 1 
	RRCF        FLOC__randomPixle+1, 1 
	RRCF        FLOC__randomPixle+0, 1 
	BCF         FLOC__randomPixle+3, 7 
	BTFSC       FLOC__randomPixle+3, 6 
	BSF         FLOC__randomPixle+3, 7 
	ADDLW       255
	GOTO        L__randomPixle114
L__randomPixle115:
	CALL        _rand+0, 0
	MOVLW       27
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+1 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+2 
	MOVLW       4
	MOVWF       FARG_renderFrame_redValues+3 
	MOVF        R0, 0 
L__randomPixle116:
	BZ          L__randomPixle117
	RRCF        FARG_renderFrame_redValues+3, 1 
	RRCF        FARG_renderFrame_redValues+2, 1 
	RRCF        FARG_renderFrame_redValues+1, 1 
	RRCF        FARG_renderFrame_redValues+0, 1 
	BCF         FARG_renderFrame_redValues+3, 7 
	BTFSC       FARG_renderFrame_redValues+3, 6 
	BSF         FARG_renderFrame_redValues+3, 7 
	ADDLW       255
	GOTO        L__randomPixle116
L__randomPixle117:
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	MOVLW       3
	MOVWF       FARG_renderFrame_holdTime+0 
	MOVF        FLOC__randomPixle+0, 0 
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVF        FLOC__randomPixle+1, 0 
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVF        FLOC__randomPixle+2, 0 
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVF        FLOC__randomPixle+3, 0 
	MOVWF       FARG_renderFrame_blueValues+3 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
	GOTO        L_randomPixle59
;3x3x3 PIC program v1.c,106 :: 		}
L_randomPixle58:
	MOVLW       0
	XORWF       FLOC__randomPixle+5, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__randomPixle118
	MOVLW       0
	XORWF       FLOC__randomPixle+4, 0 
L__randomPixle118:
	BTFSC       STATUS+0, 2 
	GOTO        L_randomPixle60
	MOVLW       0
	XORWF       FLOC__randomPixle+5, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__randomPixle119
	MOVLW       1
	XORWF       FLOC__randomPixle+4, 0 
L__randomPixle119:
	BTFSC       STATUS+0, 2 
	GOTO        L_randomPixle61
	MOVLW       0
	XORWF       FLOC__randomPixle+5, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__randomPixle120
	MOVLW       2
	XORWF       FLOC__randomPixle+4, 0 
L__randomPixle120:
	BTFSC       STATUS+0, 2 
	GOTO        L_randomPixle62
L_randomPixle59:
;3x3x3 PIC program v1.c,107 :: 		count--;
	MOVLW       1
	SUBWF       FARG_randomPixle_count+0, 1 
	MOVLW       0
	SUBWFB      FARG_randomPixle_count+1, 1 
;3x3x3 PIC program v1.c,108 :: 		}
	GOTO        L_randomPixle56
L_randomPixle57:
;3x3x3 PIC program v1.c,109 :: 		}
L_end_randomPixle:
	RETURN      0
; end of _randomPixle

_helixGreen:

;3x3x3 PIC program v1.c,111 :: 		void helixGreen(int count) {
;3x3x3 PIC program v1.c,112 :: 		while(count>0) {  //helix green
L_helixGreen63:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_helixGreen_count+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__helixGreen122
	MOVF        FARG_helixGreen_count+0, 0 
	SUBLW       0
L__helixGreen122:
	BTFSC       STATUS+0, 0 
	GOTO        L_helixGreen64
;3x3x3 PIC program v1.c,113 :: 		renderFrame(0, 0100200400, 0, 8); allOff();
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       1
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       1
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       1
	MOVWF       FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,114 :: 		renderFrame(0, 0010100200, 0, 8); allOff();
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	MOVLW       128
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       128
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       32
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,115 :: 		renderFrame(0, 0001010100, 0, 8); allOff();
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	MOVLW       64
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       16
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       4
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,116 :: 		renderFrame(0, 0002001010, 0, 8); allOff();
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       2
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       8
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,117 :: 		renderFrame(0, 0004002001, 0, 8); allOff();
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	MOVLW       1
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       4
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       16
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,118 :: 		renderFrame(0, 0040004002, 0, 8); allOff();
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	MOVLW       2
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       8
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       128
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,119 :: 		renderFrame(0, 0400040004, 0, 8); allOff();
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	MOVLW       4
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       64
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       4
	MOVWF       FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,120 :: 		renderFrame(0, 0200400040, 0, 8); allOff();
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	MOVLW       32
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       2
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       2
	MOVWF       FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,121 :: 		count--;
	MOVLW       1
	SUBWF       FARG_helixGreen_count+0, 1 
	MOVLW       0
	SUBWFB      FARG_helixGreen_count+1, 1 
;3x3x3 PIC program v1.c,122 :: 		}
	GOTO        L_helixGreen63
L_helixGreen64:
;3x3x3 PIC program v1.c,123 :: 		}
L_end_helixGreen:
	RETURN      0
; end of _helixGreen

_rgbUpDown:

;3x3x3 PIC program v1.c,125 :: 		void rgbUpDown(int count) {
;3x3x3 PIC program v1.c,126 :: 		while(count>0) {  //up down rgb
L_rgbUpDown65:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_rgbUpDown_count+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rgbUpDown124
	MOVF        FARG_rgbUpDown_count+0, 0 
	SUBLW       0
L__rgbUpDown124:
	BTFSC       STATUS+0, 0 
	GOTO        L_rgbUpDown66
;3x3x3 PIC program v1.c,127 :: 		for(l = 0; l < 2; l++) {
	CLRF        _l+0 
L_rgbUpDown67:
	MOVLW       2
	SUBWF       _l+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_rgbUpDown68
;3x3x3 PIC program v1.c,128 :: 		renderFrame(0000000777, 0, 0, 8); allOff();  //uses 36 Byte of ROM
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       1
	MOVWF       FARG_renderFrame_redValues+1 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+2 
	MOVWF       FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,129 :: 		renderFrame(0000777000, 0, 0, 8); allOff();
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       254
	MOVWF       FARG_renderFrame_redValues+1 
	MOVLW       3
	MOVWF       FARG_renderFrame_redValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,130 :: 		renderFrame(0777000000, 0, 0, 8); allOff();
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+1 
	MOVLW       252
	MOVWF       FARG_renderFrame_redValues+2 
	MOVLW       7
	MOVWF       FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,131 :: 		renderFrame(0000777000, 0, 0, 8); allOff();
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       254
	MOVWF       FARG_renderFrame_redValues+1 
	MOVLW       3
	MOVWF       FARG_renderFrame_redValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,127 :: 		for(l = 0; l < 2; l++) {
	INCF        _l+0, 1 
;3x3x3 PIC program v1.c,132 :: 		}
	GOTO        L_rgbUpDown67
L_rgbUpDown68:
;3x3x3 PIC program v1.c,133 :: 		for(l = 0; l < 2; l++) {
	CLRF        _l+0 
L_rgbUpDown70:
	MOVLW       2
	SUBWF       _l+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_rgbUpDown71
;3x3x3 PIC program v1.c,134 :: 		renderFrame(0, 0000000777, 0, 8); allOff();
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       1
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVWF       FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,135 :: 		renderFrame(0, 0000777000, 0, 8); allOff();
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       254
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       3
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,136 :: 		renderFrame(0, 0777000000, 0, 8); allOff();
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       252
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       7
	MOVWF       FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,137 :: 		renderFrame(0, 0000777000, 0, 8); allOff();
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       254
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       3
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,133 :: 		for(l = 0; l < 2; l++) {
	INCF        _l+0, 1 
;3x3x3 PIC program v1.c,138 :: 		}
	GOTO        L_rgbUpDown70
L_rgbUpDown71:
;3x3x3 PIC program v1.c,139 :: 		for(l = 0; l < 2; l++) {
	CLRF        _l+0 
L_rgbUpDown73:
	MOVLW       2
	SUBWF       _l+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_rgbUpDown74
;3x3x3 PIC program v1.c,140 :: 		renderFrame(0, 0, 0000000777, 8); allOff();
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       1
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,141 :: 		renderFrame(0, 0, 0000777000, 8); allOff();
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       254
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVLW       3
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,142 :: 		renderFrame(0, 0, 0777000000, 8); allOff();
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVLW       252
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVLW       7
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,143 :: 		renderFrame(0, 0, 0000777000, 8); allOff();
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       254
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVLW       3
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVLW       8
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,139 :: 		for(l = 0; l < 2; l++) {
	INCF        _l+0, 1 
;3x3x3 PIC program v1.c,144 :: 		}
	GOTO        L_rgbUpDown73
L_rgbUpDown74:
;3x3x3 PIC program v1.c,145 :: 		count--;
	MOVLW       1
	SUBWF       FARG_rgbUpDown_count+0, 1 
	MOVLW       0
	SUBWFB      FARG_rgbUpDown_count+1, 1 
;3x3x3 PIC program v1.c,146 :: 		}
	GOTO        L_rgbUpDown65
L_rgbUpDown66:
;3x3x3 PIC program v1.c,147 :: 		}
L_end_rgbUpDown:
	RETURN      0
; end of _rgbUpDown

_usaFlash:

;3x3x3 PIC program v1.c,149 :: 		void usaFlash(int count) {
;3x3x3 PIC program v1.c,150 :: 		while(count>0) {  //red white and blue
L_usaFlash76:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_usaFlash_count+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__usaFlash126
	MOVF        FARG_usaFlash_count+0, 0 
	SUBLW       0
L__usaFlash126:
	BTFSC       STATUS+0, 0 
	GOTO        L_usaFlash77
;3x3x3 PIC program v1.c,151 :: 		renderFrame(0000777777, 0000777000, 0777777000, 20); allOff();
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+1 
	MOVLW       3
	MOVWF       FARG_renderFrame_redValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+3 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       254
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       3
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+3 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       254
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVLW       7
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVLW       20
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,152 :: 		delay_ms(250);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_usaFlash78:
	DECFSZ      R13, 1, 1
	BRA         L_usaFlash78
	DECFSZ      R12, 1, 1
	BRA         L_usaFlash78
	DECFSZ      R11, 1, 1
	BRA         L_usaFlash78
	NOP
	NOP
;3x3x3 PIC program v1.c,153 :: 		count--;
	MOVLW       1
	SUBWF       FARG_usaFlash_count+0, 1 
	MOVLW       0
	SUBWFB      FARG_usaFlash_count+1, 1 
;3x3x3 PIC program v1.c,154 :: 		}
	GOTO        L_usaFlash76
L_usaFlash77:
;3x3x3 PIC program v1.c,155 :: 		}
L_end_usaFlash:
	RETURN      0
; end of _usaFlash

_snake:

;3x3x3 PIC program v1.c,157 :: 		void snake(char speed) {
;3x3x3 PIC program v1.c,158 :: 		renderFrame(0000000001, 0, 0, speed);
	MOVLW       1
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+1 
	MOVWF       FARG_renderFrame_redValues+2 
	MOVWF       FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,159 :: 		renderFrame(0, 0000000003, 0, speed);
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	MOVLW       3
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVWF       FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,160 :: 		renderFrame(0000000007, 0, 0000000007, speed);
	MOVLW       7
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+1 
	MOVWF       FARG_renderFrame_redValues+2 
	MOVWF       FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	MOVLW       7
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,162 :: 		renderFrame(0, 0, 0000000047, speed);
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	MOVLW       39
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,163 :: 		renderFrame(0, 0000000067, 0000000067, speed);
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	MOVLW       55
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVWF       FARG_renderFrame_greenValues+3 
	MOVLW       55
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,164 :: 		renderFrame(0000000077, 0, 0, speed);
	MOVLW       63
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+1 
	MOVWF       FARG_renderFrame_redValues+2 
	MOVWF       FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,166 :: 		renderFrame(0000000177, 0000000177, 0, speed);
	MOVLW       127
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+1 
	MOVWF       FARG_renderFrame_redValues+2 
	MOVWF       FARG_renderFrame_redValues+3 
	MOVLW       127
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVWF       FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,167 :: 		renderFrame(0, 0, 0000000377, speed);
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,168 :: 		renderFrame(0000000777, 0, 0000000777, speed);
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       1
	MOVWF       FARG_renderFrame_redValues+1 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+2 
	MOVWF       FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       1
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,170 :: 		renderFrame(0000400777, 0000400777, 0, speed);
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       1
	MOVWF       FARG_renderFrame_redValues+1 
	MOVLW       2
	MOVWF       FARG_renderFrame_redValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       1
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       2
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,171 :: 		renderFrame(0, 0, 0000600777, speed);
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       1
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVLW       3
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,172 :: 		renderFrame(0000700777, 0, 0, speed);
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       129
	MOVWF       FARG_renderFrame_redValues+1 
	MOVLW       3
	MOVWF       FARG_renderFrame_redValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,174 :: 		renderFrame(0, 0, 0000710777, speed);
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       145
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVLW       3
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,175 :: 		renderFrame(0000730777, 0000730777, 0, speed);
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       177
	MOVWF       FARG_renderFrame_redValues+1 
	MOVLW       3
	MOVWF       FARG_renderFrame_redValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       177
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       3
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,176 :: 		renderFrame(0, 0, 0000770777, speed);
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       241
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVLW       3
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,178 :: 		renderFrame(0000774777, 0, 0, speed);
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       249
	MOVWF       FARG_renderFrame_redValues+1 
	MOVLW       3
	MOVWF       FARG_renderFrame_redValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,179 :: 		renderFrame(0000776777, 0, 0000776777, speed);
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       253
	MOVWF       FARG_renderFrame_redValues+1 
	MOVLW       3
	MOVWF       FARG_renderFrame_redValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       253
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVLW       3
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,180 :: 		renderFrame(0, 0000777777, 0, speed);
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       3
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,182 :: 		renderFrame(0, 0, 0001777777, speed);
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVLW       7
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,183 :: 		renderFrame(0, 0003777777, 0, speed);
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       15
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,184 :: 		renderFrame(0007777777, 0, 0007777777, speed);
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+1 
	MOVLW       31
	MOVWF       FARG_renderFrame_redValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVLW       31
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,186 :: 		renderFrame(0, 0047777777, 0, speed);
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       159
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,187 :: 		renderFrame(0, 0, 0067777777, speed);
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVLW       223
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,188 :: 		renderFrame(0077777777, 0, 0077777777, speed);
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+1 
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVLW       0
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,190 :: 		renderFrame(0177777777, 0, 0177777777, speed);
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+1 
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+2 
	MOVLW       1
	MOVWF       FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVLW       1
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,191 :: 		renderFrame(0, 0377777777, 0, speed);
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       3
	MOVWF       FARG_renderFrame_greenValues+3 
	CLRF        FARG_renderFrame_blueValues+0 
	CLRF        FARG_renderFrame_blueValues+1 
	CLRF        FARG_renderFrame_blueValues+2 
	CLRF        FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,192 :: 		renderFrame(0, 0, 0777777777, speed);
	CLRF        FARG_renderFrame_redValues+0 
	CLRF        FARG_renderFrame_redValues+1 
	CLRF        FARG_renderFrame_redValues+2 
	CLRF        FARG_renderFrame_redValues+3 
	CLRF        FARG_renderFrame_greenValues+0 
	CLRF        FARG_renderFrame_greenValues+1 
	CLRF        FARG_renderFrame_greenValues+2 
	CLRF        FARG_renderFrame_greenValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVLW       7
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,194 :: 		allOff();
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,196 :: 		renderFrame(0777777777, 0777777777, 0777777777, speed);
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+1 
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+2 
	MOVLW       7
	MOVWF       FARG_renderFrame_redValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       7
	MOVWF       FARG_renderFrame_greenValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVLW       7
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,197 :: 		allOff(); delay_ms(100);
	CALL        _allOff+0, 0
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_snake79:
	DECFSZ      R13, 1, 1
	BRA         L_snake79
	DECFSZ      R12, 1, 1
	BRA         L_snake79
	DECFSZ      R11, 1, 1
	BRA         L_snake79
	NOP
;3x3x3 PIC program v1.c,198 :: 		renderFrame(0777777777, 0777777777, 0777777777, speed);
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+1 
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+2 
	MOVLW       7
	MOVWF       FARG_renderFrame_redValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       7
	MOVWF       FARG_renderFrame_greenValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVLW       7
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,199 :: 		allOff(); delay_ms(100);
	CALL        _allOff+0, 0
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_snake80:
	DECFSZ      R13, 1, 1
	BRA         L_snake80
	DECFSZ      R12, 1, 1
	BRA         L_snake80
	DECFSZ      R11, 1, 1
	BRA         L_snake80
	NOP
;3x3x3 PIC program v1.c,200 :: 		renderFrame(0777777777, 0777777777, 0777777777, speed);
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+1 
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+2 
	MOVLW       7
	MOVWF       FARG_renderFrame_redValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       7
	MOVWF       FARG_renderFrame_greenValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVLW       7
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,201 :: 		allOff(); delay_ms(100);
	CALL        _allOff+0, 0
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_snake81:
	DECFSZ      R13, 1, 1
	BRA         L_snake81
	DECFSZ      R12, 1, 1
	BRA         L_snake81
	DECFSZ      R11, 1, 1
	BRA         L_snake81
	NOP
;3x3x3 PIC program v1.c,202 :: 		renderFrame(0777777777, 0777777777, 0777777777, speed);
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+1 
	MOVLW       255
	MOVWF       FARG_renderFrame_redValues+2 
	MOVLW       7
	MOVWF       FARG_renderFrame_redValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+1 
	MOVLW       255
	MOVWF       FARG_renderFrame_greenValues+2 
	MOVLW       7
	MOVWF       FARG_renderFrame_greenValues+3 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+0 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+1 
	MOVLW       255
	MOVWF       FARG_renderFrame_blueValues+2 
	MOVLW       7
	MOVWF       FARG_renderFrame_blueValues+3 
	MOVF        FARG_snake_speed+0, 0 
	MOVWF       FARG_renderFrame_holdTime+0 
	CALL        _renderFrame+0, 0
;3x3x3 PIC program v1.c,203 :: 		allOff(); delay_ms(100);
	CALL        _allOff+0, 0
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_snake82:
	DECFSZ      R13, 1, 1
	BRA         L_snake82
	DECFSZ      R12, 1, 1
	BRA         L_snake82
	DECFSZ      R11, 1, 1
	BRA         L_snake82
	NOP
;3x3x3 PIC program v1.c,204 :: 		}
L_end_snake:
	RETURN      0
; end of _snake

_main:

;3x3x3 PIC program v1.c,206 :: 		void main() {
;3x3x3 PIC program v1.c,207 :: 		osccon=0x72;
	MOVLW       114
	MOVWF       OSCCON+0 
;3x3x3 PIC program v1.c,208 :: 		trisa=0x00;
	CLRF        TRISA+0 
;3x3x3 PIC program v1.c,209 :: 		trisb=0x00;
	CLRF        TRISB+0 
;3x3x3 PIC program v1.c,210 :: 		trisc=0x00;
	CLRF        TRISC+0 
;3x3x3 PIC program v1.c,212 :: 		allOff();
	CALL        _allOff+0, 0
;3x3x3 PIC program v1.c,216 :: 		}
L_main84:
;3x3x3 PIC program v1.c,218 :: 		while(1) {
L_main85:
;3x3x3 PIC program v1.c,219 :: 		switch(rand()%(4)) {
	CALL        _rand+0, 0
	MOVLW       4
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       FLOC__main+0 
	MOVF        R1, 0 
	MOVWF       FLOC__main+1 
	GOTO        L_main87
;3x3x3 PIC program v1.c,220 :: 		case 0: randomPixle(100); break;
L_main89:
	MOVLW       100
	MOVWF       FARG_randomPixle_count+0 
	MOVLW       0
	MOVWF       FARG_randomPixle_count+1 
	CALL        _randomPixle+0, 0
	GOTO        L_main88
;3x3x3 PIC program v1.c,221 :: 		case 1: helixGreen(4); break;
L_main90:
	MOVLW       4
	MOVWF       FARG_helixGreen_count+0 
	MOVLW       0
	MOVWF       FARG_helixGreen_count+1 
	CALL        _helixGreen+0, 0
	GOTO        L_main88
;3x3x3 PIC program v1.c,222 :: 		case 2: rgbUpDown(2); break;
L_main91:
	MOVLW       2
	MOVWF       FARG_rgbUpDown_count+0 
	MOVLW       0
	MOVWF       FARG_rgbUpDown_count+1 
	CALL        _rgbUpDown+0, 0
	GOTO        L_main88
;3x3x3 PIC program v1.c,223 :: 		case 3: usaFlash(10); break;
L_main92:
	MOVLW       10
	MOVWF       FARG_usaFlash_count+0 
	MOVLW       0
	MOVWF       FARG_usaFlash_count+1 
	CALL        _usaFlash+0, 0
	GOTO        L_main88
;3x3x3 PIC program v1.c,225 :: 		}
L_main87:
	MOVLW       0
	XORWF       FLOC__main+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main129
	MOVLW       0
	XORWF       FLOC__main+0, 0 
L__main129:
	BTFSC       STATUS+0, 2 
	GOTO        L_main89
	MOVLW       0
	XORWF       FLOC__main+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main130
	MOVLW       1
	XORWF       FLOC__main+0, 0 
L__main130:
	BTFSC       STATUS+0, 2 
	GOTO        L_main90
	MOVLW       0
	XORWF       FLOC__main+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main131
	MOVLW       2
	XORWF       FLOC__main+0, 0 
L__main131:
	BTFSC       STATUS+0, 2 
	GOTO        L_main91
	MOVLW       0
	XORWF       FLOC__main+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main132
	MOVLW       3
	XORWF       FLOC__main+0, 0 
L__main132:
	BTFSC       STATUS+0, 2 
	GOTO        L_main92
L_main88:
;3x3x3 PIC program v1.c,226 :: 		}
	GOTO        L_main85
;3x3x3 PIC program v1.c,227 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
