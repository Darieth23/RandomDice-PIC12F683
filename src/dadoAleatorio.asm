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
r0x1004	res	1
r0x1005	res	1
r0x1006	res	1
r0x1001	res	1
r0x1000	res	1
r0x1002	res	1
r0x1003	res	1
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
;4 compiler assigned registers:
;   r0x1004
;   r0x1005
;   STK00
;   r0x1006
;; Starting pCode block
S_dadoAleatorio__main	code
_main:
; 2 exit points
;	.line	10; "dadoAleatorio.c"	TRISIO = 0x08;
	MOVLW	0x08
	BANKSEL	_TRISIO
	MOVWF	_TRISIO
;	.line	11; "dadoAleatorio.c"	GPIO = 0x00; //Poner pines en bajo
	BANKSEL	_GPIO
	CLRF	_GPIO
;	.line	13; "dadoAleatorio.c"	unsigned int contador = 1;
	MOVLW	0x01
	BANKSEL	r0x1004
	MOVWF	r0x1004
	CLRF	r0x1005
_00119_DS_:
;	.line	16; "dadoAleatorio.c"	if(GP3 == 0){
	BANKSEL	_GPIObits
	BTFSC	_GPIObits,3
	GOTO	_00114_DS_
;	.line	17; "dadoAleatorio.c"	GPIO = 0x37;
	MOVLW	0x37
	MOVWF	_GPIO
;	.line	18; "dadoAleatorio.c"	delay(time);
	MOVLW	0x64
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
;	.line	19; "dadoAleatorio.c"	contador += 1;
	BANKSEL	r0x1004
	INCF	r0x1004,F
	BTFSC	STATUS,2
	INCF	r0x1005,F
	GOTO	_00115_DS_
;;unsigned compare: left < lit(0x1=1), size=2
_00114_DS_:
;	.line	22; "dadoAleatorio.c"	switch (contador){
	MOVLW	0x00
	BANKSEL	r0x1005
	SUBWF	r0x1005,W
	BTFSS	STATUS,2
	GOTO	_00143_DS_
	MOVLW	0x01
	SUBWF	r0x1004,W
_00143_DS_:
	BTFSS	STATUS,0
	GOTO	_00115_DS_
;;genSkipc:3307: created from rifx:0x7ffe987ac8c0
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x7=7), size=2
	MOVLW	0x00
	BANKSEL	r0x1005
	SUBWF	r0x1005,W
	BTFSS	STATUS,2
	GOTO	_00144_DS_
	MOVLW	0x07
	SUBWF	r0x1004,W
_00144_DS_:
	BTFSC	STATUS,0
	GOTO	_00115_DS_
;;genSkipc:3307: created from rifx:0x7ffe987ac8c0
	BANKSEL	r0x1004
	DECF	r0x1004,W
	MOVWF	r0x1006
	MOVLW	HIGH(_00145_DS_)
	BANKSEL	PCLATH
	MOVWF	PCLATH
	MOVLW	_00145_DS_
	BANKSEL	r0x1006
	ADDWF	r0x1006,W
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
;	.line	24; "dadoAleatorio.c"	GPIO = 0x24;
	MOVLW	0x24
	BANKSEL	_GPIO
	MOVWF	_GPIO
;	.line	25; "dadoAleatorio.c"	delay(time);
	MOVLW	0x64
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
;	.line	26; "dadoAleatorio.c"	break;
	GOTO	_00115_DS_
_00106_DS_:
;	.line	28; "dadoAleatorio.c"	GPIO = 0x26;
	MOVLW	0x26
	BANKSEL	_GPIO
	MOVWF	_GPIO
;	.line	29; "dadoAleatorio.c"	delay(time);
	MOVLW	0x64
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
;	.line	30; "dadoAleatorio.c"	break;
	GOTO	_00115_DS_
_00107_DS_:
;	.line	32; "dadoAleatorio.c"	GPIO = 0x27;
	MOVLW	0x27
	BANKSEL	_GPIO
	MOVWF	_GPIO
;	.line	33; "dadoAleatorio.c"	delay(time);
	MOVLW	0x64
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
;	.line	34; "dadoAleatorio.c"	break;
	GOTO	_00115_DS_
_00108_DS_:
;	.line	36; "dadoAleatorio.c"	GPIO = 0x06;//Valor 1 del dado
	MOVLW	0x06
	BANKSEL	_GPIO
	MOVWF	_GPIO
;	.line	37; "dadoAleatorio.c"	delay(time);
	MOVLW	0x64
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
;	.line	38; "dadoAleatorio.c"	break;
	GOTO	_00115_DS_
_00109_DS_:
;	.line	40; "dadoAleatorio.c"	GPIO = 0x27;//Valor 2 del dado 
	MOVLW	0x27
	BANKSEL	_GPIO
	MOVWF	_GPIO
;	.line	41; "dadoAleatorio.c"	delay(time);
	MOVLW	0x64
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
;	.line	42; "dadoAleatorio.c"	GPIO = 0x16;
	MOVLW	0x16
	BANKSEL	_GPIO
	MOVWF	_GPIO
;	.line	43; "dadoAleatorio.c"	delay(time);
	MOVLW	0x64
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
;	.line	44; "dadoAleatorio.c"	break;
	GOTO	_00115_DS_
_00110_DS_:
;	.line	46; "dadoAleatorio.c"	GPIO = 0x07;
	MOVLW	0x07
	BANKSEL	_GPIO
	MOVWF	_GPIO
;	.line	47; "dadoAleatorio.c"	delay(time);
	MOVLW	0x64
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	_delay
	CALL	_delay
	PAGESEL	$
_00115_DS_:
;	.line	53; "dadoAleatorio.c"	if(contador == 7){
	BANKSEL	r0x1004
	MOVF	r0x1004,W
	XORLW	0x07
	BTFSS	STATUS,2
	GOTO	_00119_DS_
	MOVF	r0x1005,W
	XORLW	0x00
	BTFSS	STATUS,2
	GOTO	_00119_DS_
;	.line	54; "dadoAleatorio.c"	contador = 1;
	MOVLW	0x01
	MOVWF	r0x1004
	CLRF	r0x1005
	GOTO	_00119_DS_
;	.line	57; "dadoAleatorio.c"	}
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;5 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   r0x1002
;   r0x1003
;; Starting pCode block
S_dadoAleatorio__delay	code
_delay:
; 2 exit points
;	.line	58; "dadoAleatorio.c"	void delay(unsigned int tiempo){
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
;	.line	61; "dadoAleatorio.c"	for(i=0;i<tiempo;i++);
	CLRF	r0x1002
	CLRF	r0x1003
_00152_DS_:
	BANKSEL	r0x1000
	MOVF	r0x1000,W
	SUBWF	r0x1003,W
	BTFSS	STATUS,2
	GOTO	_00165_DS_
	MOVF	r0x1001,W
	SUBWF	r0x1002,W
_00165_DS_:
	BTFSC	STATUS,0
	GOTO	_00154_DS_
;;genSkipc:3307: created from rifx:0x7ffe987ac8c0
	BANKSEL	r0x1002
	INCF	r0x1002,F
	BTFSC	STATUS,2
	INCF	r0x1003,F
	GOTO	_00152_DS_
_00154_DS_:
;	.line	63; "dadoAleatorio.c"	}
	RETURN	
; exit point of _delay


;	code size estimation:
;	  128+   38 =   166 instructions (  408 byte)

	end
