;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"dadoAleatorio.c"
	list	p=12f683
	radix dec
	include "p12f683.inc"
;--------------------------------------------------------
; config word(s)
;--------------------------------------------------------
	__config 0x3fd7
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_TRISIO
	extern	_GPIO
	extern	_GPIObits
	extern	__sdcc_gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main
	global	_delay

	global PSAVE
	global SSAVE
	global WSAVE
	global STK12
	global STK11
	global STK10
	global STK09
	global STK08
	global STK07
	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0070
PSAVE	res 1
SSAVE	res 1
WSAVE	res 1
STK12	res 1
STK11	res 1
STK10	res 1
STK09	res 1
STK08	res 1
STK07	res 1
STK06	res 1
STK05	res 1
STK04	res 1
STK03	res 1
STK02	res 1
STK01	res 1
STK00	res 1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_dadoAleatorio_0	udata
r0x1008	res	1
r0x1009	res	1
r0x100A	res	1
r0x1001	res	1
r0x1000	res	1
r0x1002	res	1
r0x1003	res	1
r0x1004	res	1
r0x1005	res	1
r0x1006	res	1
r0x1007	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; initialized absolute data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	nop
	pagesel __sdcc_gsinit_startup
	goto	__sdcc_gsinit_startup
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_dadoAleatorio	code
;***
;  pBlock Stats: dbName = M
;***
;has an exit
;functions called:
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;   _delay
;4 compiler assigned registers:
;   r0x1008
;   r0x1009
;   r0x100A
;   STK00
;; Starting pCode block
S_dadoAleatorio__main	code
_main:
; 2 exit points
;	.line	35; "dadoAleatorio.c"	TRISIO = 0x08;
	MOVLW	0x08
	BANKSEL	_TRISIO
	MOVWF	_TRISIO
;	.line	36; "dadoAleatorio.c"	GPIO = 0x00; //Poner pines en bajo
	BANKSEL	_GPIO
	CLRF	_GPIO
;	.line	38; "dadoAleatorio.c"	int contador = 0;
	BANKSEL	r0x1008
	CLRF	r0x1008
	CLRF	r0x1009
