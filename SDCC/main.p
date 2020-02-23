pcode dump


	New pBlock

internal pblock, dbName =M
; ; Starting pCode block
; ;ic 		v 0x176	(LABEL)
; ;ic 			 0x9	(FUNCTION)
; ; ***	genFunction  3248 curr label offset=327previous max_key=1 
; ;	-----------------------------------------
; ;	 function main
; ;	-----------------------------------------
; _main:
S_main__main	code
_main:
; ; 	need to adjust stack = 0
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _OSCCON, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_OSCCON, left -=-, right AOP_LIT=0x72, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
;	.line	234; main.c	OSCCON=0x72;
	MOVLW	0x72	;key=000
; ;	1827	AOP_DIR (name = _OSCCON)
; ;	1686 pic16_popRegFromString _OSCCON 1/0
	MOVWF	_OSCCON	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _TRISA, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_TRISA, left -=-, right AOP_LIT=0x00, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
; ;	1827	AOP_DIR (name = _TRISA)
; ;	1686 pic16_popRegFromString _TRISA 1/0
;	.line	235; main.c	TRISA=0x00;
	CLRF	_TRISA	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _TRISB, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_TRISB, left -=-, right AOP_LIT=0x00, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
; ;	1827	AOP_DIR (name = _TRISB)
; ;	1686 pic16_popRegFromString _TRISB 1/0
;	.line	236; main.c	TRISB=0x00;
	CLRF	_TRISB	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _TRISC, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_TRISC, left -=-, right AOP_LIT=0x00, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
; ;	1827	AOP_DIR (name = _TRISC)
; ;	1686 pic16_popRegFromString _TRISC 1/0
;	.line	237; main.c	TRISC=0x00;
	CLRF	_TRISC	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		r 0x172	(CALL)
;	.line	239; main.c	allOff();
	CALL	_allOff	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		r 0x172	(CALL)
_00440_DS_:
;	.line	242; main.c	switch(rand()%(5)) {
	CALL	_rand	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp1, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 2697 result -=-, left AOP_REG=r0x00, right -=-, size = 0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODL, r0x01	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODH, r0x02	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	FSR0L, r0x03	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ; 	3046 left AOP_REG
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x05	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp1, regType = 2
; ;	1151 register type nRegs=4
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x03, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x02, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x01, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	__modslong	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp2, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 2697 result -=-, left AOP_REG=r0x00, right -=-, size = 0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODL, r0x01	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODH, r0x02	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	FSR0L, r0x03	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ; 	3046 left AOP_REG
	MOVLW	0x08	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		< 0x3c	(<)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp2, regType = 2
; ;	1151 register type nRegs=4
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp3, regType = 3
; ; +++	ifx true is non-null
; ; +++	ifx false is null
; ; ***	resolveIfx lbl->key=8, (lab offset=332)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4963: signed compare: left < lit(0x0=0), size=4, mask=ffffffff
	BSF	STATUS, 0	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	BTFSS	r0x03, 7	;key=000
	BCF	STATUS, 0	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
	BTFSC	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=8, label offset 332
	GOTO	_00440_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		> 0x3e	(>)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp2, regType = 2
; ;	1151 register type nRegs=4
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp4, regType = 3
; ; +++	ifx true is non-null
; ; +++	ifx false is null
; ; ***	resolveIfx lbl->key=8, (lab offset=332)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4904: swapping arguments (AOP_TYPEs 1/2)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4963: signed compare: left >= lit(0x5=5), size=4, mask=ffffffff
; ; ***	pic16_mov2w  2126  offset=3
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x03, W	;key=000
	ADDLW	0x80	;key=000
	ADDLW	0x80	;key=000
; ; ***	pic16_popGetLabel  key=21, label offset 332
	BNZ	_00453_DS_	;key=000
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	SUBWF	r0x02, W	;key=000
; ; ***	pic16_popGetLabel  key=21, label offset 332
	BNZ	_00453_DS_	;key=000
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	SUBWF	r0x01, W	;key=000
; ; ***	pic16_popGetLabel  key=21, label offset 332
	BNZ	_00453_DS_	;key=000
	MOVLW	0x05	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	SUBWF	r0x00, W	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
_00453_DS_:
	BTFSC	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=8, label offset 332
	GOTO	_00440_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		n 0x16e	(JUMPTABLE)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp2, regType = 2
; ;	1151 register type nRegs=4
; ;XXX mov	a,r0x00  /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c,10548
; add	a,acc
; add	a,r0x00
; mov	dptr,#00122_DS_
; jmp	@a+dptr
; 00122_DS_:
; ; ***	pic16_popGetLabel  key=22, label offset 332
	CLRF	PCLATH	;key=000
	CLRF	PCLATU	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x00, W	;key=000
	RLCF	PCLATH, F	;key=000
	RLCF	WREG, W	;key=000
	RLCF	PCLATH, F	;key=000
	ANDLW	0xfc	;key=000
	ADDLW	LOW(_00454_DS_)	;key=000
	MOVWF	POSTDEC1	;key=000
	MOVLW	HIGH(_00454_DS_)	;key=000
	ADDWFC	PCLATH, F	;key=000
	MOVLW	UPPER(_00454_DS_)	;key=000
	ADDWFC	PCLATU, F	;key=000
	MOVF	PREINC1, W	;key=000
	MOVWF	PCL	;key=000
; ; ***	pic16_popGetLabel  key=1, label offset 332
_00454_DS_:
	GOTO	_00433_DS_	;key=000
; ; ***	pic16_popGetLabel  key=2, label offset 332
	GOTO	_00434_DS_	;key=000
; ; ***	pic16_popGetLabel  key=3, label offset 332
	GOTO	_00435_DS_	;key=000
; ; ***	pic16_popGetLabel  key=4, label offset 332
	GOTO	_00436_DS_	;key=000
; ; ***	pic16_popGetLabel  key=5, label offset 332
	GOTO	_00437_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
_00433_DS_:
;	.line	243; main.c	case 0: randomPixle(75); break;
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x4b	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_randomPixle	;key=000
	MOVF	POSTINC1, F	;key=000
	MOVF	POSTINC1, F	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=8, label offset 332
	GOTO	_00440_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
_00434_DS_:
;	.line	244; main.c	case 1: helixGreen(4); break;
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x04	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_helixGreen	;key=000
	MOVF	POSTINC1, F	;key=000
	MOVF	POSTINC1, F	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=8, label offset 332
	GOTO	_00440_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
_00435_DS_:
;	.line	245; main.c	case 2: rgbUpDown(2); break;
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x02	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_rgbUpDown	;key=000
	MOVF	POSTINC1, F	;key=000
	MOVF	POSTINC1, F	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=8, label offset 332
	GOTO	_00440_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
_00436_DS_:
;	.line	246; main.c	case 3: usaFlash(6); break;
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x06	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_usaFlash	;key=000
	MOVF	POSTINC1, F	;key=000
	MOVF	POSTINC1, F	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=8, label offset 332
	GOTO	_00440_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
_00437_DS_:
;	.line	247; main.c	case 4: snake(8); break;
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_snake	;key=000
	MOVF	POSTINC1, F	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=8, label offset 332
;	.line	248; main.c	}
	GOTO	_00440_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		m 0x16d	(ENDFUNCTION)
	RETURN		;key=000


	New pBlock