_00119_DS_:
;	.line	42; "dadoAleatorio.c"	if(GP3 == 0){
	BANKSEL	_GPIObits
	BTFSC	_GPIObits,3
	GOTO	_00114_DS_
;	.line	43; "dadoAleatorio.c"	GPIO = 0x1F;
	MOVLW	0x1f
	MOVWF	_GPIO
;	.line	46; "dadoAleatorio.c"	contador += 1;
	BANKSEL	r0x1008
	INCF	r0x1008,F
	BTFSC	STATUS,2
	INCF	r0x1009,F
	GOTO	_00115_DS_
;;signed compare: left < lit(0x1=1), size=2, mask=ffff
_00114_DS_:
;	.line	49; "dadoAleatorio.c"	switch (contador)
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	ADDLW	0x80
	ADDLW	0x80
	BTFSS	STATUS,2
	GOTO	_00143_DS_
	MOVLW	0x01
	SUBWF	r0x1008,W
_00143_DS_:
	BTFSS	STATUS,0
	GOTO	_00115_DS_
;;genSkipc:3307: created from rifx:0x7ffe4c0f1500
;;swapping arguments (AOP_TYPEs 1/2)
;;signed compare: left >= lit(0x7=7), size=2, mask=ffff
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	ADDLW	0x80
	ADDLW	0x80
	BTFSS	STATUS,2
	GOTO	_00144_DS_
	MOVLW	0x07
	SUBWF	r0x1008,W
_00144_DS_:
	BTFSC	STATUS,0
	GOTO	_00115_DS_
;;genSkipc:3307: created from rifx:0x7ffe4c0f1500
	BANKSEL	r0x1008
	DECF	r0x1008,W
	MOVWF	r0x100A
	MOVLW	HIGH(_00145_DS_)
	BANKSEL	PCLATH
	MOVWF	PCLATH
	MOVLW	_00145_DS_
	BANKSEL	r0x100A
	ADDWF	r0x100A,W
	BTFSS	STATUS,0
	GOTO	_00001_DS_
	BANKSEL	PCLATH
	INCF	PCLATH,F
_00001_DS_:
	MOVWF	PCL
_00145_DS_:
	GOTO	_00105_DS_
	GOTO	_00106_DS_
	GOTO	_00107_DS_
	GOTO	_00108_DS_
	GOTO	_00109_DS_
	GOTO	_00110_DS_
_00105_DS_:
;	.line	54; "dadoAleatorio.c"	GPIO = 0x00;
	BANKSEL	_GPIO
	CLRF	_GPIO
;	.line	55; "dadoAleatorio.c"	delay(time);
	MOVLW	0x64
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
;	.line	57; "dadoAleatorio.c"	GPIO = 0x1F;
	MOVLW	0x1f
	BANKSEL	_GPIO
	MOVWF	_GPIO
;	.line	59; "dadoAleatorio.c"	delay(time);
	MOVLW	0x64
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
;	.line	60; "dadoAleatorio.c"	break;
	GOTO	_00115_DS_
_00106_DS_:
;	.line	64; "dadoAleatorio.c"	GPIO = 0x00;
	BANKSEL	_GPIO
	CLRF	_GPIO
;	.line	65; "dadoAleatorio.c"	delay(time);
	MOVLW	0x64
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
;	.line	67; "dadoAleatorio.c"	GPIO = 0x1F;
	MOVLW	0x1f
	BANKSEL	_GPIO
	MOVWF	_GPIO
;	.line	69; "dadoAleatorio.c"	delay(time);
	MOVLW	0x64
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
;	.line	70; "dadoAleatorio.c"	break;
	GOTO	_00115_DS_
_00107_DS_:
;	.line	74; "dadoAleatorio.c"	GPIO = 0x00;
	BANKSEL	_GPIO
	CLRF	_GPIO
;	.line	75; "dadoAleatorio.c"	delay(time);
	MOVLW	0x64
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
;	.line	77; "dadoAleatorio.c"	GPIO = 0x1F;
	MOVLW	0x1f
	BANKSEL	_GPIO
	MOVWF	_GPIO
;	.line	79; "dadoAleatorio.c"	delay(time);;
	MOVLW	0x64
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
;	.line	80; "dadoAleatorio.c"	break;
	GOTO	_00115_DS_
_00108_DS_:
;	.line	84; "dadoAleatorio.c"	GPIO = 0x00;
	BANKSEL	_GPIO
	CLRF	_GPIO
;	.line	85; "dadoAleatorio.c"	delay(time);
	MOVLW	0x64
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
;	.line	87; "dadoAleatorio.c"	GPIO = 0x1F;
	MOVLW	0x1f
	BANKSEL	_GPIO
	MOVWF	_GPIO
;	.line	89; "dadoAleatorio.c"	delay(time);
	MOVLW	0x64
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
;	.line	90; "dadoAleatorio.c"	break;
	GOTO	_00115_DS_
_00109_DS_:
;	.line	94; "dadoAleatorio.c"	GPIO = 0x00;
	BANKSEL	_GPIO
	CLRF	_GPIO
;	.line	95; "dadoAleatorio.c"	delay(time);
	MOVLW	0x64
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
;	.line	97; "dadoAleatorio.c"	GPIO = 0x1F;
	MOVLW	0x1f
	BANKSEL	_GPIO
	MOVWF	_GPIO
;	.line	99; "dadoAleatorio.c"	delay(time);
	MOVLW	0x64
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
;	.line	100; "dadoAleatorio.c"	break;
	GOTO	_00115_DS_
_00110_DS_:
;	.line	104; "dadoAleatorio.c"	GPIO = 0x00;
	BANKSEL	_GPIO
	CLRF	_GPIO
;	.line	105; "dadoAleatorio.c"	delay(time);
	MOVLW	0x64
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
;	.line	107; "dadoAleatorio.c"	GPIO = 0x1F;
	MOVLW	0x1f
	BANKSEL	_GPIO
	MOVWF	_GPIO
;	.line	109; "dadoAleatorio.c"	delay(time);
	MOVLW	0x64
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
_00115_DS_:
;	.line	117; "dadoAleatorio.c"	if(contador == 6){
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	XORLW	0x06
	BTFSS	STATUS,2
	GOTO	_00119_DS_
	MOVF	r0x1009,W
	XORLW	0x00
	BTFSS	STATUS,2
	GOTO	_00119_DS_
;	.line	118; "dadoAleatorio.c"	contador = 0;
	CLRF	r0x1008
	CLRF	r0x1009
	GOTO	_00119_DS_
;	.line	122; "dadoAleatorio.c"	}
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;9 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   r0x1002
;   r0x1003
;   r0x1004
;   r0x1005
;   r0x1006
;   r0x1007
;; Starting pCode block
S_dadoAleatorio__delay	code
_delay:
; 2 exit points
;	.line	124; "dadoAleatorio.c"	void delay(unsigned int tiempo)
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
;	.line	129; "dadoAleatorio.c"	for(i=0;i<tiempo;i++)
	CLRF	r0x1002
	CLRF	r0x1003
_00156_DS_:
	BANKSEL	r0x1000
	MOVF	r0x1000,W
	SUBWF	r0x1003,W
	BTFSS	STATUS,2
	GOTO	_00177_DS_
	MOVF	r0x1001,W
	SUBWF	r0x1002,W
_00177_DS_:
	BTFSC	STATUS,0
	GOTO	_00158_DS_
;;genSkipc:3307: created from rifx:0x7ffe4c0f1500
;	.line	130; "dadoAleatorio.c"	for(j=0;j<1275;j++);
	MOVLW	0xfb
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVLW	0x04
	MOVWF	r0x1005
_00154_DS_:
	MOVLW	0xff
	BANKSEL	r0x1004
	ADDWF	r0x1004,W
	MOVWF	r0x1006
	MOVLW	0xff
	MOVWF	r0x1007
	MOVF	r0x1005,W
	BTFSC	STATUS,0
	INCFSZ	r0x1005,W
	ADDWF	r0x1007,F
	MOVF	r0x1006,W
	MOVWF	r0x1004
	MOVF	r0x1007,W
	MOVWF	r0x1005
	MOVF	r0x1007,W
	IORWF	r0x1006,W
	BTFSS	STATUS,2
	GOTO	_00154_DS_
;	.line	129; "dadoAleatorio.c"	for(i=0;i<tiempo;i++)
	INCF	r0x1002,F
	BTFSC	STATUS,2
	INCF	r0x1003,F
	GOTO	_00156_DS_
_00158_DS_:
;	.line	131; "dadoAleatorio.c"	}
	RETURN	
; exit point of _delay


;	code size estimation:
;	  169+   52 =   221 instructions (  546 byte)

	end