CSEG    (CODE), dbName =C
; ; Starting pCode block
; ;ic 		v 0x176	(LABEL)
; ;ic 			 0x9	(FUNCTION)
; ; ***	genFunction  3248 curr label offset=310previous max_key=13 
; ;	-----------------------------------------
; ;	 function snake
; ;	-----------------------------------------
; _snake:
S_main__snake	code
_snake:
;	.line	184; main.c	void snake(char speed) {
	MOVFF	FSR2L, POSTDEC1	;key=000
	MOVFF	FSR1L, FSR2L	;key=000
; ; **	Saving used registers in stack
	MOVFF	r0x00, POSTDEC1	;key=000
; ; 	need to adjust stack = 0
; ;ic 		w 0x177	(RECEIVE)
; ; ***	2 genReceive  11250 argreg = 1
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	line = 2697 result -=-, left AOP_REG=r0x00, right -=-, size = 0
; ; ***	popaopidx  2349
	MOVLW	0x02	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x00	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	185; main.c	renderFrame(0000000001, 0, 0, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x01	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	186; main.c	renderFrame(0, 0000000003, 0, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	187; main.c	renderFrame(0000000007, 0, 0000000007, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x07	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x07	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	189; main.c	renderFrame(0, 0, 0000000047, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x27	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	190; main.c	renderFrame(0, 0000000067, 0000000067, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x37	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x37	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	191; main.c	renderFrame(0000000077, 0, 0, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x3f	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	193; main.c	renderFrame(0000000177, 0000000177, 0, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x7f	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x7f	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	194; main.c	renderFrame(0, 0, 0000000377, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	195; main.c	renderFrame(0000000777, 0, 0000000777, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x01	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x01	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	197; main.c	renderFrame(0000400777, 0000400777, 0, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x02	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x01	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x02	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x01	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	198; main.c	renderFrame(0, 0, 0000600777, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x01	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	199; main.c	renderFrame(0000700777, 0, 0, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x81	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	201; main.c	renderFrame(0, 0, 0000710777, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x91	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	202; main.c	renderFrame(0000730777, 0000730777, 0, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xb1	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xb1	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	203; main.c	renderFrame(0, 0, 0000770777, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xf1	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	205; main.c	renderFrame(0000774777, 0, 0, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xf9	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	206; main.c	renderFrame(0000776777, 0, 0000776777, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xfd	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xfd	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	207; main.c	renderFrame(0, 0000777777, 0, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	209; main.c	renderFrame(0, 0, 0001777777, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x07	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	210; main.c	renderFrame(0, 0003777777, 0, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x0f	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	211; main.c	renderFrame(0007777777, 0, 0007777777, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x1f	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x1f	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	213; main.c	renderFrame(0, 0047777777, 0, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x9f	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	214; main.c	renderFrame(0, 0, 0067777777, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xdf	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	215; main.c	renderFrame(0077777777, 0, 0077777777, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	217; main.c	renderFrame(0177777777, 0, 0177777777, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x01	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x01	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	218; main.c	renderFrame(0, 0377777777, 0, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	219; main.c	renderFrame(0, 0, 0777777777, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x07	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
;	.line	221; main.c	allOff();
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	223; main.c	renderFrame(0777777777, 0777777777, 0777777777, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x07	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x07	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x07	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
;	.line	224; main.c	allOff(); delay_ms(100);
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x64	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_delay_ms	;key=000
	MOVF	POSTINC1, F	;key=000
	MOVF	POSTINC1, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	225; main.c	renderFrame(0777777777, 0777777777, 0777777777, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x07	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x07	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x07	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
;	.line	226; main.c	allOff(); delay_ms(100);
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x64	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_delay_ms	;key=000
	MOVF	POSTINC1, F	;key=000
	MOVF	POSTINC1, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	227; main.c	renderFrame(0777777777, 0777777777, 0777777777, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x07	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x07	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x07	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
;	.line	228; main.c	allOff(); delay_ms(100);
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x64	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_delay_ms	;key=000
	MOVF	POSTINC1, F	;key=000
	MOVF	POSTINC1, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	229; main.c	renderFrame(0777777777, 0777777777, 0777777777, speed);
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x07	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x07	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x07	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
;	.line	230; main.c	allOff(); delay_ms(100);
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x64	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_delay_ms	;key=000
	MOVF	POSTINC1, F	;key=000
	MOVF	POSTINC1, F	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		m 0x16d	(ENDFUNCTION)
; ; **	Restoring used registers from stack
	MOVFF	PREINC1, r0x00	;key=000
	MOVFF	PREINC1, FSR2L	;key=000
	RETURN		;key=000


	New pBlock

CSEG    (CODE), dbName =C
; ; Starting pCode block
; ;ic 		v 0x176	(LABEL)
; ;ic 			 0x9	(FUNCTION)
; ; ***	genFunction  3248 curr label offset=263previous max_key=43 
; ;	-----------------------------------------
; ;	 function usaFlash
; ;	-----------------------------------------
; _usaFlash:
S_main__usaFlash	code
_usaFlash:
;	.line	176; main.c	void usaFlash(int count) {
	MOVFF	FSR2L, POSTDEC1	;key=000
	MOVFF	FSR1L, FSR2L	;key=000
; ; **	Saving used registers in stack
	MOVFF	r0x00, POSTDEC1	;key=000
	MOVFF	r0x01, POSTDEC1	;key=000
; ; 	need to adjust stack = 0
; ;ic 		w 0x177	(RECEIVE)
; ; ***	2 genReceive  11250 argreg = 1
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp6, regType = 2
; ;	1151 register type nRegs=2
; ; 	line = 2697 result -=-, left AOP_REG=r0x00, right -=-, size = 0
; ; ***	popaopidx  2349
	MOVLW	0x02	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x00	;key=000
; ; ***	popaopidx  2349
	MOVLW	0x03	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x01	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		> 0x3e	(>)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp6, regType = 2
; ;	1151 register type nRegs=2
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp1, regType = 3
; ; +++	ifx true is null
; ; +++	ifx false is non-null
; ; ***	resolveIfx lbl->key=4, (lab offset=310)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4904: swapping arguments (AOP_TYPEs 1/2)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4963: signed compare: left >= lit(0x1=1), size=2, mask=ffff
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00411_DS_:
;	.line	177; main.c	while(count>0) {  //red white and blue
	MOVF	r0x01, W	;key=000
	ADDLW	0x80	;key=000
	ADDLW	0x80	;key=000
; ; ***	pic16_popGetLabel  key=13, label offset 310
	BNZ	_00423_DS_	;key=000
	MOVLW	0x01	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	SUBWF	r0x00, W	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
_00423_DS_:
	BTFSS	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=4, label offset 310
	GOTO	_00414_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
;	.line	178; main.c	renderFrame(0000777777, 0000777000, 0777777000, 20); allOff();
	MOVLW	0x14	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x07	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xfe	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xfe	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
;	.line	179; main.c	delay_ms(250);
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xfa	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_delay_ms	;key=000
	MOVF	POSTINC1, F	;key=000
	MOVF	POSTINC1, F	;key=000
; ;ic 		- 0x2d	(-)
; ; ***	genDjnz  11174
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp6, regType = 2
; ;	1151 register type nRegs=2
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ;	1009 has symbol
; ; 	result AOP_REG, left AOP_REG, right AOP_LIT
; ; ***	pic16_getDataSize  2366
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_REG

; ; ***	pic16_getDataSize  2366
; ; hi = ff	genAddLit  564
;	.line	180; main.c	count--;
	MOVLW	0xff	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ADDWF	r0x00, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ADDWFC	r0x01, F	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=1, label offset 310
	GOTO	_00411_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		m 0x16d	(ENDFUNCTION)
; ; **	Restoring used registers from stack
_00414_DS_:
	MOVFF	PREINC1, r0x01	;key=000
	MOVFF	PREINC1, r0x00	;key=000
	MOVFF	PREINC1, FSR2L	;key=000
	RETURN		;key=000


	New pBlock

CSEG    (CODE), dbName =C
; ; Starting pCode block
; ;ic 		v 0x176	(LABEL)
; ;ic 			 0x9	(FUNCTION)
; ; ***	genFunction  3248 curr label offset=246previous max_key=13 
; ;	-----------------------------------------
; ;	 function rgbUpDown
; ;	-----------------------------------------
; _rgbUpDown:
S_main__rgbUpDown	code
_rgbUpDown:
;	.line	152; main.c	void rgbUpDown(int count) {
	MOVFF	FSR2L, POSTDEC1	;key=000
	MOVFF	FSR1L, FSR2L	;key=000
; ; **	Saving used registers in stack
	MOVFF	r0x00, POSTDEC1	;key=000
	MOVFF	r0x01, POSTDEC1	;key=000
; ; 	need to adjust stack = 0
; ;ic 		w 0x177	(RECEIVE)
; ; ***	2 genReceive  11250 argreg = 1
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp42, regType = 2
; ;	1151 register type nRegs=2
; ; 	line = 2697 result -=-, left AOP_REG=r0x00, right -=-, size = 0
; ; ***	popaopidx  2349
	MOVLW	0x02	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x00	;key=000
; ; ***	popaopidx  2349
	MOVLW	0x03	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x01	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		> 0x3e	(>)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp42, regType = 2
; ;	1151 register type nRegs=2
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp1, regType = 3
; ; +++	ifx true is null
; ; +++	ifx false is non-null
; ; ***	resolveIfx lbl->key=13, (lab offset=263)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4904: swapping arguments (AOP_TYPEs 1/2)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4963: signed compare: left >= lit(0x1=1), size=2, mask=ffff
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00367_DS_:
;	.line	153; main.c	while(count>0) {  //up down rgb
	MOVF	r0x01, W	;key=000
	ADDLW	0x80	;key=000
	ADDLW	0x80	;key=000
; ; ***	pic16_popGetLabel  key=40, label offset 263
	BNZ	_00403_DS_	;key=000
	MOVLW	0x01	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	SUBWF	r0x00, W	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
_00403_DS_:
	BTFSS	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=13, label offset 263
	GOTO	_00376_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _l, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_l, left -=-, right AOP_LIT=0x00, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
; ;	1827	AOP_DIR (name = _l)
; ;	1686 pic16_popRegFromString _l 1/0
;	.line	154; main.c	for(l = 0; l < 2; l++) {
	CLRF	_l, B	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		v 0x176	(LABEL)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
_00370_DS_:
;	.line	155; main.c	renderFrame(0000000777, 0, 0, 8); allOff();  //uses 36 Byte of ROM
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x01	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
;	.line	156; main.c	renderFrame(0000777000, 0, 0, 8); allOff();
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xfe	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
;	.line	157; main.c	renderFrame(0777000000, 0, 0, 8); allOff();
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x07	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xfc	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
;	.line	158; main.c	renderFrame(0000777000, 0, 0, 8); allOff();
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xfe	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _l, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; 	line = 1146 result AOP_DIR=_l, left AOP_DIR=_l, right AOP_LIT=0x01, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
; ; 	pic16_genPlusIncr  180
; ;	1827	AOP_DIR (name = _l)
; ;	1686 pic16_popRegFromString _l 1/0
;	.line	154; main.c	for(l = 0; l < 2; l++) {
	INCF	_l, F, B	;key=000
; ;ic 		< 0x3c	(<)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _l, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp14, regType = 3
; ; +++	ifx true is non-null
; ; +++	ifx false is null
; ; ***	resolveIfx lbl->key=7, (lab offset=263)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4948: unsigned compare: left < lit(0x2=2), size=1
	MOVLW	0x02	;key=000
; ;	1827	AOP_DIR (name = _l)
; ;	1686 pic16_popRegFromString _l 1/0
	SUBWF	_l, W, B	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
	BTFSS	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=7, label offset 263
	GOTO	_00370_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _l, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_l, left -=-, right AOP_LIT=0x00, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
; ;	1827	AOP_DIR (name = _l)
; ;	1686 pic16_popRegFromString _l 1/0
;	.line	160; main.c	for(l = 0; l < 2; l++) {
	CLRF	_l, B	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		v 0x176	(LABEL)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
_00372_DS_:
;	.line	161; main.c	renderFrame(0, 0000000777, 0, 8); allOff();
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x01	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
;	.line	162; main.c	renderFrame(0, 0000777000, 0, 8); allOff();
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xfe	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
;	.line	163; main.c	renderFrame(0, 0777000000, 0, 8); allOff();
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x07	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xfc	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
;	.line	164; main.c	renderFrame(0, 0000777000, 0, 8); allOff();
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xfe	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _l, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; 	line = 1146 result AOP_DIR=_l, left AOP_DIR=_l, right AOP_LIT=0x01, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
; ; 	pic16_genPlusIncr  180
; ;	1827	AOP_DIR (name = _l)
; ;	1686 pic16_popRegFromString _l 1/0
;	.line	160; main.c	for(l = 0; l < 2; l++) {
	INCF	_l, F, B	;key=000
; ;ic 		< 0x3c	(<)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _l, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp27, regType = 3
; ; +++	ifx true is non-null
; ; +++	ifx false is null
; ; ***	resolveIfx lbl->key=9, (lab offset=263)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4948: unsigned compare: left < lit(0x2=2), size=1
	MOVLW	0x02	;key=000
; ;	1827	AOP_DIR (name = _l)
; ;	1686 pic16_popRegFromString _l 1/0
	SUBWF	_l, W, B	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
	BTFSS	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=9, label offset 263
	GOTO	_00372_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _l, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_l, left -=-, right AOP_LIT=0x00, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
; ;	1827	AOP_DIR (name = _l)
; ;	1686 pic16_popRegFromString _l 1/0
;	.line	166; main.c	for(l = 0; l < 2; l++) {
	CLRF	_l, B	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		v 0x176	(LABEL)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
_00374_DS_:
;	.line	167; main.c	renderFrame(0, 0, 0000000777, 8); allOff();
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x01	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0xff	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
;	.line	168; main.c	renderFrame(0, 0, 0000777000, 8); allOff();
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xfe	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
;	.line	169; main.c	renderFrame(0, 0, 0777000000, 8); allOff();
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x07	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0xfc	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
;	.line	170; main.c	renderFrame(0, 0, 0000777000, 8); allOff();
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0xfe	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _l, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; 	line = 1146 result AOP_DIR=_l, left AOP_DIR=_l, right AOP_LIT=0x01, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
; ; 	pic16_genPlusIncr  180
; ;	1827	AOP_DIR (name = _l)
; ;	1686 pic16_popRegFromString _l 1/0
;	.line	166; main.c	for(l = 0; l < 2; l++) {
	INCF	_l, F, B	;key=000
; ;ic 		< 0x3c	(<)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _l, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp40, regType = 3
; ; +++	ifx true is non-null
; ; +++	ifx false is null
; ; ***	resolveIfx lbl->key=11, (lab offset=263)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4948: unsigned compare: left < lit(0x2=2), size=1
	MOVLW	0x02	;key=000
; ;	1827	AOP_DIR (name = _l)
; ;	1686 pic16_popRegFromString _l 1/0
	SUBWF	_l, W, B	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
	BTFSS	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=11, label offset 263
	GOTO	_00374_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		- 0x2d	(-)
; ; ***	genDjnz  11174
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp42, regType = 2
; ;	1151 register type nRegs=2
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ;	1009 has symbol
; ; 	result AOP_REG, left AOP_REG, right AOP_LIT
; ; ***	pic16_getDataSize  2366
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_REG

; ; ***	pic16_getDataSize  2366
; ; hi = ff	genAddLit  564
;	.line	172; main.c	count--;
	MOVLW	0xff	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ADDWF	r0x00, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ADDWFC	r0x01, F	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=4, label offset 263
	GOTO	_00367_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		m 0x16d	(ENDFUNCTION)
; ; **	Restoring used registers from stack
_00376_DS_:
	MOVFF	PREINC1, r0x01	;key=000
	MOVFF	PREINC1, r0x00	;key=000
	MOVFF	PREINC1, FSR2L	;key=000
	RETURN		;key=000


	New pBlock

CSEG    (CODE), dbName =C
; ; Starting pCode block
; ;ic 		v 0x176	(LABEL)
; ;ic 			 0x9	(FUNCTION)
; ; ***	genFunction  3248 curr label offset=193previous max_key=49 
; ;	-----------------------------------------
; ;	 function helixGreen
; ;	-----------------------------------------
; _helixGreen:
S_main__helixGreen	code
_helixGreen:
;	.line	138; main.c	void helixGreen(int count) {
	MOVFF	FSR2L, POSTDEC1	;key=000
	MOVFF	FSR1L, FSR2L	;key=000
; ; **	Saving used registers in stack
	MOVFF	r0x00, POSTDEC1	;key=000
	MOVFF	r0x01, POSTDEC1	;key=000
; ; 	need to adjust stack = 0
; ;ic 		w 0x177	(RECEIVE)
; ; ***	2 genReceive  11250 argreg = 1
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp19, regType = 2
; ;	1151 register type nRegs=2
; ; 	line = 2697 result -=-, left AOP_REG=r0x00, right -=-, size = 0
; ; ***	popaopidx  2349
	MOVLW	0x02	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x00	;key=000
; ; ***	popaopidx  2349
	MOVLW	0x03	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x01	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		> 0x3e	(>)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp19, regType = 2
; ;	1151 register type nRegs=2
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp1, regType = 3
; ; +++	ifx true is null
; ; +++	ifx false is non-null
; ; ***	resolveIfx lbl->key=4, (lab offset=246)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4904: swapping arguments (AOP_TYPEs 1/2)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4963: signed compare: left >= lit(0x1=1), size=2, mask=ffff
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00347_DS_:
;	.line	139; main.c	while(count>0) {  //helix green
	MOVF	r0x01, W	;key=000
	ADDLW	0x80	;key=000
	ADDLW	0x80	;key=000
; ; ***	pic16_popGetLabel  key=13, label offset 246
	BNZ	_00359_DS_	;key=000
	MOVLW	0x01	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	SUBWF	r0x00, W	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
_00359_DS_:
	BTFSS	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=4, label offset 246
	GOTO	_00350_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
;	.line	140; main.c	renderFrame(0, 0100200400, 0, 8); allOff();
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x01	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x01	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x01	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
;	.line	141; main.c	renderFrame(0, 0010100200, 0, 8); allOff();
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x20	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x80	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x80	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
;	.line	142; main.c	renderFrame(0, 0001010100, 0, 8); allOff();
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x04	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x10	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x40	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
;	.line	143; main.c	renderFrame(0, 0002001010, 0, 8); allOff();
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x02	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
;	.line	144; main.c	renderFrame(0, 0004002001, 0, 8); allOff();
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x10	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x04	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x01	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
;	.line	145; main.c	renderFrame(0, 0040004002, 0, 8); allOff();
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x80	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x02	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
;	.line	146; main.c	renderFrame(0, 0400040004, 0, 8); allOff();
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x04	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x40	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x04	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
;	.line	147; main.c	renderFrame(0, 0200400040, 0, 8); allOff();
	MOVLW	0x08	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x02	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x02	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x20	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		- 0x2d	(-)
; ; ***	genDjnz  11174
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp19, regType = 2
; ;	1151 register type nRegs=2
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ;	1009 has symbol
; ; 	result AOP_REG, left AOP_REG, right AOP_LIT
; ; ***	pic16_getDataSize  2366
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_REG

; ; ***	pic16_getDataSize  2366
; ; hi = ff	genAddLit  564
;	.line	148; main.c	count--;
	MOVLW	0xff	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ADDWF	r0x00, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ADDWFC	r0x01, F	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=1, label offset 246
	GOTO	_00347_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		m 0x16d	(ENDFUNCTION)
; ; **	Restoring used registers from stack
_00350_DS_:
	MOVFF	PREINC1, r0x01	;key=000
	MOVFF	PREINC1, r0x00	;key=000
	MOVFF	PREINC1, FSR2L	;key=000
	RETURN		;key=000


	New pBlock

CSEG    (CODE), dbName =C
; ; Starting pCode block
; ;ic 		v 0x176	(LABEL)
; ;ic 			 0x9	(FUNCTION)
; ; ***	genFunction  3248 curr label offset=137previous max_key=52 
; ;	-----------------------------------------
; ;	 function randomPixle
; ;	-----------------------------------------
; _randomPixle:
S_main__randomPixle	code
_randomPixle:
;	.line	127; main.c	void randomPixle(int count) {
	MOVFF	FSR2L, POSTDEC1	;key=000
	MOVFF	FSR1L, FSR2L	;key=000
; ; **	Saving used registers in stack
	MOVFF	r0x00, POSTDEC1	;key=000
	MOVFF	r0x01, POSTDEC1	;key=000
	MOVFF	r0x02, POSTDEC1	;key=000
	MOVFF	r0x03, POSTDEC1	;key=000
	MOVFF	r0x04, POSTDEC1	;key=000
	MOVFF	r0x05, POSTDEC1	;key=000
	MOVFF	r0x06, POSTDEC1	;key=000
	MOVFF	r0x07, POSTDEC1	;key=000
	MOVFF	r0x08, POSTDEC1	;key=000
	MOVFF	r0x09, POSTDEC1	;key=000
; ; 	need to adjust stack = 0
; ;ic 		w 0x177	(RECEIVE)
; ; ***	2 genReceive  11250 argreg = 1
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp31, regType = 2
; ;	1151 register type nRegs=2
; ; 	line = 2697 result -=-, left AOP_REG=r0x00, right -=-, size = 0
; ; ***	popaopidx  2349
	MOVLW	0x02	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x00	;key=000
; ; ***	popaopidx  2349
	MOVLW	0x03	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x01	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		> 0x3e	(>)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp31, regType = 2
; ;	1151 register type nRegs=2
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp1, regType = 3
; ; +++	ifx true is null
; ; +++	ifx false is non-null
; ; ***	resolveIfx lbl->key=8, (lab offset=193)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4904: swapping arguments (AOP_TYPEs 1/2)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4963: signed compare: left >= lit(0x1=1), size=2, mask=ffff
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00298_DS_:
;	.line	128; main.c	while(count>0) {
	MOVF	r0x01, W	;key=000
	ADDLW	0x80	;key=000
	ADDLW	0x80	;key=000
; ; ***	pic16_popGetLabel  key=23, label offset 193
	BNZ	_00316_DS_	;key=000
	MOVLW	0x01	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	SUBWF	r0x00, W	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
_00316_DS_:
	BTFSS	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=8, label offset 193
	GOTO	_00301_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		r 0x172	(CALL)
;	.line	129; main.c	switch(rand()%(3)) {
	CALL	_rand	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp2, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 2697 result -=-, left AOP_REG=r0x02, right -=-, size = 0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x02	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODL, r0x03	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODH, r0x04	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	FSR0L, r0x05	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ; 	3046 left AOP_REG
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp2, regType = 2
; ;	1151 register type nRegs=4
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x05, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x04, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x03, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x02, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	__modslong	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp3, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 2697 result -=-, left AOP_REG=r0x02, right -=-, size = 0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x02	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODL, r0x03	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODH, r0x04	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	FSR0L, r0x05	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ; 	3046 left AOP_REG
	MOVLW	0x08	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		< 0x3c	(<)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp3, regType = 2
; ;	1151 register type nRegs=4
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp4, regType = 3
; ; +++	ifx true is non-null
; ; +++	ifx false is null
; ; ***	resolveIfx lbl->key=4, (lab offset=193)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4963: signed compare: left < lit(0x0=0), size=4, mask=ffffffff
	BSF	STATUS, 0	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	BTFSS	r0x05, 7	;key=000
	BCF	STATUS, 0	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
	BTFSC	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=4, label offset 193
	GOTO	_00297_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		> 0x3e	(>)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp3, regType = 2
; ;	1151 register type nRegs=4
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp5, regType = 3
; ; +++	ifx true is non-null
; ; +++	ifx false is null
; ; ***	resolveIfx lbl->key=4, (lab offset=193)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4904: swapping arguments (AOP_TYPEs 1/2)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4963: signed compare: left >= lit(0x3=3), size=4, mask=ffffffff
; ; ***	pic16_mov2w  2126  offset=3
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x05, W	;key=000
	ADDLW	0x80	;key=000
	ADDLW	0x80	;key=000
; ; ***	pic16_popGetLabel  key=24, label offset 193
	BNZ	_00317_DS_	;key=000
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	SUBWF	r0x04, W	;key=000
; ; ***	pic16_popGetLabel  key=24, label offset 193
	BNZ	_00317_DS_	;key=000
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	SUBWF	r0x03, W	;key=000
; ; ***	pic16_popGetLabel  key=24, label offset 193
	BNZ	_00317_DS_	;key=000
	MOVLW	0x03	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	SUBWF	r0x02, W	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
_00317_DS_:
	BTFSC	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=4, label offset 193
	GOTO	_00297_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		n 0x16e	(JUMPTABLE)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp3, regType = 2
; ;	1151 register type nRegs=4
; ;XXX mov	a,r0x02  /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c,10548
; add	a,acc
; add	a,r0x02
; mov	dptr,#00125_DS_
; jmp	@a+dptr
; 00125_DS_:
; ; ***	pic16_popGetLabel  key=25, label offset 193
	CLRF	PCLATH	;key=000
	CLRF	PCLATU	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x02, W	;key=000
	RLCF	PCLATH, F	;key=000
	RLCF	WREG, W	;key=000
	RLCF	PCLATH, F	;key=000
	ANDLW	0xfc	;key=000
	ADDLW	LOW(_00318_DS_)	;key=000
	MOVWF	POSTDEC1	;key=000
	MOVLW	HIGH(_00318_DS_)	;key=000
	ADDWFC	PCLATH, F	;key=000
	MOVLW	UPPER(_00318_DS_)	;key=000
	ADDWFC	PCLATU, F	;key=000
	MOVF	PREINC1, W	;key=000
	MOVWF	PCL	;key=000
; ; ***	pic16_popGetLabel  key=1, label offset 193
_00318_DS_:
	GOTO	_00294_DS_	;key=000
; ; ***	pic16_popGetLabel  key=2, label offset 193
	GOTO	_00295_DS_	;key=000
; ; ***	pic16_popGetLabel  key=3, label offset 193
	GOTO	_00296_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		r 0x172	(CALL)
_00294_DS_:
;	.line	130; main.c	case 0: renderFrame(0400000000>>(rand()%27), 0400000000>>(rand()%27), 0, 3); allOff(); break;
	CALL	_rand	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp6, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 2697 result -=-, left AOP_REG=r0x02, right -=-, size = 0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x02	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODL, r0x03	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODH, r0x04	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	FSR0L, r0x05	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ; 	3046 left AOP_REG
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x1b	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp6, regType = 2
; ;	1151 register type nRegs=4
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x05, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x04, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x03, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x02, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	__modslong	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp7, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 2697 result -=-, left AOP_REG=r0x02, right -=-, size = 0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x02	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODL, r0x03	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODH, r0x04	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	FSR0L, r0x05	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ; 	3046 left AOP_REG
	MOVLW	0x08	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		 0x10e	(RIGHT_OP)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp7, regType = 2
; ;	1151 register type nRegs=4
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp8, regType = 2
; ;	1151 register type nRegs=4
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_REG

; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x02, W	;key=000
	MOVWF	FSR0L	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x02	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x03	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x04	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x04	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x05	;key=000
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_REG

	MOVF	FSR0L, W	;key=000
; ; ***	pic16_popGetLabel  key=26, label offset 193
	BZ	_00319_DS_	;key=000
; ; ***	pic16_popGetLabel  key=29, label offset 193
	BN	_00322_DS_	;key=000
	NEGF	WREG	;key=000
	BCF	STATUS, 0	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00320_DS_:
	BTFSC	r0x05, 7	;key=000
	BSF	STATUS, 0	;key=000
; ; ***	genMultiAsm  8423
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x05, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x04, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x03, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x02, F	;key=000
	ADDLW	0x01	;key=000
; ; ***	pic16_popGetLabel  key=27, label offset 193
	BNC	_00320_DS_	;key=000
; ; ***	pic16_popGetLabel  key=26, label offset 193
	BRA	_00319_DS_	;key=000
_00322_DS_:
	BCF	STATUS, 0	;key=000
; ; ***	genMultiAsm  8423
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00321_DS_:
	RLCF	r0x02, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x03, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x04, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x05, F	;key=000
	ADDLW	0x01	;key=000
; ; ***	pic16_popGetLabel  key=28, label offset 193
	BNC	_00321_DS_	;key=000
; ;ic 		r 0x172	(CALL)
_00319_DS_:
	CALL	_rand	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp9, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 2697 result -=-, left AOP_REG=r0x06, right -=-, size = 0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x06	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODL, r0x07	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODH, r0x08	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	FSR0L, r0x09	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ; 	3046 left AOP_REG
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x1b	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp9, regType = 2
; ;	1151 register type nRegs=4
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x09, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x08, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x07, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x06, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	__modslong	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp10, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 2697 result -=-, left AOP_REG=r0x06, right -=-, size = 0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x06	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODL, r0x07	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODH, r0x08	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	FSR0L, r0x09	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ; 	3046 left AOP_REG
	MOVLW	0x08	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		 0x10e	(RIGHT_OP)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp10, regType = 2
; ;	1151 register type nRegs=4
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp11, regType = 2
; ;	1151 register type nRegs=4
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_REG

; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x06, W	;key=000
	MOVWF	FSR0L	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x06	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x07	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x08	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x04	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x09	;key=000
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_REG

	MOVF	FSR0L, W	;key=000
; ; ***	pic16_popGetLabel  key=30, label offset 193
	BZ	_00323_DS_	;key=000
; ; ***	pic16_popGetLabel  key=33, label offset 193
	BN	_00326_DS_	;key=000
	NEGF	WREG	;key=000
	BCF	STATUS, 0	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00324_DS_:
	BTFSC	r0x09, 7	;key=000
	BSF	STATUS, 0	;key=000
; ; ***	genMultiAsm  8423
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x09, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x08, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x07, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x06, F	;key=000
	ADDLW	0x01	;key=000
; ; ***	pic16_popGetLabel  key=31, label offset 193
	BNC	_00324_DS_	;key=000
; ; ***	pic16_popGetLabel  key=30, label offset 193
	BRA	_00323_DS_	;key=000
_00326_DS_:
	BCF	STATUS, 0	;key=000
; ; ***	genMultiAsm  8423
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00325_DS_:
	RLCF	r0x06, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x07, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x08, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x09, F	;key=000
	ADDLW	0x01	;key=000
; ; ***	pic16_popGetLabel  key=32, label offset 193
	BNC	_00325_DS_	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
_00323_DS_:
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp11, regType = 2
; ;	1151 register type nRegs=4
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x09, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x08, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x07, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x06, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp8, regType = 2
; ;	1151 register type nRegs=4
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x05, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x04, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x03, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x02, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=4, label offset 193
	GOTO	_00297_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		r 0x172	(CALL)
_00295_DS_:
;	.line	131; main.c	case 1: renderFrame(0, 0400000000>>(rand()%27), 0400000000>>(rand()%27), 3); allOff(); break;
	CALL	_rand	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp14, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 2697 result -=-, left AOP_REG=r0x02, right -=-, size = 0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x02	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODL, r0x03	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODH, r0x04	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	FSR0L, r0x05	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ; 	3046 left AOP_REG
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x1b	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp14, regType = 2
; ;	1151 register type nRegs=4
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x05, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x04, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x03, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x02, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	__modslong	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp15, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 2697 result -=-, left AOP_REG=r0x02, right -=-, size = 0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x02	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODL, r0x03	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODH, r0x04	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	FSR0L, r0x05	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ; 	3046 left AOP_REG
	MOVLW	0x08	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		 0x10e	(RIGHT_OP)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp15, regType = 2
; ;	1151 register type nRegs=4
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp16, regType = 2
; ;	1151 register type nRegs=4
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_REG

; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x02, W	;key=000
	MOVWF	FSR0L	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x02	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x03	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x04	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x04	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x05	;key=000
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_REG

	MOVF	FSR0L, W	;key=000
; ; ***	pic16_popGetLabel  key=34, label offset 193
	BZ	_00327_DS_	;key=000
; ; ***	pic16_popGetLabel  key=37, label offset 193
	BN	_00330_DS_	;key=000
	NEGF	WREG	;key=000
	BCF	STATUS, 0	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00328_DS_:
	BTFSC	r0x05, 7	;key=000
	BSF	STATUS, 0	;key=000
; ; ***	genMultiAsm  8423
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x05, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x04, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x03, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x02, F	;key=000
	ADDLW	0x01	;key=000
; ; ***	pic16_popGetLabel  key=35, label offset 193
	BNC	_00328_DS_	;key=000
; ; ***	pic16_popGetLabel  key=34, label offset 193
	BRA	_00327_DS_	;key=000
_00330_DS_:
	BCF	STATUS, 0	;key=000
; ; ***	genMultiAsm  8423
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00329_DS_:
	RLCF	r0x02, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x03, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x04, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x05, F	;key=000
	ADDLW	0x01	;key=000
; ; ***	pic16_popGetLabel  key=36, label offset 193
	BNC	_00329_DS_	;key=000
; ;ic 		r 0x172	(CALL)
_00327_DS_:
	CALL	_rand	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp17, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 2697 result -=-, left AOP_REG=r0x06, right -=-, size = 0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x06	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODL, r0x07	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODH, r0x08	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	FSR0L, r0x09	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ; 	3046 left AOP_REG
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x1b	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp17, regType = 2
; ;	1151 register type nRegs=4
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x09, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x08, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x07, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x06, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	__modslong	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp18, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 2697 result -=-, left AOP_REG=r0x06, right -=-, size = 0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x06	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODL, r0x07	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODH, r0x08	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	FSR0L, r0x09	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ; 	3046 left AOP_REG
	MOVLW	0x08	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		 0x10e	(RIGHT_OP)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp18, regType = 2
; ;	1151 register type nRegs=4
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp19, regType = 2
; ;	1151 register type nRegs=4
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_REG

; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x06, W	;key=000
	MOVWF	FSR0L	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x06	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x07	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x08	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x04	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x09	;key=000
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_REG

	MOVF	FSR0L, W	;key=000
; ; ***	pic16_popGetLabel  key=38, label offset 193
	BZ	_00331_DS_	;key=000
; ; ***	pic16_popGetLabel  key=41, label offset 193
	BN	_00334_DS_	;key=000
	NEGF	WREG	;key=000
	BCF	STATUS, 0	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00332_DS_:
	BTFSC	r0x09, 7	;key=000
	BSF	STATUS, 0	;key=000
; ; ***	genMultiAsm  8423
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x09, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x08, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x07, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x06, F	;key=000
	ADDLW	0x01	;key=000
; ; ***	pic16_popGetLabel  key=39, label offset 193
	BNC	_00332_DS_	;key=000
; ; ***	pic16_popGetLabel  key=38, label offset 193
	BRA	_00331_DS_	;key=000
_00334_DS_:
	BCF	STATUS, 0	;key=000
; ; ***	genMultiAsm  8423
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00333_DS_:
	RLCF	r0x06, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x07, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x08, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x09, F	;key=000
	ADDLW	0x01	;key=000
; ; ***	pic16_popGetLabel  key=40, label offset 193
	BNC	_00333_DS_	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
_00331_DS_:
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp19, regType = 2
; ;	1151 register type nRegs=4
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x09, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x08, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x07, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x06, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp16, regType = 2
; ;	1151 register type nRegs=4
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x05, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x04, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x03, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x02, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=4, label offset 193
	GOTO	_00297_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		r 0x172	(CALL)
_00296_DS_:
;	.line	132; main.c	case 2: renderFrame(0400000000>>(rand()%27), 0, 0400000000>>(rand()%27), 3); allOff(); break;
	CALL	_rand	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp22, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 2697 result -=-, left AOP_REG=r0x02, right -=-, size = 0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x02	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODL, r0x03	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODH, r0x04	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	FSR0L, r0x05	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ; 	3046 left AOP_REG
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x1b	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp22, regType = 2
; ;	1151 register type nRegs=4
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x05, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x04, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x03, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x02, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	__modslong	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp23, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 2697 result -=-, left AOP_REG=r0x02, right -=-, size = 0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x02	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODL, r0x03	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODH, r0x04	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	FSR0L, r0x05	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ; 	3046 left AOP_REG
	MOVLW	0x08	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		 0x10e	(RIGHT_OP)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp23, regType = 2
; ;	1151 register type nRegs=4
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp24, regType = 2
; ;	1151 register type nRegs=4
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_REG

; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x02, W	;key=000
	MOVWF	FSR0L	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x02	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x03	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x04	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x04	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x05	;key=000
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_REG

	MOVF	FSR0L, W	;key=000
; ; ***	pic16_popGetLabel  key=42, label offset 193
	BZ	_00335_DS_	;key=000
; ; ***	pic16_popGetLabel  key=45, label offset 193
	BN	_00338_DS_	;key=000
	NEGF	WREG	;key=000
	BCF	STATUS, 0	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00336_DS_:
	BTFSC	r0x05, 7	;key=000
	BSF	STATUS, 0	;key=000
; ; ***	genMultiAsm  8423
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x05, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x04, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x03, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x02, F	;key=000
	ADDLW	0x01	;key=000
; ; ***	pic16_popGetLabel  key=43, label offset 193
	BNC	_00336_DS_	;key=000
; ; ***	pic16_popGetLabel  key=42, label offset 193
	BRA	_00335_DS_	;key=000
_00338_DS_:
	BCF	STATUS, 0	;key=000
; ; ***	genMultiAsm  8423
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00337_DS_:
	RLCF	r0x02, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x03, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x04, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x05, F	;key=000
	ADDLW	0x01	;key=000
; ; ***	pic16_popGetLabel  key=44, label offset 193
	BNC	_00337_DS_	;key=000
; ;ic 		r 0x172	(CALL)
_00335_DS_:
	CALL	_rand	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp25, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 2697 result -=-, left AOP_REG=r0x06, right -=-, size = 0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x06	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODL, r0x07	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODH, r0x08	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	FSR0L, r0x09	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ; 	3046 left AOP_REG
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x1b	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp25, regType = 2
; ;	1151 register type nRegs=4
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x09, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x08, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x07, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x06, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	__modslong	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp26, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 2697 result -=-, left AOP_REG=r0x06, right -=-, size = 0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x06	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODL, r0x07	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODH, r0x08	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	FSR0L, r0x09	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ; 	3046 left AOP_REG
	MOVLW	0x08	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		 0x10e	(RIGHT_OP)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp26, regType = 2
; ;	1151 register type nRegs=4
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp27, regType = 2
; ;	1151 register type nRegs=4
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_REG

; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x06, W	;key=000
	MOVWF	FSR0L	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x06	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x07	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x08	;key=000
; ;	1873	AOP_LIT
	MOVLW	0x04	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x09	;key=000
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_REG

	MOVF	FSR0L, W	;key=000
; ; ***	pic16_popGetLabel  key=46, label offset 193
	BZ	_00339_DS_	;key=000
; ; ***	pic16_popGetLabel  key=49, label offset 193
	BN	_00342_DS_	;key=000
	NEGF	WREG	;key=000
	BCF	STATUS, 0	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00340_DS_:
	BTFSC	r0x09, 7	;key=000
	BSF	STATUS, 0	;key=000
; ; ***	genMultiAsm  8423
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x09, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x08, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x07, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x06, F	;key=000
	ADDLW	0x01	;key=000
; ; ***	pic16_popGetLabel  key=47, label offset 193
	BNC	_00340_DS_	;key=000
; ; ***	pic16_popGetLabel  key=46, label offset 193
	BRA	_00339_DS_	;key=000
_00342_DS_:
	BCF	STATUS, 0	;key=000
; ; ***	genMultiAsm  8423
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00341_DS_:
	RLCF	r0x06, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x07, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x08, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x09, F	;key=000
	ADDLW	0x01	;key=000
; ; ***	pic16_popGetLabel  key=48, label offset 193
	BNC	_00341_DS_	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
_00339_DS_:
	MOVLW	0x03	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp27, regType = 2
; ;	1151 register type nRegs=4
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x09, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x08, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x07, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x06, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp24, regType = 2
; ;	1151 register type nRegs=4
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=3
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x05, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=2
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x04, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x03, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x02, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_renderFrame	;key=000
	MOVLW	0x0d	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		r 0x172	(CALL)
	CALL	_allOff	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		- 0x2d	(-)
; ; ***	genDjnz  11174
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp31, regType = 2
; ;	1151 register type nRegs=2
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ;	1009 has symbol
; ; 	result AOP_REG, left AOP_REG, right AOP_LIT
; ; ***	pic16_getDataSize  2366
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_REG

; ; ***	pic16_getDataSize  2366
; ; hi = ff	genAddLit  564
_00297_DS_:
;	.line	134; main.c	count--;
	MOVLW	0xff	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ADDWF	r0x00, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ADDWFC	r0x01, F	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=5, label offset 193
	GOTO	_00298_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		m 0x16d	(ENDFUNCTION)
; ; **	Restoring used registers from stack
_00301_DS_:
	MOVFF	PREINC1, r0x09	;key=000
	MOVFF	PREINC1, r0x08	;key=000
	MOVFF	PREINC1, r0x07	;key=000
	MOVFF	PREINC1, r0x06	;key=000
	MOVFF	PREINC1, r0x05	;key=000
	MOVFF	PREINC1, r0x04	;key=000
	MOVFF	PREINC1, r0x03	;key=000
	MOVFF	PREINC1, r0x02	;key=000
	MOVFF	PREINC1, r0x01	;key=000
	MOVFF	PREINC1, r0x00	;key=000
	MOVFF	PREINC1, FSR2L	;key=000
	RETURN		;key=000


	New pBlock

CSEG    (CODE), dbName =C
; ; Starting pCode block
; ;ic 		v 0x176	(LABEL)
; ;ic 			 0x9	(FUNCTION)
; ; ***	genFunction  3248 curr label offset=74previous max_key=59 
; ;	-----------------------------------------
; ;	 function renderFrame
; ;	-----------------------------------------
; _renderFrame:
S_main__renderFrame	code
_renderFrame:
;	.line	106; main.c	void renderFrame(unsigned long redValues, unsigned long greenValues, unsigned long blueValues, char holdTime) {
	MOVFF	FSR2L, POSTDEC1	;key=000
	MOVFF	FSR1L, FSR2L	;key=000
; ; **	Saving used registers in stack
	MOVFF	r0x00, POSTDEC1	;key=000
	MOVFF	r0x01, POSTDEC1	;key=000
	MOVFF	r0x02, POSTDEC1	;key=000
	MOVFF	r0x03, POSTDEC1	;key=000
	MOVFF	r0x04, POSTDEC1	;key=000
	MOVFF	r0x05, POSTDEC1	;key=000
	MOVFF	r0x06, POSTDEC1	;key=000
	MOVFF	r0x07, POSTDEC1	;key=000
	MOVFF	r0x08, POSTDEC1	;key=000
	MOVFF	r0x09, POSTDEC1	;key=000
	MOVFF	r0x0a, POSTDEC1	;key=000
	MOVFF	r0x0b, POSTDEC1	;key=000
	MOVFF	r0x0c, POSTDEC1	;key=000
	MOVFF	r0x0d, POSTDEC1	;key=000
	MOVFF	r0x0e, POSTDEC1	;key=000
; ; 	need to adjust stack = 0
; ;ic 		w 0x177	(RECEIVE)
; ; ***	2 genReceive  11250 argreg = 0
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _workingVar, size = 4
; ; 	line = 2697 result -=-, left AOP_DIR=_workingVar, right -=-, size = 0
; ; ***	popaopidx  2349
	MOVLW	0x02	;key=000
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/0
	MOVFF	PLUSW2, _workingVar	;key=000
; ; ***	popaopidx  2349
	MOVLW	0x03	;key=000
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/1
	MOVFF	PLUSW2, (_workingVar + 1)	;key=000
; ; ***	popaopidx  2349
	MOVLW	0x04	;key=000
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/2
	MOVFF	PLUSW2, (_workingVar + 2)	;key=000
; ; ***	popaopidx  2349
	MOVLW	0x05	;key=000
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/3
	MOVFF	PLUSW2, (_workingVar + 3)	;key=000
; ;ic 		w 0x177	(RECEIVE)
; ; ***	2 genReceive  11250 argreg = 2
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp1, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 2697 result -=-, left AOP_REG=r0x00, right -=-, size = 0
; ; ***	popaopidx  2349
	MOVLW	0x06	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x00	;key=000
; ; ***	popaopidx  2349
	MOVLW	0x07	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x01	;key=000
; ; ***	popaopidx  2349
	MOVLW	0x08	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x02	;key=000
; ; ***	popaopidx  2349
	MOVLW	0x09	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x03	;key=000
; ;ic 		w 0x177	(RECEIVE)
; ; ***	2 genReceive  11250 argreg = 3
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp2, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 2697 result -=-, left AOP_REG=r0x04, right -=-, size = 0
; ; ***	popaopidx  2349
	MOVLW	0x0a	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x04	;key=000
; ; ***	popaopidx  2349
	MOVLW	0x0b	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x05	;key=000
; ; ***	popaopidx  2349
	MOVLW	0x0c	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x06	;key=000
; ; ***	popaopidx  2349
	MOVLW	0x0d	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x07	;key=000
; ;ic 		w 0x177	(RECEIVE)
; ; ***	2 genReceive  11250 argreg = 4
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp3, regType = 2
; ;	1151 register type nRegs=1
; ; 	line = 2697 result -=-, left AOP_REG=r0x08, right -=-, size = 0
; ; ***	popaopidx  2349
	MOVLW	0x0e	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x08	;key=000
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_i, left -=-, right AOP_LIT=0x00, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
;	.line	108; main.c	for(i = 0; i <= 26; i++) {
	CLRF	_i, B	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		` 0x160	(ADDRESS_OF)
; ;ic 		v 0x176	(LABEL)
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp6, regType = 2
; ;	1048
; ;	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:780 immediate, size: 2
; ;	805: rname _redData, val 0, const = 0
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp7, regType = 2
; ;	1151 register type nRegs=2
; ;	1368: pic16_aopGet AOP_PCODE type PO_IMMEDIATE
; ;	_redData offset 0
; ; 	line = 1146 result AOP_REG=r0x09, left AOP_PCODE=LOW(_redData), right AOP_DIR=_i, size = 2
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_REG

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_REG, left AOP_PCODE, right AOP_DIR
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_genPlus  1275
; ; ***	pic16_genPlus  1286
; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _redData offset 0
_00242_DS_:
;	.line	109; main.c	redData[i] = (workingVar >> i) & 1;
	MOVLW	LOW(_redData)	;key=000
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
	ADDWF	_i, W, B	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x09	;key=000
; ; 	line = 1322, signs: result -=-, left -=-, right AOP_DIR=u
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	CLRF	r0x0a	;key=000
; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _redData offset 1
	MOVLW	HIGH(_redData)	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ADDWFC	r0x0a, F	;key=000
; ;ic 		 0x10e	(RIGHT_OP)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _workingVar, size = 4
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp8, regType = 2
; ;	1151 register type nRegs=4
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_REG

; ;***	pic16_sameRegsOfs aop1->type = AOP_DIR	aop2->type = AOP_REG (offset = 0)

; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/0
	MOVFF	_workingVar, r0x0b	;key=000
; ;***	pic16_sameRegsOfs aop1->type = AOP_DIR	aop2->type = AOP_REG (offset = 1)

; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/1
	MOVFF	(_workingVar + 1), r0x0c	;key=000
; ;***	pic16_sameRegsOfs aop1->type = AOP_DIR	aop2->type = AOP_REG (offset = 2)

; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/2
	MOVFF	(_workingVar + 2), r0x0d	;key=000
; ;***	pic16_sameRegsOfs aop1->type = AOP_DIR	aop2->type = AOP_REG (offset = 3)

; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/3
	MOVFF	(_workingVar + 3), r0x0e	;key=000
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_REG

; ; ***	pic16_mov2w  2126  offset=0
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
	MOVF	_i, W, B	;key=000
; ; ***	pic16_popGetLabel  key=40, label offset 137
	BZ	_00277_DS_	;key=000
	NEGF	WREG	;key=000
	BCF	STATUS, 0	;key=000
; ; ***	genMultiAsm  8423
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00278_DS_:
	RRCF	r0x0e, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x0d, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x0c, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x0b, F	;key=000
	ADDLW	0x01	;key=000
; ; ***	pic16_popGetLabel  key=41, label offset 137
	BNC	_00278_DS_	;key=000
; ;ic 		h 0x168	(BITWISEAND)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp8, regType = 2
; ;	1151 register type nRegs=4
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp9, regType = 2
; ;	1151 register type nRegs=4
; ; ***	resolveIfx 387 null ifx creating new label key =42
; ; ***	resolveIfx lbl->key=42, (lab offset=137)
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_LIT

; ; 	line = 5945 result AOP_REG=r0x0b, left AOP_REG=r0x0b, right AOP_LIT=0x01, size = 4
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_REG

; movlw	0x1
_00277_DS_:
	MOVLW	0x01	;key=000
; andwf	r0x0b,f
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ANDWF	r0x0b, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	CLRF	r0x0c	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	CLRF	r0x0d	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	CLRF	r0x0e	;key=000
; ;ic 		q 0x171	(CAST)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp10, regType = 2
; ;	1151 register type nRegs=1
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp9, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 10782 result AOP_REG=r0x0b, left -=-, right AOP_REG=r0x0b, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_REG

; ;ic 		= 0x3d	(=)
; ; ***	genNearPointerSet  9873
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp7, regType = 2
; ;	1151 register type nRegs=2
; ; ***	genNearPointerSet  9891
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp10, regType = 2
; ;	1151 register type nRegs=1
; ; 	line = 9893 result AOP_REG=r0x09, left -=-, right AOP_REG=r0x0b, size = 2
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x09, FSR0L	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x0a, FSR0H	;key=000
; ; ***	genNearPointerSet  9908
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x0b, INDF0	;key=000
; ; ***	genNearPointerSet  9941
; ; ***	genNearPointerSet  9955
; ; ***	genNearPointerSet  9967
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; 	line = 1146 result AOP_DIR=_i, left AOP_DIR=_i, right AOP_LIT=0x01, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
; ; 	pic16_genPlusIncr  180
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
;	.line	108; main.c	for(i = 0; i <= 26; i++) {
	INCF	_i, F, B	;key=000
; ;ic 		> 0x3e	(>)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp14, regType = 3
; ; +++	ifx true is null
; ; +++	ifx false is non-null
; ; ***	resolveIfx lbl->key=5, (lab offset=137)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4904: swapping arguments (AOP_TYPEs 1/3)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4948: unsigned compare: left >= lit(0x1B=27), size=1
	MOVLW	0x1b	;key=000
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
	SUBWF	_i, W, B	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
	BTFSS	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=5, label offset 137
	GOTO	_00242_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _workingVar, size = 4
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp1, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 10255 result AOP_DIR=_workingVar, left -=-, right AOP_REG=r0x00, size = 4
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_DIR

; ;   	genAssign:10377 assign from register

; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	112; main.c	workingVar = greenValues;
	MOVFF	r0x00, _workingVar	;key=000
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x01, (_workingVar + 1)	;key=000
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/2
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x02, (_workingVar + 2)	;key=000
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/3
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x03, (_workingVar + 3)	;key=000
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_i, left -=-, right AOP_LIT=0x00, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
;	.line	113; main.c	for(i = 0; i <= 26; i++) {
	CLRF	_i, B	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		` 0x160	(ADDRESS_OF)
; ;ic 		v 0x176	(LABEL)
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp17, regType = 2
; ;	1048
; ;	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:780 immediate, size: 2
; ;	805: rname _greenData, val 0, const = 0
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp18, regType = 2
; ;	1151 register type nRegs=2
; ;	1368: pic16_aopGet AOP_PCODE type PO_IMMEDIATE
; ;	_greenData offset 0
; ; 	line = 1146 result AOP_REG=r0x00, left AOP_PCODE=LOW(_greenData), right AOP_DIR=_i, size = 2
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_REG

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_REG, left AOP_PCODE, right AOP_DIR
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_genPlus  1275
; ; ***	pic16_genPlus  1286
; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _greenData offset 0
_00244_DS_:
;	.line	114; main.c	greenData[i] = (workingVar >> i) & 1;
	MOVLW	LOW(_greenData)	;key=000
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
	ADDWF	_i, W, B	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x00	;key=000
; ; 	line = 1322, signs: result -=-, left -=-, right AOP_DIR=u
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	CLRF	r0x01	;key=000
; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _greenData offset 1
	MOVLW	HIGH(_greenData)	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ADDWFC	r0x01, F	;key=000
; ;ic 		 0x10e	(RIGHT_OP)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _workingVar, size = 4
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp19, regType = 2
; ;	1151 register type nRegs=4
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_REG

; ;***	pic16_sameRegsOfs aop1->type = AOP_DIR	aop2->type = AOP_REG (offset = 0)

; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/0
	MOVFF	_workingVar, r0x02	;key=000
; ;***	pic16_sameRegsOfs aop1->type = AOP_DIR	aop2->type = AOP_REG (offset = 1)

; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/1
	MOVFF	(_workingVar + 1), r0x03	;key=000
; ;***	pic16_sameRegsOfs aop1->type = AOP_DIR	aop2->type = AOP_REG (offset = 2)

; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/2
	MOVFF	(_workingVar + 2), r0x09	;key=000
; ;***	pic16_sameRegsOfs aop1->type = AOP_DIR	aop2->type = AOP_REG (offset = 3)

; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/3
	MOVFF	(_workingVar + 3), r0x0a	;key=000
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_REG

; ; ***	pic16_mov2w  2126  offset=0
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
	MOVF	_i, W, B	;key=000
; ; ***	pic16_popGetLabel  key=44, label offset 137
	BZ	_00281_DS_	;key=000
	NEGF	WREG	;key=000
	BCF	STATUS, 0	;key=000
; ; ***	genMultiAsm  8423
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00282_DS_:
	RRCF	r0x0a, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x09, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x03, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x02, F	;key=000
	ADDLW	0x01	;key=000
; ; ***	pic16_popGetLabel  key=45, label offset 137
	BNC	_00282_DS_	;key=000
; ;ic 		h 0x168	(BITWISEAND)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp19, regType = 2
; ;	1151 register type nRegs=4
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp20, regType = 2
; ;	1151 register type nRegs=4
; ; ***	resolveIfx 387 null ifx creating new label key =46
; ; ***	resolveIfx lbl->key=46, (lab offset=137)
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_LIT

; ; 	line = 5945 result AOP_REG=r0x02, left AOP_REG=r0x02, right AOP_LIT=0x01, size = 4
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_REG

; movlw	0x1
_00281_DS_:
	MOVLW	0x01	;key=000
; andwf	r0x02,f
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ANDWF	r0x02, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	CLRF	r0x03	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	CLRF	r0x09	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	CLRF	r0x0a	;key=000
; ;ic 		q 0x171	(CAST)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp21, regType = 2
; ;	1151 register type nRegs=1
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp20, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 10782 result AOP_REG=r0x02, left -=-, right AOP_REG=r0x02, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_REG

; ;ic 		= 0x3d	(=)
; ; ***	genNearPointerSet  9873
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp18, regType = 2
; ;	1151 register type nRegs=2
; ; ***	genNearPointerSet  9891
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp21, regType = 2
; ;	1151 register type nRegs=1
; ; 	line = 9893 result AOP_REG=r0x00, left -=-, right AOP_REG=r0x02, size = 2
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x00, FSR0L	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x01, FSR0H	;key=000
; ; ***	genNearPointerSet  9908
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x02, INDF0	;key=000
; ; ***	genNearPointerSet  9941
; ; ***	genNearPointerSet  9955
; ; ***	genNearPointerSet  9967
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; 	line = 1146 result AOP_DIR=_i, left AOP_DIR=_i, right AOP_LIT=0x01, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
; ; 	pic16_genPlusIncr  180
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
;	.line	113; main.c	for(i = 0; i <= 26; i++) {
	INCF	_i, F, B	;key=000
; ;ic 		> 0x3e	(>)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp25, regType = 3
; ; +++	ifx true is null
; ; +++	ifx false is non-null
; ; ***	resolveIfx lbl->key=7, (lab offset=137)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4904: swapping arguments (AOP_TYPEs 1/3)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4948: unsigned compare: left >= lit(0x1B=27), size=1
	MOVLW	0x1b	;key=000
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
	SUBWF	_i, W, B	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
	BTFSS	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=7, label offset 137
	GOTO	_00244_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _workingVar, size = 4
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp2, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 10255 result AOP_DIR=_workingVar, left -=-, right AOP_REG=r0x04, size = 4
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_DIR

; ;   	genAssign:10377 assign from register

; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	117; main.c	workingVar = blueValues;
	MOVFF	r0x04, _workingVar	;key=000
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x05, (_workingVar + 1)	;key=000
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/2
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x06, (_workingVar + 2)	;key=000
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/3
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x07, (_workingVar + 3)	;key=000
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_i, left -=-, right AOP_LIT=0x00, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
;	.line	118; main.c	for(i = 0; i <= 26; i++) {
	CLRF	_i, B	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		` 0x160	(ADDRESS_OF)
; ;ic 		v 0x176	(LABEL)
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp28, regType = 2
; ;	1048
; ;	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:780 immediate, size: 2
; ;	805: rname _blueData, val 0, const = 0
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp29, regType = 2
; ;	1151 register type nRegs=2
; ;	1368: pic16_aopGet AOP_PCODE type PO_IMMEDIATE
; ;	_blueData offset 0
; ; 	line = 1146 result AOP_REG=r0x00, left AOP_PCODE=LOW(_blueData), right AOP_DIR=_i, size = 2
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_REG

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_REG, left AOP_PCODE, right AOP_DIR
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_genPlus  1275
; ; ***	pic16_genPlus  1286
; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _blueData offset 0
_00246_DS_:
;	.line	119; main.c	blueData[i] = (workingVar >> i) & 1;
	MOVLW	LOW(_blueData)	;key=000
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
	ADDWF	_i, W, B	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x00	;key=000
; ; 	line = 1322, signs: result -=-, left -=-, right AOP_DIR=u
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	CLRF	r0x01	;key=000
; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _blueData offset 1
	MOVLW	HIGH(_blueData)	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ADDWFC	r0x01, F	;key=000
; ;ic 		 0x10e	(RIGHT_OP)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _workingVar, size = 4
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp30, regType = 2
; ;	1151 register type nRegs=4
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_REG

; ;***	pic16_sameRegsOfs aop1->type = AOP_DIR	aop2->type = AOP_REG (offset = 0)

; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/0
	MOVFF	_workingVar, r0x02	;key=000
; ;***	pic16_sameRegsOfs aop1->type = AOP_DIR	aop2->type = AOP_REG (offset = 1)

; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/1
	MOVFF	(_workingVar + 1), r0x03	;key=000
; ;***	pic16_sameRegsOfs aop1->type = AOP_DIR	aop2->type = AOP_REG (offset = 2)

; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/2
	MOVFF	(_workingVar + 2), r0x04	;key=000
; ;***	pic16_sameRegsOfs aop1->type = AOP_DIR	aop2->type = AOP_REG (offset = 3)

; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
; ;	1827	AOP_DIR (name = _workingVar)
; ;	1686 pic16_popRegFromString _workingVar 4/3
	MOVFF	(_workingVar + 3), r0x05	;key=000
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_REG

; ; ***	pic16_mov2w  2126  offset=0
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
	MOVF	_i, W, B	;key=000
; ; ***	pic16_popGetLabel  key=48, label offset 137
	BZ	_00285_DS_	;key=000
	NEGF	WREG	;key=000
	BCF	STATUS, 0	;key=000
; ; ***	genMultiAsm  8423
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00286_DS_:
	RRCF	r0x05, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x04, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x03, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RRCF	r0x02, F	;key=000
	ADDLW	0x01	;key=000
; ; ***	pic16_popGetLabel  key=49, label offset 137
	BNC	_00286_DS_	;key=000
; ;ic 		h 0x168	(BITWISEAND)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp30, regType = 2
; ;	1151 register type nRegs=4
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp31, regType = 2
; ;	1151 register type nRegs=4
; ; ***	resolveIfx 387 null ifx creating new label key =50
; ; ***	resolveIfx lbl->key=50, (lab offset=137)
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_LIT

; ; 	line = 5945 result AOP_REG=r0x02, left AOP_REG=r0x02, right AOP_LIT=0x01, size = 4
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_REG

; movlw	0x1
_00285_DS_:
	MOVLW	0x01	;key=000
; andwf	r0x02,f
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ANDWF	r0x02, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	CLRF	r0x03	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	CLRF	r0x04	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	CLRF	r0x05	;key=000
; ;ic 		q 0x171	(CAST)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp32, regType = 2
; ;	1151 register type nRegs=1
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp31, regType = 2
; ;	1151 register type nRegs=4
; ; 	line = 10782 result AOP_REG=r0x02, left -=-, right AOP_REG=r0x02, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_REG	aop2->type = AOP_REG

; ;ic 		= 0x3d	(=)
; ; ***	genNearPointerSet  9873
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp29, regType = 2
; ;	1151 register type nRegs=2
; ; ***	genNearPointerSet  9891
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp32, regType = 2
; ;	1151 register type nRegs=1
; ; 	line = 9893 result AOP_REG=r0x00, left -=-, right AOP_REG=r0x02, size = 2
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x00, FSR0L	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x01, FSR0H	;key=000
; ; ***	genNearPointerSet  9908
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x02, INDF0	;key=000
; ; ***	genNearPointerSet  9941
; ; ***	genNearPointerSet  9955
; ; ***	genNearPointerSet  9967
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; 	line = 1146 result AOP_DIR=_i, left AOP_DIR=_i, right AOP_LIT=0x01, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
; ; 	pic16_genPlusIncr  180
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
;	.line	118; main.c	for(i = 0; i <= 26; i++) {
	INCF	_i, F, B	;key=000
; ;ic 		> 0x3e	(>)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp36, regType = 3
; ; +++	ifx true is null
; ; +++	ifx false is non-null
; ; ***	resolveIfx lbl->key=9, (lab offset=137)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4904: swapping arguments (AOP_TYPEs 1/3)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4948: unsigned compare: left >= lit(0x1B=27), size=1
	MOVLW	0x1b	;key=000
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
	SUBWF	_i, W, B	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
	BTFSS	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=9, label offset 137
	GOTO	_00246_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _k, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_k, left -=-, right AOP_LIT=0x00, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
; ;	1827	AOP_DIR (name = _k)
; ;	1686 pic16_popRegFromString _k 1/0
;	.line	122; main.c	for(k = 0; k < holdTime; k++) {
	CLRF	_k, B	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		v 0x176	(LABEL)
; ;ic 		< 0x3c	(<)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _k, size = 1
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp3, regType = 2
; ;	1151 register type nRegs=1
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp38, regType = 3
; ; +++	ifx true is null
; ; +++	ifx false is non-null
; ; ***	resolveIfx lbl->key=14, (lab offset=137)
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00249_DS_:
	MOVF	r0x08, W	;key=000
; ;	1827	AOP_DIR (name = _k)
; ;	1686 pic16_popRegFromString _k 1/0
	SUBWF	_k, W, B	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
	BTFSC	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=14, label offset 137
	GOTO	_00251_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		r 0x172	(CALL)
;	.line	123; main.c	displayFrame();
	CALL	_displayFrame	;key=000
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _k, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; 	line = 1146 result AOP_DIR=_k, left AOP_DIR=_k, right AOP_LIT=0x01, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
; ; 	pic16_genPlusIncr  180
; ;	1827	AOP_DIR (name = _k)
; ;	1686 pic16_popRegFromString _k 1/0
;	.line	122; main.c	for(k = 0; k < holdTime; k++) {
	INCF	_k, F, B	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=12, label offset 137
	GOTO	_00249_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		m 0x16d	(ENDFUNCTION)
; ; **	Restoring used registers from stack
_00251_DS_:
	MOVFF	PREINC1, r0x0e	;key=000
	MOVFF	PREINC1, r0x0d	;key=000
	MOVFF	PREINC1, r0x0c	;key=000
	MOVFF	PREINC1, r0x0b	;key=000
	MOVFF	PREINC1, r0x0a	;key=000
	MOVFF	PREINC1, r0x09	;key=000
	MOVFF	PREINC1, r0x08	;key=000
	MOVFF	PREINC1, r0x07	;key=000
	MOVFF	PREINC1, r0x06	;key=000
	MOVFF	PREINC1, r0x05	;key=000
	MOVFF	PREINC1, r0x04	;key=000
	MOVFF	PREINC1, r0x03	;key=000
	MOVFF	PREINC1, r0x02	;key=000
	MOVFF	PREINC1, r0x01	;key=000
	MOVFF	PREINC1, r0x00	;key=000
	MOVFF	PREINC1, FSR2L	;key=000
	RETURN		;key=000


	New pBlock

CSEG    (CODE), dbName =C
; ; Starting pCode block
; ;ic 		v 0x176	(LABEL)
; ;ic 			 0x9	(FUNCTION)
; ; ***	genFunction  3248 curr label offset=48previous max_key=22 
; ;	-----------------------------------------
; ;	 function displayFrame
; ;	-----------------------------------------
; _displayFrame:
S_main__displayFrame	code
_displayFrame:
;	.line	71; main.c	void displayFrame(void) {
	MOVFF	FSR2L, POSTDEC1	;key=000
	MOVFF	FSR1L, FSR2L	;key=000
; ; **	Saving used registers in stack
	MOVFF	r0x00, POSTDEC1	;key=000
	MOVFF	r0x01, POSTDEC1	;key=000
; ; 	need to adjust stack = 0
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _pointer, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_pointer, left -=-, right AOP_LIT=0x00, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
; ;	1827	AOP_DIR (name = _pointer)
; ;	1686 pic16_popRegFromString _pointer 1/0
;	.line	72; main.c	pointer = 0;
	CLRF	_pointer, B	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_i, left -=-, right AOP_LIT=0x00, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
;	.line	73; main.c	for(i = 0; i <= 2; i++) {
	CLRF	_i, B	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		` 0x160	(ADDRESS_OF)
; ;ic 		v 0x176	(LABEL)
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _j, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_j, left -=-, right AOP_LIT=0x00, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
; ;	1827	AOP_DIR (name = _j)
; ;	1686 pic16_popRegFromString _j 1/0
_00183_DS_:
;	.line	74; main.c	for(j = 0; j <= 8; j++) {
	CLRF	_j, B	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		v 0x176	(LABEL)
; ;ic 		r 0x172	(CALL)
_00181_DS_:
;	.line	75; main.c	allOff();
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ; 	2995 left AOP_DIR
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
;	.line	76; main.c	colorSet(i);
	MOVF	_i, W, B	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_colorSet	;key=000
	MOVF	POSTINC1, F	;key=000
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp5, regType = 2
; ;	1048
; ;	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:780 immediate, size: 2
; ;	805: rname _redData, val 0, const = 0
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _pointer, size = 1
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp6, regType = 2
; ;	1151 register type nRegs=2
; ;	1368: pic16_aopGet AOP_PCODE type PO_IMMEDIATE
; ;	_redData offset 0
; ; 	line = 1146 result AOP_REG=r0x00, left AOP_PCODE=LOW(_redData), right AOP_DIR=_pointer, size = 2
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_REG

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_REG, left AOP_PCODE, right AOP_DIR
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_genPlus  1275
; ; ***	pic16_genPlus  1286
; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _redData offset 0
;	.line	77; main.c	columbSet(j, redData[pointer]);
	MOVLW	LOW(_redData)	;key=000
; ;	1827	AOP_DIR (name = _pointer)
; ;	1686 pic16_popRegFromString _pointer 1/0
	ADDWF	_pointer, W, B	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x00	;key=000
; ; 	line = 1322, signs: result -=-, left -=-, right AOP_DIR=u
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	CLRF	r0x01	;key=000
; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _redData offset 1
	MOVLW	HIGH(_redData)	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ADDWFC	r0x01, F	;key=000
; ;ic 		a 0x161	(GET_VALUE_AT_ADDRESS)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp6, regType = 2
; ;	1151 register type nRegs=2
; ; ***	genNearPointerGet  9242
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp7, regType = 2
; ;	1151 register type nRegs=1
; ; 	line = 9245 result AOP_REG=r0x00, left AOP_REG=r0x00, right -=-, size = 1
; ; ***	genNearPointerGet  9293
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x00, FSR0L	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x01, FSR0H	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	INDF0, r0x00	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp7, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _j, size = 1
; ; 	2995 left AOP_DIR
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1827	AOP_DIR (name = _j)
; ;	1686 pic16_popRegFromString _j 1/0
	MOVF	_j, W, B	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_columbSet	;key=000
	MOVF	POSTINC1, F	;key=000
	MOVF	POSTINC1, F	;key=000
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp9, regType = 2
; ;	1151 register type nRegs=2
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	687: rname _delaySpeed, val 0, const = 1
; ;	717 size = 3
; ;	1368: pic16_aopGet AOP_PCODE type PO_IMMEDIATE
; ;	_delaySpeed offset 0
; ; 	line = 10255 result AOP_REG=r0x00, left -=-, right AOP_PCODE=LOW(_delaySpeed), size = 2
; ;***	pic16_sameRegs aop1->type = AOP_PCODE	aop2->type = AOP_REG

; ;   	genAssign:10394 symbol in code space, take special care

; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _delaySpeed offset 0
;	.line	78; main.c	delay_us(delaySpeed*2);
	MOVLW	LOW(_delaySpeed)	;key=000
	MOVWF	TBLPTRL	;key=000
; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _delaySpeed offset 1
	MOVLW	HIGH(_delaySpeed)	;key=000
	MOVWF	TBLPTRH	;key=000
; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _delaySpeed offset 2
	MOVLW	UPPER(_delaySpeed)	;key=000
	MOVWF	TBLPTRU	;key=000
	TBLRD*+		;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	TABLAT, r0x00	;key=000
	TBLRD*+		;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	TABLAT, r0x01	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp9, regType = 2
; ;	1151 register type nRegs=2
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x01, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x02	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	__mulint	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp10, regType = 2
; ;	1151 register type nRegs=2
; ; 	line = 2697 result -=-, left AOP_REG=r0x00, right -=-, size = 0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODL, r0x01	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ; 	3046 left AOP_REG
	MOVLW	0x04	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp10, regType = 2
; ;	1151 register type nRegs=2
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x01, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_delay_us	;key=000
	MOVF	POSTINC1, F	;key=000
	MOVF	POSTINC1, F	;key=000
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _pointer, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; 	line = 1146 result AOP_DIR=_pointer, left AOP_DIR=_pointer, right AOP_LIT=0x01, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
; ; 	pic16_genPlusIncr  180
; ;	1827	AOP_DIR (name = _pointer)
; ;	1686 pic16_popRegFromString _pointer 1/0
;	.line	79; main.c	pointer++;
	INCF	_pointer, F, B	;key=000
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _j, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; 	line = 1146 result AOP_DIR=_j, left AOP_DIR=_j, right AOP_LIT=0x01, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
; ; 	pic16_genPlusIncr  180
; ;	1827	AOP_DIR (name = _j)
; ;	1686 pic16_popRegFromString _j 1/0
;	.line	74; main.c	for(j = 0; j <= 8; j++) {
	INCF	_j, F, B	;key=000
; ;ic 		> 0x3e	(>)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _j, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp18, regType = 3
; ; +++	ifx true is null
; ; +++	ifx false is non-null
; ; ***	resolveIfx lbl->key=7, (lab offset=74)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4904: swapping arguments (AOP_TYPEs 1/3)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4948: unsigned compare: left >= lit(0x9=9), size=1
	MOVLW	0x09	;key=000
; ;	1827	AOP_DIR (name = _j)
; ;	1686 pic16_popRegFromString _j 1/0
	SUBWF	_j, W, B	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
	BTFSS	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=7, label offset 74
	GOTO	_00181_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; 	line = 1146 result AOP_DIR=_i, left AOP_DIR=_i, right AOP_LIT=0x01, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
; ; 	pic16_genPlusIncr  180
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
;	.line	73; main.c	for(i = 0; i <= 2; i++) {
	INCF	_i, F, B	;key=000
; ;ic 		> 0x3e	(>)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp22, regType = 3
; ; +++	ifx true is null
; ; +++	ifx false is non-null
; ; ***	resolveIfx lbl->key=9, (lab offset=74)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4904: swapping arguments (AOP_TYPEs 1/3)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4948: unsigned compare: left >= lit(0x3=3), size=1
	MOVLW	0x03	;key=000
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
	SUBWF	_i, W, B	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
	BTFSS	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=9, label offset 74
	GOTO	_00183_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _pointer, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_pointer, left -=-, right AOP_LIT=0x00, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
; ;	1827	AOP_DIR (name = _pointer)
; ;	1686 pic16_popRegFromString _pointer 1/0
;	.line	83; main.c	pointer = 0;
	CLRF	_pointer, B	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_i, left -=-, right AOP_LIT=0x03, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
;	.line	84; main.c	for(i = 3; i <= 5; i++) {
	MOVLW	0x03	;key=000
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
	MOVWF	_i, B	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		` 0x160	(ADDRESS_OF)
; ;ic 		v 0x176	(LABEL)
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _j, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_j, left -=-, right AOP_LIT=0x00, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
; ;	1827	AOP_DIR (name = _j)
; ;	1686 pic16_popRegFromString _j 1/0
_00187_DS_:
;	.line	85; main.c	for(j = 0; j <= 8; j++) {
	CLRF	_j, B	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		v 0x176	(LABEL)
; ;ic 		r 0x172	(CALL)
_00185_DS_:
;	.line	86; main.c	allOff();
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ; 	2995 left AOP_DIR
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
;	.line	87; main.c	colorSet(i);
	MOVF	_i, W, B	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_colorSet	;key=000
	MOVF	POSTINC1, F	;key=000
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp28, regType = 2
; ;	1048
; ;	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:780 immediate, size: 2
; ;	805: rname _greenData, val 0, const = 0
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _pointer, size = 1
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp29, regType = 2
; ;	1151 register type nRegs=2
; ;	1368: pic16_aopGet AOP_PCODE type PO_IMMEDIATE
; ;	_greenData offset 0
; ; 	line = 1146 result AOP_REG=r0x00, left AOP_PCODE=LOW(_greenData), right AOP_DIR=_pointer, size = 2
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_REG

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_REG, left AOP_PCODE, right AOP_DIR
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_genPlus  1275
; ; ***	pic16_genPlus  1286
; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _greenData offset 0
;	.line	88; main.c	columbSet(j, greenData[pointer]);
	MOVLW	LOW(_greenData)	;key=000
; ;	1827	AOP_DIR (name = _pointer)
; ;	1686 pic16_popRegFromString _pointer 1/0
	ADDWF	_pointer, W, B	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x00	;key=000
; ; 	line = 1322, signs: result -=-, left -=-, right AOP_DIR=u
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	CLRF	r0x01	;key=000
; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _greenData offset 1
	MOVLW	HIGH(_greenData)	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ADDWFC	r0x01, F	;key=000
; ;ic 		a 0x161	(GET_VALUE_AT_ADDRESS)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp29, regType = 2
; ;	1151 register type nRegs=2
; ; ***	genNearPointerGet  9242
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp30, regType = 2
; ;	1151 register type nRegs=1
; ; 	line = 9245 result AOP_REG=r0x00, left AOP_REG=r0x00, right -=-, size = 1
; ; ***	genNearPointerGet  9293
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x00, FSR0L	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x01, FSR0H	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	INDF0, r0x00	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp30, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _j, size = 1
; ; 	2995 left AOP_DIR
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1827	AOP_DIR (name = _j)
; ;	1686 pic16_popRegFromString _j 1/0
	MOVF	_j, W, B	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_columbSet	;key=000
	MOVF	POSTINC1, F	;key=000
	MOVF	POSTINC1, F	;key=000
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp32, regType = 2
; ;	1151 register type nRegs=2
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	687: rname _delaySpeed, val 0, const = 1
; ;	717 size = 3
; ;	1368: pic16_aopGet AOP_PCODE type PO_IMMEDIATE
; ;	_delaySpeed offset 0
; ; 	line = 10255 result AOP_REG=r0x00, left -=-, right AOP_PCODE=LOW(_delaySpeed), size = 2
; ;***	pic16_sameRegs aop1->type = AOP_PCODE	aop2->type = AOP_REG

; ;   	genAssign:10394 symbol in code space, take special care

; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _delaySpeed offset 0
;	.line	89; main.c	delay_us(delaySpeed);
	MOVLW	LOW(_delaySpeed)	;key=000
	MOVWF	TBLPTRL	;key=000
; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _delaySpeed offset 1
	MOVLW	HIGH(_delaySpeed)	;key=000
	MOVWF	TBLPTRH	;key=000
; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _delaySpeed offset 2
	MOVLW	UPPER(_delaySpeed)	;key=000
	MOVWF	TBLPTRU	;key=000
	TBLRD*+		;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	TABLAT, r0x00	;key=000
	TBLRD*+		;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	TABLAT, r0x01	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp32, regType = 2
; ;	1151 register type nRegs=2
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x01, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_delay_us	;key=000
	MOVF	POSTINC1, F	;key=000
	MOVF	POSTINC1, F	;key=000
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _pointer, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; 	line = 1146 result AOP_DIR=_pointer, left AOP_DIR=_pointer, right AOP_LIT=0x01, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
; ; 	pic16_genPlusIncr  180
; ;	1827	AOP_DIR (name = _pointer)
; ;	1686 pic16_popRegFromString _pointer 1/0
;	.line	90; main.c	pointer++;
	INCF	_pointer, F, B	;key=000
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _j, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; 	line = 1146 result AOP_DIR=_j, left AOP_DIR=_j, right AOP_LIT=0x01, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
; ; 	pic16_genPlusIncr  180
; ;	1827	AOP_DIR (name = _j)
; ;	1686 pic16_popRegFromString _j 1/0
;	.line	85; main.c	for(j = 0; j <= 8; j++) {
	INCF	_j, F, B	;key=000
; ;ic 		> 0x3e	(>)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _j, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp40, regType = 3
; ; +++	ifx true is null
; ; +++	ifx false is non-null
; ; ***	resolveIfx lbl->key=11, (lab offset=74)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4904: swapping arguments (AOP_TYPEs 1/3)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4948: unsigned compare: left >= lit(0x9=9), size=1
	MOVLW	0x09	;key=000
; ;	1827	AOP_DIR (name = _j)
; ;	1686 pic16_popRegFromString _j 1/0
	SUBWF	_j, W, B	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
	BTFSS	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=11, label offset 74
	GOTO	_00185_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; 	line = 1146 result AOP_DIR=_i, left AOP_DIR=_i, right AOP_LIT=0x01, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
; ; 	pic16_genPlusIncr  180
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
;	.line	84; main.c	for(i = 3; i <= 5; i++) {
	INCF	_i, F, B	;key=000
; ;ic 		> 0x3e	(>)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp44, regType = 3
; ; +++	ifx true is null
; ; +++	ifx false is non-null
; ; ***	resolveIfx lbl->key=13, (lab offset=74)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4904: swapping arguments (AOP_TYPEs 1/3)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4948: unsigned compare: left >= lit(0x6=6), size=1
	MOVLW	0x06	;key=000
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
	SUBWF	_i, W, B	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
	BTFSS	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=13, label offset 74
	GOTO	_00187_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _pointer, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_pointer, left -=-, right AOP_LIT=0x00, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
; ;	1827	AOP_DIR (name = _pointer)
; ;	1686 pic16_popRegFromString _pointer 1/0
;	.line	94; main.c	pointer = 0;
	CLRF	_pointer, B	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_i, left -=-, right AOP_LIT=0x06, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
;	.line	95; main.c	for(i = 6; i <= 8; i++) {
	MOVLW	0x06	;key=000
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
	MOVWF	_i, B	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		` 0x160	(ADDRESS_OF)
; ;ic 		v 0x176	(LABEL)
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _j, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_j, left -=-, right AOP_LIT=0x00, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
; ;	1827	AOP_DIR (name = _j)
; ;	1686 pic16_popRegFromString _j 1/0
_00191_DS_:
;	.line	96; main.c	for(j = 0; j <= 8; j++) {
	CLRF	_j, B	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		v 0x176	(LABEL)
; ;ic 		r 0x172	(CALL)
_00189_DS_:
;	.line	97; main.c	allOff();
	CALL	_allOff	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ; 	2995 left AOP_DIR
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
;	.line	98; main.c	colorSet(i);
	MOVF	_i, W, B	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_colorSet	;key=000
	MOVF	POSTINC1, F	;key=000
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp50, regType = 2
; ;	1048
; ;	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:780 immediate, size: 2
; ;	805: rname _blueData, val 0, const = 0
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _pointer, size = 1
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp51, regType = 2
; ;	1151 register type nRegs=2
; ;	1368: pic16_aopGet AOP_PCODE type PO_IMMEDIATE
; ;	_blueData offset 0
; ; 	line = 1146 result AOP_REG=r0x00, left AOP_PCODE=LOW(_blueData), right AOP_DIR=_pointer, size = 2
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_REG

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_REG, left AOP_PCODE, right AOP_DIR
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_genPlus  1275
; ; ***	pic16_genPlus  1286
; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _blueData offset 0
;	.line	99; main.c	columbSet(j, blueData[pointer]);
	MOVLW	LOW(_blueData)	;key=000
; ;	1827	AOP_DIR (name = _pointer)
; ;	1686 pic16_popRegFromString _pointer 1/0
	ADDWF	_pointer, W, B	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x00	;key=000
; ; 	line = 1322, signs: result -=-, left -=-, right AOP_DIR=u
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	CLRF	r0x01	;key=000
; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _blueData offset 1
	MOVLW	HIGH(_blueData)	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ADDWFC	r0x01, F	;key=000
; ;ic 		a 0x161	(GET_VALUE_AT_ADDRESS)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp51, regType = 2
; ;	1151 register type nRegs=2
; ; ***	genNearPointerGet  9242
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp52, regType = 2
; ;	1151 register type nRegs=1
; ; 	line = 9245 result AOP_REG=r0x00, left AOP_REG=r0x00, right -=-, size = 1
; ; ***	genNearPointerGet  9293
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x00, FSR0L	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	r0x01, FSR0H	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	INDF0, r0x00	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp52, regType = 2
; ;	1151 register type nRegs=1
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _j, size = 1
; ; 	2995 left AOP_DIR
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1827	AOP_DIR (name = _j)
; ;	1686 pic16_popRegFromString _j 1/0
	MOVF	_j, W, B	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_columbSet	;key=000
	MOVF	POSTINC1, F	;key=000
	MOVF	POSTINC1, F	;key=000
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp54, regType = 2
; ;	1151 register type nRegs=2
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	687: rname _delaySpeed, val 0, const = 1
; ;	717 size = 3
; ;	1368: pic16_aopGet AOP_PCODE type PO_IMMEDIATE
; ;	_delaySpeed offset 0
; ; 	line = 10255 result AOP_REG=r0x00, left -=-, right AOP_PCODE=LOW(_delaySpeed), size = 2
; ;***	pic16_sameRegs aop1->type = AOP_PCODE	aop2->type = AOP_REG

; ;   	genAssign:10394 symbol in code space, take special care

; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _delaySpeed offset 0
;	.line	100; main.c	delay_us(delaySpeed);
	MOVLW	LOW(_delaySpeed)	;key=000
	MOVWF	TBLPTRL	;key=000
; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _delaySpeed offset 1
	MOVLW	HIGH(_delaySpeed)	;key=000
	MOVWF	TBLPTRH	;key=000
; ;	pic16_popGet AOP_PCODE (PO_IMMEDIATE) 1892 _delaySpeed offset 2
	MOVLW	UPPER(_delaySpeed)	;key=000
	MOVWF	TBLPTRU	;key=000
	TBLRD*+		;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	TABLAT, r0x00	;key=000
	TBLRD*+		;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	TABLAT, r0x01	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp54, regType = 2
; ;	1151 register type nRegs=2
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x01, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	_delay_us	;key=000
	MOVF	POSTINC1, F	;key=000
	MOVF	POSTINC1, F	;key=000
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _pointer, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; 	line = 1146 result AOP_DIR=_pointer, left AOP_DIR=_pointer, right AOP_LIT=0x01, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
; ; 	pic16_genPlusIncr  180
; ;	1827	AOP_DIR (name = _pointer)
; ;	1686 pic16_popRegFromString _pointer 1/0
;	.line	101; main.c	pointer++;
	INCF	_pointer, F, B	;key=000
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _j, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; 	line = 1146 result AOP_DIR=_j, left AOP_DIR=_j, right AOP_LIT=0x01, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
; ; 	pic16_genPlusIncr  180
; ;	1827	AOP_DIR (name = _j)
; ;	1686 pic16_popRegFromString _j 1/0
;	.line	96; main.c	for(j = 0; j <= 8; j++) {
	INCF	_j, F, B	;key=000
; ;ic 		> 0x3e	(>)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _j, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp62, regType = 3
; ; +++	ifx true is null
; ; +++	ifx false is non-null
; ; ***	resolveIfx lbl->key=15, (lab offset=74)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4904: swapping arguments (AOP_TYPEs 1/3)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4948: unsigned compare: left >= lit(0x9=9), size=1
	MOVLW	0x09	;key=000
; ;	1827	AOP_DIR (name = _j)
; ;	1686 pic16_popRegFromString _j 1/0
	SUBWF	_j, W, B	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
	BTFSS	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=15, label offset 74
	GOTO	_00189_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		+ 0x2b	(+)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; 	line = 1146 result AOP_DIR=_i, left AOP_DIR=_i, right AOP_LIT=0x01, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	pic16_getDataSize  2366
; ; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
; ; 	pic16_genPlusIncr  180
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
;	.line	95; main.c	for(i = 6; i <= 8; i++) {
	INCF	_i, F, B	;key=000
; ;ic 		> 0x3e	(>)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _i, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp66, regType = 3
; ; +++	ifx true is null
; ; +++	ifx false is non-null
; ; ***	resolveIfx lbl->key=17, (lab offset=74)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4904: swapping arguments (AOP_TYPEs 1/3)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4948: unsigned compare: left >= lit(0x9=9), size=1
	MOVLW	0x09	;key=000
; ;	1827	AOP_DIR (name = _i)
; ;	1686 pic16_popRegFromString _i 1/0
	SUBWF	_i, W, B	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
	BTFSS	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=17, label offset 74
	GOTO	_00191_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		v 0x176	(LABEL)
; ;ic 		m 0x16d	(ENDFUNCTION)
; ; **	Restoring used registers from stack
	MOVFF	PREINC1, r0x01	;key=000
	MOVFF	PREINC1, r0x00	;key=000
	MOVFF	PREINC1, FSR2L	;key=000
	RETURN		;key=000


	New pBlock

CSEG    (CODE), dbName =C
; ; Starting pCode block
; ;ic 		v 0x176	(LABEL)
; ;ic 			 0x9	(FUNCTION)
; ; ***	genFunction  3248 curr label offset=27previous max_key=17 
; ;	-----------------------------------------
; ;	 function columbSet
; ;	-----------------------------------------
; _columbSet:
S_main__columbSet	code
_columbSet:
;	.line	55; main.c	void columbSet(char columbAddr, char columbData) {
	MOVFF	FSR2L, POSTDEC1	;key=000
	MOVFF	FSR1L, FSR2L	;key=000
; ; **	Saving used registers in stack
	MOVFF	r0x00, POSTDEC1	;key=000
	MOVFF	r0x01, POSTDEC1	;key=000
; ; 	need to adjust stack = 0
; ;ic 		w 0x177	(RECEIVE)
; ; ***	2 genReceive  11250 argreg = 1
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	line = 2697 result -=-, left AOP_REG=r0x00, right -=-, size = 0
; ; ***	popaopidx  2349
	MOVLW	0x02	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x00	;key=000
; ;ic 		w 0x177	(RECEIVE)
; ; ***	2 genReceive  11250 argreg = 2
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp1, regType = 2
; ;	1151 register type nRegs=1
; ; 	line = 2697 result -=-, left AOP_REG=r0x01, right -=-, size = 0
; ; ***	popaopidx  2349
	MOVLW	0x03	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x01	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp1, regType = 2
; ;	1151 register type nRegs=1
; ; ***	pic16_toBoolean  2484
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	56; main.c	if(columbData != 0) {
	MOVF	r0x01, W	;key=000
	BTFSC	STATUS, 2	;key=000
; ; ***	pic16_popGetLabel  key=13, label offset 48
	GOTO	_00161_DS_	;key=000
;  goto	_00161_DS_
; ;ic 		> 0x3e	(>)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp2, regType = 3
; ; +++	ifx true is non-null
; ; +++	ifx false is null
; ; ***	resolveIfx lbl->key=13, (lab offset=48)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4904: swapping arguments (AOP_TYPEs 1/2)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4948: unsigned compare: left >= lit(0x9=9), size=1
;	.line	57; main.c	switch (columbAddr) {
	MOVLW	0x09	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	SUBWF	r0x00, W	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
	BTFSC	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=13, label offset 48
	GOTO	_00161_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		n 0x16e	(JUMPTABLE)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ;XXX mov	a,r0x00  /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c,10548
; add	a,acc
; add	a,r0x00
; mov	dptr,#00122_DS_
; jmp	@a+dptr
; 00122_DS_:
; ; ***	pic16_popGetLabel  key=22, label offset 48
	CLRF	PCLATH	;key=000
	CLRF	PCLATU	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x00, W	;key=000
	RLCF	PCLATH, F	;key=000
	RLCF	WREG, W	;key=000
	RLCF	PCLATH, F	;key=000
	ANDLW	0xfc	;key=000
	ADDLW	LOW(_00170_DS_)	;key=000
	MOVWF	POSTDEC1	;key=000
	MOVLW	HIGH(_00170_DS_)	;key=000
	ADDWFC	PCLATH, F	;key=000
	MOVLW	UPPER(_00170_DS_)	;key=000
	ADDWFC	PCLATU, F	;key=000
	MOVF	PREINC1, W	;key=000
	MOVWF	PCL	;key=000
; ; ***	pic16_popGetLabel  key=1, label offset 48
_00170_DS_:
	GOTO	_00149_DS_	;key=000
; ; ***	pic16_popGetLabel  key=2, label offset 48
	GOTO	_00150_DS_	;key=000
; ; ***	pic16_popGetLabel  key=3, label offset 48
	GOTO	_00151_DS_	;key=000
; ; ***	pic16_popGetLabel  key=4, label offset 48
	GOTO	_00152_DS_	;key=000
; ; ***	pic16_popGetLabel  key=5, label offset 48
	GOTO	_00153_DS_	;key=000
; ; ***	pic16_popGetLabel  key=6, label offset 48
	GOTO	_00154_DS_	;key=000
; ; ***	pic16_popGetLabel  key=7, label offset 48
	GOTO	_00155_DS_	;key=000
; ; ***	pic16_popGetLabel  key=8, label offset 48
	GOTO	_00156_DS_	;key=000
; ; ***	pic16_popGetLabel  key=9, label offset 48
	GOTO	_00157_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		| 0x7c	(|)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTB, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ;	1009 has symbol
; ; ***	resolveIfx 387 null ifx creating new label key =23
; ; ***	resolveIfx lbl->key=23, (lab offset=48)
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_LIT

; ; 	line = 6330 result AOP_DIR=_PORTB, left AOP_DIR=_PORTB, right AOP_LIT=0x20, size = 1
_00149_DS_:
;	.line	58; main.c	case 0: PORTB |= 0x20; break;
	BSF	_PORTB, 5	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=13, label offset 48
	GOTO	_00161_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		| 0x7c	(|)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTB, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ;	1009 has symbol
; ; ***	resolveIfx 387 null ifx creating new label key =24
; ; ***	resolveIfx lbl->key=24, (lab offset=48)
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_LIT

; ; 	line = 6330 result AOP_DIR=_PORTB, left AOP_DIR=_PORTB, right AOP_LIT=0x10, size = 1
_00150_DS_:
;	.line	59; main.c	case 1: PORTB |= 0x10; break;
	BSF	_PORTB, 4	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=13, label offset 48
	GOTO	_00161_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		| 0x7c	(|)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTB, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ;	1009 has symbol
; ; ***	resolveIfx 387 null ifx creating new label key =25
; ; ***	resolveIfx lbl->key=25, (lab offset=48)
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_LIT

; ; 	line = 6330 result AOP_DIR=_PORTB, left AOP_DIR=_PORTB, right AOP_LIT=0x08, size = 1
_00151_DS_:
;	.line	60; main.c	case 2: PORTB |= 0x08; break;
	BSF	_PORTB, 3	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=13, label offset 48
	GOTO	_00161_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		| 0x7c	(|)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTB, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ;	1009 has symbol
; ; ***	resolveIfx 387 null ifx creating new label key =26
; ; ***	resolveIfx lbl->key=26, (lab offset=48)
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_LIT

; ; 	line = 6330 result AOP_DIR=_PORTB, left AOP_DIR=_PORTB, right AOP_LIT=0x04, size = 1
_00152_DS_:
;	.line	61; main.c	case 3: PORTB |= 0x04; break;
	BSF	_PORTB, 2	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=13, label offset 48
	GOTO	_00161_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		| 0x7c	(|)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTB, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ;	1009 has symbol
; ; ***	resolveIfx 387 null ifx creating new label key =27
; ; ***	resolveIfx lbl->key=27, (lab offset=48)
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_LIT

; ; 	line = 6330 result AOP_DIR=_PORTB, left AOP_DIR=_PORTB, right AOP_LIT=0x02, size = 1
_00153_DS_:
;	.line	62; main.c	case 4: PORTB |= 0x02; break;
	BSF	_PORTB, 1	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=13, label offset 48
	GOTO	_00161_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		| 0x7c	(|)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTB, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ;	1009 has symbol
; ; ***	resolveIfx 387 null ifx creating new label key =28
; ; ***	resolveIfx lbl->key=28, (lab offset=48)
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_LIT

; ; 	line = 6330 result AOP_DIR=_PORTB, left AOP_DIR=_PORTB, right AOP_LIT=0x01, size = 1
_00154_DS_:
;	.line	63; main.c	case 5: PORTB |= 0x01; break;
	BSF	_PORTB, 0	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=13, label offset 48
	GOTO	_00161_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		| 0x7c	(|)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTC, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ;	1009 has symbol
; ; ***	resolveIfx 387 null ifx creating new label key =29
; ; ***	resolveIfx lbl->key=29, (lab offset=48)
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_LIT

; ; 	line = 6330 result AOP_DIR=_PORTC, left AOP_DIR=_PORTC, right AOP_LIT=0x02, size = 1
_00155_DS_:
;	.line	64; main.c	case 6: PORTC |= 0x02; break;
	BSF	_PORTC, 1	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=13, label offset 48
	GOTO	_00161_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		| 0x7c	(|)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTC, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ;	1009 has symbol
; ; ***	resolveIfx 387 null ifx creating new label key =30
; ; ***	resolveIfx lbl->key=30, (lab offset=48)
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_LIT

; ; 	line = 6330 result AOP_DIR=_PORTC, left AOP_DIR=_PORTC, right AOP_LIT=0x08, size = 1
_00156_DS_:
;	.line	65; main.c	case 7: PORTC |= 0x08; break;
	BSF	_PORTC, 3	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=13, label offset 48
	GOTO	_00161_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		| 0x7c	(|)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTC, size = 1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ;	1009 has symbol
; ; ***	resolveIfx 387 null ifx creating new label key =31
; ; ***	resolveIfx lbl->key=31, (lab offset=48)
; ;***	pic16_sameRegs aop1->type = AOP_DIR	aop2->type = AOP_LIT

; ; 	line = 6330 result AOP_DIR=_PORTC, left AOP_DIR=_PORTC, right AOP_LIT=0x10, size = 1
_00157_DS_:
;	.line	66; main.c	case 8: PORTC |= 0x10; break;
	BSF	_PORTC, 4	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		m 0x16d	(ENDFUNCTION)
; ; **	Restoring used registers from stack
_00161_DS_:
;	.line	67; main.c	}
	MOVFF	PREINC1, r0x01	;key=000
	MOVFF	PREINC1, r0x00	;key=000
	MOVFF	PREINC1, FSR2L	;key=000
	RETURN		;key=000


	New pBlock

CSEG    (CODE), dbName =C
; ; Starting pCode block
; ;ic 		v 0x176	(LABEL)
; ;ic 			 0x9	(FUNCTION)
; ; ***	genFunction  3248 curr label offset=22previous max_key=1 
; ;	-----------------------------------------
; ;	 function colorSet
; ;	-----------------------------------------
; _colorSet:
S_main__colorSet	code
_colorSet:
;	.line	41; main.c	void colorSet(char colorAddr) {
	MOVFF	FSR2L, POSTDEC1	;key=000
	MOVFF	FSR1L, FSR2L	;key=000
; ; **	Saving used registers in stack
	MOVFF	r0x00, POSTDEC1	;key=000
; ; 	need to adjust stack = 0
; ;ic 		w 0x177	(RECEIVE)
; ; ***	2 genReceive  11250 argreg = 1
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ; 	line = 2697 result -=-, left AOP_REG=r0x00, right -=-, size = 0
; ; ***	popaopidx  2349
	MOVLW	0x02	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x00	;key=000
; ;ic 		> 0x3e	(>)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp1, regType = 3
; ; +++	ifx true is non-null
; ; +++	ifx false is null
; ; ***	resolveIfx lbl->key=11, (lab offset=27)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4904: swapping arguments (AOP_TYPEs 1/2)
; ; =:=	/home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c:genCmp:4948: unsigned compare: left >= lit(0x9=9), size=1
;	.line	42; main.c	switch (colorAddr) {
	MOVLW	0x09	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	SUBWF	r0x00, W	;key=000
; ; ***	genSkipc  4802 rifx= 0000000004765880
	BTFSC	STATUS, 0	;key=000
; ; ***	pic16_popGetLabel  key=11, label offset 27
	GOTO	_00138_DS_	;key=000
; ;ic 		_ 0x15f	(IFX)
; ;ic 		n 0x16e	(JUMPTABLE)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=1
; ;XXX mov	a,r0x00  /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic16/gen.c,10548
; add	a,acc
; add	a,r0x00
; mov	dptr,#00117_DS_
; jmp	@a+dptr
; 00117_DS_:
; ; ***	pic16_popGetLabel  key=17, label offset 27
	CLRF	PCLATH	;key=000
	CLRF	PCLATU	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	RLCF	r0x00, W	;key=000
	RLCF	PCLATH, F	;key=000
	RLCF	WREG, W	;key=000
	RLCF	PCLATH, F	;key=000
	ANDLW	0xfc	;key=000
	ADDLW	LOW(_00144_DS_)	;key=000
	MOVWF	POSTDEC1	;key=000
	MOVLW	HIGH(_00144_DS_)	;key=000
	ADDWFC	PCLATH, F	;key=000
	MOVLW	UPPER(_00144_DS_)	;key=000
	ADDWFC	PCLATU, F	;key=000
	MOVF	PREINC1, W	;key=000
	MOVWF	PCL	;key=000
; ; ***	pic16_popGetLabel  key=1, label offset 27
_00144_DS_:
	GOTO	_00128_DS_	;key=000
; ; ***	pic16_popGetLabel  key=2, label offset 27
	GOTO	_00129_DS_	;key=000
; ; ***	pic16_popGetLabel  key=3, label offset 27
	GOTO	_00130_DS_	;key=000
; ; ***	pic16_popGetLabel  key=4, label offset 27
	GOTO	_00131_DS_	;key=000
; ; ***	pic16_popGetLabel  key=5, label offset 27
	GOTO	_00132_DS_	;key=000
; ; ***	pic16_popGetLabel  key=6, label offset 27
	GOTO	_00133_DS_	;key=000
; ; ***	pic16_popGetLabel  key=7, label offset 27
	GOTO	_00134_DS_	;key=000
; ; ***	pic16_popGetLabel  key=8, label offset 27
	GOTO	_00135_DS_	;key=000
; ; ***	pic16_popGetLabel  key=9, label offset 27
	GOTO	_00136_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTC, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_PORTC, left -=-, right AOP_LIT=0x00, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
; ;	1827	AOP_DIR (name = _PORTC)
; ;	1686 pic16_popRegFromString _PORTC 1/0
_00128_DS_:
;	.line	43; main.c	case 0: PORTC = 0x00; break;  //layer 0 red
	CLRF	_PORTC	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=11, label offset 27
	GOTO	_00138_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTA, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_PORTA, left -=-, right AOP_LIT=0xdf, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
_00129_DS_:
;	.line	44; main.c	case 1: PORTA = 0xDF; break;  //layer 1 red
	MOVLW	0xdf	;key=000
; ;	1827	AOP_DIR (name = _PORTA)
; ;	1686 pic16_popRegFromString _PORTA 1/0
	MOVWF	_PORTA	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=11, label offset 27
	GOTO	_00138_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTA, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_PORTA, left -=-, right AOP_LIT=0xfb, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
_00130_DS_:
;	.line	45; main.c	case 2: PORTA = 0xFB; break;  //layer 2 red
	MOVLW	0xfb	;key=000
; ;	1827	AOP_DIR (name = _PORTA)
; ;	1686 pic16_popRegFromString _PORTA 1/0
	MOVWF	_PORTA	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=11, label offset 27
	GOTO	_00138_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTA, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_PORTA, left -=-, right AOP_LIT=0xbf, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
_00131_DS_:
;	.line	46; main.c	case 3: PORTA = 0xBF; break;  //layer 0 green
	MOVLW	0xbf	;key=000
; ;	1827	AOP_DIR (name = _PORTA)
; ;	1686 pic16_popRegFromString _PORTA 1/0
	MOVWF	_PORTA	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=11, label offset 27
	GOTO	_00138_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTA, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_PORTA, left -=-, right AOP_LIT=0xef, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
_00132_DS_:
;	.line	47; main.c	case 4: PORTA = 0xEF; break;  //layer 1 green
	MOVLW	0xef	;key=000
; ;	1827	AOP_DIR (name = _PORTA)
; ;	1686 pic16_popRegFromString _PORTA 1/0
	MOVWF	_PORTA	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=11, label offset 27
	GOTO	_00138_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTA, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_PORTA, left -=-, right AOP_LIT=0xfd, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
_00133_DS_:
;	.line	48; main.c	case 5: PORTA = 0xFD; break;  //layer 2 green
	MOVLW	0xfd	;key=000
; ;	1827	AOP_DIR (name = _PORTA)
; ;	1686 pic16_popRegFromString _PORTA 1/0
	MOVWF	_PORTA	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=11, label offset 27
	GOTO	_00138_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTA, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_PORTA, left -=-, right AOP_LIT=0x7f, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
_00134_DS_:
;	.line	49; main.c	case 6: PORTA = 0x7F; break;  //layer 0 blue
	MOVLW	0x7f	;key=000
; ;	1827	AOP_DIR (name = _PORTA)
; ;	1686 pic16_popRegFromString _PORTA 1/0
	MOVWF	_PORTA	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=11, label offset 27
	GOTO	_00138_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTA, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_PORTA, left -=-, right AOP_LIT=0xf7, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
_00135_DS_:
;	.line	50; main.c	case 7: PORTA = 0xF7; break;  //layer 1 blue
	MOVLW	0xf7	;key=000
; ;	1827	AOP_DIR (name = _PORTA)
; ;	1686 pic16_popRegFromString _PORTA 1/0
	MOVWF	_PORTA	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=11, label offset 27
	GOTO	_00138_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTA, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_PORTA, left -=-, right AOP_LIT=0xfe, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
_00136_DS_:
;	.line	51; main.c	case 8: PORTA = 0xFE; break;  //layer 2 blue
	MOVLW	0xfe	;key=000
; ;	1827	AOP_DIR (name = _PORTA)
; ;	1686 pic16_popRegFromString _PORTA 1/0
	MOVWF	_PORTA	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		v 0x176	(LABEL)
; ;ic 		m 0x16d	(ENDFUNCTION)
; ; **	Restoring used registers from stack
_00138_DS_:
;	.line	52; main.c	}
	MOVFF	PREINC1, r0x00	;key=000
	MOVFF	PREINC1, FSR2L	;key=000
	RETURN		;key=000


	New pBlock

CSEG    (CODE), dbName =C
; ; Starting pCode block
; ;ic 		v 0x176	(LABEL)
; ;ic 			 0x9	(FUNCTION)
; ; ***	genFunction  3248 curr label offset=13previous max_key=5 
; ;	-----------------------------------------
; ;	 function allOff
; ;	-----------------------------------------
; _allOff:
S_main__allOff	code
_allOff:
;	.line	35; main.c	void allOff(void) {
	MOVFF	FSR2L, POSTDEC1	;key=000
	MOVFF	FSR1L, FSR2L	;key=000
; ; 	need to adjust stack = 0
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTA, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_PORTA, left -=-, right AOP_LIT=0xff, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
;	.line	36; main.c	PORTA=0xFF;
	MOVLW	0xff	;key=000
; ;	1827	AOP_DIR (name = _PORTA)
; ;	1686 pic16_popRegFromString _PORTA 1/0
	MOVWF	_PORTA	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTB, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_PORTB, left -=-, right AOP_LIT=0x00, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
; ;	1827	AOP_DIR (name = _PORTB)
; ;	1686 pic16_popRegFromString _PORTB 1/0
;	.line	37; main.c	PORTB=0x00;
	CLRF	_PORTB	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		= 0x3d	(=)
; ;	pic16_aopOp 981
; ;	1017 - true symop
; ;	653 sym->rname (AOP_DIR) = _PORTC, size = 1
; ;	pic16_aopOp 981
; ; 	line = 10255 result AOP_DIR=_PORTC, left -=-, right AOP_LIT=0x01, size = 1
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_DIR

; ; ***	genAssign  10468 size 0
;	.line	38; main.c	PORTC=0x01;
	MOVLW	0x01	;key=000
; ;	1827	AOP_DIR (name = _PORTC)
; ;	1686 pic16_popRegFromString _PORTC 1/0
	MOVWF	_PORTC	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ;ic 		v 0x176	(LABEL)
; ;ic 		m 0x16d	(ENDFUNCTION)
	MOVFF	PREINC1, FSR2L	;key=000
	RETURN		;key=000


	New pBlock

CSEG    (CODE), dbName =C
; ; Starting pCode block
; ;ic 		v 0x176	(LABEL)
; ;ic 			 0x9	(FUNCTION)
; ; ***	genFunction  3248 curr label offset=4previous max_key=5 
; ;	-----------------------------------------
; ;	 function delay_ms
; ;	-----------------------------------------
; _delay_ms:
S_main__delay_ms	code
_delay_ms:
;	.line	28; main.c	void delay_ms(uint16_t iterations) {
	MOVFF	FSR2L, POSTDEC1	;key=000
	MOVFF	FSR1L, FSR2L	;key=000
; ; **	Saving used registers in stack
	MOVFF	r0x00, POSTDEC1	;key=000
	MOVFF	r0x01, POSTDEC1	;key=000
; ; 	need to adjust stack = 0
; ;ic 		w 0x177	(RECEIVE)
; ; ***	2 genReceive  11250 argreg = 1
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=2
; ; 	line = 2697 result -=-, left AOP_REG=r0x00, right -=-, size = 0
; ; ***	popaopidx  2349
	MOVLW	0x02	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x00	;key=000
; ; ***	popaopidx  2349
	MOVLW	0x03	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x01	;key=000
; ;ic 		x 0x178	(SEND)
; ;ic 		x 0x178	(SEND)
; ;ic 		r 0x172	(CALL)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp0, regType = 2
; ;	1151 register type nRegs=2
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
;	.line	30; main.c	for (i = iterations*100; i > 0; i--) {
	MOVF	r0x01, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_REG
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVF	r0x00, W	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ;	pic16_aopOp 981
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=1
; ;	1873	AOP_LIT
	MOVLW	0x00	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
; ; 	2995 left AOP_LIT
; ; 	push -2
; ; ***	pic16_mov2w  2126  offset=0
; ;	1873	AOP_LIT
	MOVLW	0x64	;key=000
; ; ***	pushw  2300
	MOVWF	POSTDEC1	;key=000
	CALL	__mulint	;key=000
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp5, regType = 2
; ;	1151 register type nRegs=2
; ; 	line = 2697 result -=-, left AOP_REG=r0x00, right -=-, size = 0
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVWF	r0x00	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PRODL, r0x01	;key=000
; ; ***	pic16_getDataSize  2366
; ; ***	pic16_addSign  1533
; ; 	3046 left AOP_REG
	MOVLW	0x04	;key=000
	ADDWF	FSR1L, F	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		_ 0x15f	(IFX)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp5, regType = 2
; ;	1151 register type nRegs=2
; ; ***	pic16_toBoolean  2484
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00116_DS_:
	MOVF	r0x00, W	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	IORWF	r0x01, W	;key=000
	BTFSC	STATUS, 2	;key=000
; ; ***	pic16_popGetLabel  key=5, label offset 13
	GOTO	_00118_DS_	;key=000
;  goto	_00118_DS_
; ;ic 		^ 0x15e	(INLINEASM)
; ; ***	pic16_genInline  7008
	nop	
; ;ic 		- 0x2d	(-)
; ; ***	genDjnz  11174
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp5, regType = 2
; ;	1151 register type nRegs=2
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ;	1009 has symbol
; ; 	result AOP_REG, left AOP_REG, right AOP_LIT
; ; ***	pic16_getDataSize  2366
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_REG

; ; ***	pic16_getDataSize  2366
; ; hi = ff	genAddLit  564
;	.line	30; main.c	for (i = iterations*100; i > 0; i--) {
	MOVLW	0xff	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ADDWF	r0x00, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ADDWFC	r0x01, F	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=3, label offset 13
	GOTO	_00116_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		m 0x16d	(ENDFUNCTION)
; ; **	Restoring used registers from stack
_00118_DS_:
	MOVFF	PREINC1, r0x01	;key=000
	MOVFF	PREINC1, r0x00	;key=000
	MOVFF	PREINC1, FSR2L	;key=000
	RETURN		;key=000


	New pBlock

CSEG    (CODE), dbName =C
; ; Starting pCode block
; ;ic 		v 0x176	(LABEL)
; ;ic 			 0x9	(FUNCTION)
; ; ***	genFunction  3248 curr label offset=0previous max_key=0 
; ;	-----------------------------------------
; ;	 function delay_us
; ;	-----------------------------------------
; _delay_us:
S_main__delay_us	code
_delay_us:
;	.line	21; main.c	void delay_us(uint16_t iterations) {
	MOVFF	FSR2L, POSTDEC1	;key=000
	MOVFF	FSR1L, FSR2L	;key=000
; ; **	Saving used registers in stack
	MOVFF	r0x00, POSTDEC1	;key=000
	MOVFF	r0x01, POSTDEC1	;key=000
; ; 	need to adjust stack = 0
; ;ic 		w 0x177	(RECEIVE)
; ; ***	2 genReceive  11250 argreg = 0
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp4, regType = 2
; ;	1151 register type nRegs=2
; ; 	line = 2697 result -=-, left AOP_REG=r0x00, right -=-, size = 0
; ; ***	popaopidx  2349
	MOVLW	0x02	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x00	;key=000
; ; ***	popaopidx  2349
	MOVLW	0x03	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	MOVFF	PLUSW2, r0x01	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		_ 0x15f	(IFX)
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp4, regType = 2
; ;	1151 register type nRegs=2
; ; ***	pic16_toBoolean  2484
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
_00107_DS_:
;	.line	23; main.c	for (i = iterations; i > 0; i--) {
	MOVF	r0x00, W	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	IORWF	r0x01, W	;key=000
	BTFSC	STATUS, 2	;key=000
; ; ***	pic16_popGetLabel  key=5, label offset 4
	GOTO	_00109_DS_	;key=000
;  goto	_00109_DS_
; ;ic 		^ 0x15e	(INLINEASM)
; ; ***	pic16_genInline  7008
	nop	
; ;ic 		- 0x2d	(-)
; ; ***	genDjnz  11174
; ;	pic16_aopOp 981
; ; ***	1032: symbol name = iTemp4, regType = 2
; ;	1151 register type nRegs=2
; ;	pic16_aopOp 981
; ;	pic16_aopOp 981
; ;	1009 has symbol
; ; 	result AOP_REG, left AOP_REG, right AOP_LIT
; ; ***	pic16_getDataSize  2366
; ;***	pic16_sameRegs aop1->type = AOP_LIT	aop2->type = AOP_REG

; ; ***	pic16_getDataSize  2366
; ; hi = ff	genAddLit  564
;	.line	23; main.c	for (i = iterations; i > 0; i--) {
	MOVLW	0xff	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ADDWF	r0x00, F	;key=000
; ;	1844	AOP_REG
; ;*+*	1856	AOP_REG type = PO_GPR_TEMP
	ADDWFC	r0x01, F	;key=000
; ;ic 		U 0x155	(GOTO)
; ; ***	pic16_popGetLabel  key=3, label offset 4
	GOTO	_00107_DS_	;key=000
; ;ic 		v 0x176	(LABEL)
; ;ic 		m 0x16d	(ENDFUNCTION)
; ; **	Restoring used registers from stack
_00109_DS_:
	MOVFF	PREINC1, r0x01	;key=000
	MOVFF	PREINC1, r0x00	;key=000
	MOVFF	PREINC1, FSR2L	;key=000
	RETURN		;key=000


	New pBlock

internal pblock, dbName =P
; ; Starting pCode block for Ival
	code
_delaySpeed:
	DB	0x0a, 0x00
