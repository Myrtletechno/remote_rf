opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 6738"

opt pagewidth 120

	opt pm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 10 "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\Main.c"
	psect config,class=CONFIG,delta=2 ;#
# 10 "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\Main.c"
	dw 0X2F2A ;#
	FNCALL	_main,_initialise_SPI
	FNCALL	_main,_Oled_Init
	FNCALL	_main,_Oled_Delay
	FNCALL	_main,_Oled_SetFont
	FNCALL	_main,_Oled_ConstText
	FNCALL	_main,_Oled_FillScreen
	FNCALL	_main,_Oled_Line
	FNCALL	_main,_InitKeypad
	FNCALL	_main,_InitLCD
	FNCALL	_main,_WriteStringToLCD
	FNCALL	_main,_uart_init
	FNCALL	_main,_ClearLCDScreen
	FNCALL	_main,_dht11_measure
	FNCALL	_main,_WriteCommandToLCD
	FNCALL	_main,___lbdiv
	FNCALL	_main,_WriteDataToLCD
	FNCALL	_main,___lbmod
	FNCALL	_main,_GetKey
	FNCALL	_main,_uart_string
	FNCALL	_main,_uart_tx
	FNCALL	_Oled_Line,___wmul
	FNCALL	_Oled_Line,_Oled_Pixel
	FNCALL	_Oled_ConstText,_Oled_WriteChar
	FNCALL	_Oled_Init,_Oled_Delay
	FNCALL	_Oled_Init,_Oled_Reset
	FNCALL	_Oled_Init,_Oled_Command
	FNCALL	_Oled_Init,_Oled_FillScreen
	FNCALL	_Oled_Pixel,___awdiv
	FNCALL	_Oled_Pixel,_Oled_SetPointer
	FNCALL	_Oled_Pixel,_Oled_WriteRam
	FNCALL	_Oled_WriteChar,___wmul
	FNCALL	_Oled_WriteChar,_Oled_SetPointer
	FNCALL	_Oled_WriteChar,_Oled_WriteRam
	FNCALL	_Oled_FillScreen,_Oled_SetPointer
	FNCALL	_Oled_FillScreen,_Oled_WriteRam
	FNCALL	_Oled_FillScreen,_blinktest
	FNCALL	_dht11_measure,_ClearLCDScreen
	FNCALL	_dht11_measure,_WriteStringToLCD
	FNCALL	_Oled_SetPointer,_Oled_Command
	FNCALL	_Oled_Reset,_Oled_Delay
	FNCALL	_InitLCD,_ToggleEpinOfLCD
	FNCALL	_InitLCD,_WriteCommandToLCD
	FNCALL	_GetKey,_READ_SWITCHES
	FNCALL	_WriteStringToLCD,_WriteDataToLCD
	FNCALL	_ClearLCDScreen,_WriteCommandToLCD
	FNCALL	_Oled_WriteRam,_WriteSPI
	FNCALL	_Oled_Command,_WriteSPI
	FNCALL	_uart_string,_uart_tx
	FNCALL	_WriteCommandToLCD,_ToggleEpinOfLCD
	FNCALL	_WriteDataToLCD,_ToggleEpinOfLCD
	FNROOT	_main
	global	_Terminal12x16
psect	stringtext,class=STRCODE,delta=2,reloc=256
global __pstringtext
__pstringtext:
;	global	stringtab,__stringbase
stringtab:
;	String table - string pointers are 2 bytes each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
__stringbase:
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\font.h"
	line	14
_Terminal12x16:
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0F8h
	retlw	0
	retlw	0FEh
	retlw	067h
	retlw	0FEh
	retlw	067h
	retlw	0F8h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	03Ch
	retlw	0
	retlw	03Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	03Ch
	retlw	0
	retlw	03Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	04h
	retlw	020h
	retlw	03Ch
	retlw	020h
	retlw	03Fh
	retlw	0E0h
	retlw	07h
	retlw	0FCh
	retlw	04h
	retlw	03Ch
	retlw	03Ch
	retlw	020h
	retlw	03Fh
	retlw	0E0h
	retlw	07h
	retlw	0FCh
	retlw	04h
	retlw	03Ch
	retlw	0
	retlw	020h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0F0h
	retlw	08h
	retlw	0F8h
	retlw	019h
	retlw	098h
	retlw	019h
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	098h
	retlw	019h
	retlw	098h
	retlw	01Fh
	retlw	010h
	retlw	0Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	030h
	retlw	038h
	retlw	038h
	retlw	038h
	retlw	01Ch
	retlw	038h
	retlw	0Eh
	retlw	0
	retlw	07h
	retlw	080h
	retlw	03h
	retlw	0C0h
	retlw	01h
	retlw	0E0h
	retlw	038h
	retlw	070h
	retlw	038h
	retlw	038h
	retlw	038h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	0B8h
	retlw	03Fh
	retlw	0FCh
	retlw	031h
	retlw	0C6h
	retlw	021h
	retlw	0E2h
	retlw	037h
	retlw	03Eh
	retlw	01Eh
	retlw	01Ch
	retlw	01Ch
	retlw	0
	retlw	036h
	retlw	0
	retlw	022h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	04Eh
	retlw	0
	retlw	07Eh
	retlw	0
	retlw	03Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	07h
	retlw	0F8h
	retlw	01Fh
	retlw	0FCh
	retlw	03Fh
	retlw	0Eh
	retlw	070h
	retlw	02h
	retlw	040h
	retlw	02h
	retlw	040h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	02h
	retlw	040h
	retlw	02h
	retlw	040h
	retlw	0Eh
	retlw	070h
	retlw	0FCh
	retlw	03Fh
	retlw	0F8h
	retlw	01Fh
	retlw	0E0h
	retlw	07h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	098h
	retlw	0Ch
	retlw	0B8h
	retlw	0Eh
	retlw	0E0h
	retlw	03h
	retlw	0F8h
	retlw	0Fh
	retlw	0F8h
	retlw	0Fh
	retlw	0E0h
	retlw	03h
	retlw	0B8h
	retlw	0Eh
	retlw	098h
	retlw	0Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	01h
	retlw	080h
	retlw	01h
	retlw	080h
	retlw	01h
	retlw	0F0h
	retlw	0Fh
	retlw	0F0h
	retlw	0Fh
	retlw	080h
	retlw	01h
	retlw	080h
	retlw	01h
	retlw	080h
	retlw	01h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	05Ch
	retlw	0
	retlw	07Ch
	retlw	0
	retlw	03Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	01h
	retlw	080h
	retlw	01h
	retlw	080h
	retlw	01h
	retlw	080h
	retlw	01h
	retlw	080h
	retlw	01h
	retlw	080h
	retlw	01h
	retlw	080h
	retlw	01h
	retlw	080h
	retlw	01h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	038h
	retlw	0
	retlw	038h
	retlw	0
	retlw	038h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	018h
	retlw	0
	retlw	01Ch
	retlw	0
	retlw	0Eh
	retlw	0
	retlw	07h
	retlw	080h
	retlw	03h
	retlw	0C0h
	retlw	01h
	retlw	0E0h
	retlw	0
	retlw	070h
	retlw	0
	retlw	038h
	retlw	0
	retlw	01Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0F0h
	retlw	0Fh
	retlw	0FCh
	retlw	03Fh
	retlw	0Ch
	retlw	03Ch
	retlw	06h
	retlw	066h
	retlw	06h
	retlw	063h
	retlw	086h
	retlw	061h
	retlw	0C6h
	retlw	060h
	retlw	066h
	retlw	060h
	retlw	03Ch
	retlw	030h
	retlw	0FCh
	retlw	03Fh
	retlw	0F0h
	retlw	0Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	018h
	retlw	060h
	retlw	018h
	retlw	060h
	retlw	01Ch
	retlw	060h
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	038h
	retlw	060h
	retlw	03Ch
	retlw	070h
	retlw	0Eh
	retlw	078h
	retlw	06h
	retlw	07Ch
	retlw	06h
	retlw	06Eh
	retlw	06h
	retlw	067h
	retlw	086h
	retlw	063h
	retlw	0C6h
	retlw	061h
	retlw	0EEh
	retlw	060h
	retlw	07Ch
	retlw	060h
	retlw	038h
	retlw	060h
	retlw	0
	retlw	0
	retlw	018h
	retlw	018h
	retlw	01Ch
	retlw	038h
	retlw	0Eh
	retlw	070h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	0CEh
	retlw	073h
	retlw	0FCh
	retlw	03Eh
	retlw	078h
	retlw	01Ch
	retlw	0
	retlw	0
	retlw	080h
	retlw	07h
	retlw	0C0h
	retlw	07h
	retlw	0E0h
	retlw	06h
	retlw	070h
	retlw	06h
	retlw	038h
	retlw	06h
	retlw	01Ch
	retlw	06h
	retlw	0Eh
	retlw	06h
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	0
	retlw	06h
	retlw	0
	retlw	06h
	retlw	0
	retlw	0
	retlw	07Eh
	retlw	018h
	retlw	0FEh
	retlw	038h
	retlw	0C6h
	retlw	070h
	retlw	0C6h
	retlw	060h
	retlw	0C6h
	retlw	060h
	retlw	0C6h
	retlw	060h
	retlw	0C6h
	retlw	060h
	retlw	0C6h
	retlw	060h
	retlw	0C6h
	retlw	071h
	retlw	086h
	retlw	03Fh
	retlw	06h
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	080h
	retlw	01Fh
	retlw	0E0h
	retlw	03Fh
	retlw	0F0h
	retlw	073h
	retlw	0B8h
	retlw	061h
	retlw	09Ch
	retlw	061h
	retlw	08Eh
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	073h
	retlw	0
	retlw	03Fh
	retlw	0
	retlw	01Eh
	retlw	0
	retlw	0
	retlw	06h
	retlw	0
	retlw	06h
	retlw	0
	retlw	06h
	retlw	0
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	078h
	retlw	06h
	retlw	01Eh
	retlw	086h
	retlw	07h
	retlw	0E6h
	retlw	01h
	retlw	07Eh
	retlw	0
	retlw	01Eh
	retlw	0
	retlw	06h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01Eh
	retlw	078h
	retlw	03Fh
	retlw	0FCh
	retlw	073h
	retlw	0CEh
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	0CEh
	retlw	061h
	retlw	0FCh
	retlw	073h
	retlw	078h
	retlw	03Fh
	retlw	0
	retlw	01Eh
	retlw	0
	retlw	0
	retlw	078h
	retlw	0
	retlw	0FCh
	retlw	0
	retlw	0CEh
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	071h
	retlw	086h
	retlw	039h
	retlw	086h
	retlw	01Dh
	retlw	0CEh
	retlw	0Fh
	retlw	0FCh
	retlw	07h
	retlw	0F8h
	retlw	01h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	070h
	retlw	01Ch
	retlw	070h
	retlw	01Ch
	retlw	070h
	retlw	01Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	038h
	retlw	04Eh
	retlw	038h
	retlw	07Eh
	retlw	038h
	retlw	03Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	01h
	retlw	0C0h
	retlw	03h
	retlw	0E0h
	retlw	07h
	retlw	070h
	retlw	0Eh
	retlw	038h
	retlw	01Ch
	retlw	01Ch
	retlw	038h
	retlw	0Eh
	retlw	070h
	retlw	06h
	retlw	060h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	06h
	retlw	060h
	retlw	0Eh
	retlw	070h
	retlw	01Ch
	retlw	038h
	retlw	038h
	retlw	01Ch
	retlw	070h
	retlw	0Eh
	retlw	0E0h
	retlw	07h
	retlw	0C0h
	retlw	03h
	retlw	080h
	retlw	01h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	038h
	retlw	0
	retlw	03Ch
	retlw	0
	retlw	0Eh
	retlw	0
	retlw	06h
	retlw	0
	retlw	06h
	retlw	06Fh
	retlw	086h
	retlw	06Fh
	retlw	0C6h
	retlw	01h
	retlw	0EEh
	retlw	0
	retlw	07Ch
	retlw	0
	retlw	038h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0F0h
	retlw	01Fh
	retlw	0FCh
	retlw	03Fh
	retlw	0Eh
	retlw	030h
	retlw	0E6h
	retlw	067h
	retlw	0F6h
	retlw	06Fh
	retlw	036h
	retlw	06Ch
	retlw	0F6h
	retlw	06Fh
	retlw	0F6h
	retlw	06Fh
	retlw	0Eh
	retlw	06Ch
	retlw	0FCh
	retlw	07h
	retlw	0F0h
	retlw	03h
	retlw	0
	retlw	0
	retlw	0
	retlw	070h
	retlw	0
	retlw	07Eh
	retlw	0C0h
	retlw	0Fh
	retlw	0F8h
	retlw	0Dh
	retlw	03Eh
	retlw	0Ch
	retlw	03Eh
	retlw	0Ch
	retlw	0F8h
	retlw	0Dh
	retlw	0C0h
	retlw	0Fh
	retlw	0
	retlw	07Eh
	retlw	0
	retlw	070h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	0CEh
	retlw	061h
	retlw	0FCh
	retlw	073h
	retlw	078h
	retlw	03Fh
	retlw	0
	retlw	01Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	07h
	retlw	0F8h
	retlw	01Fh
	retlw	01Ch
	retlw	038h
	retlw	0Eh
	retlw	070h
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	0Eh
	retlw	070h
	retlw	01Ch
	retlw	038h
	retlw	018h
	retlw	018h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	0Eh
	retlw	070h
	retlw	01Ch
	retlw	038h
	retlw	0F8h
	retlw	01Fh
	retlw	0E0h
	retlw	07h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	086h
	retlw	01h
	retlw	086h
	retlw	01h
	retlw	086h
	retlw	01h
	retlw	086h
	retlw	01h
	retlw	086h
	retlw	01h
	retlw	086h
	retlw	01h
	retlw	06h
	retlw	0
	retlw	06h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	07h
	retlw	0F8h
	retlw	01Fh
	retlw	01Ch
	retlw	038h
	retlw	0Eh
	retlw	070h
	retlw	06h
	retlw	060h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	08Eh
	retlw	07Fh
	retlw	08Ch
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	080h
	retlw	01h
	retlw	080h
	retlw	01h
	retlw	080h
	retlw	01h
	retlw	080h
	retlw	01h
	retlw	080h
	retlw	01h
	retlw	080h
	retlw	01h
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01Ch
	retlw	0
	retlw	03Ch
	retlw	0
	retlw	070h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	070h
	retlw	0FEh
	retlw	03Fh
	retlw	0FEh
	retlw	0Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	080h
	retlw	01h
	retlw	0C0h
	retlw	03h
	retlw	0E0h
	retlw	07h
	retlw	070h
	retlw	0Eh
	retlw	038h
	retlw	01Ch
	retlw	01Ch
	retlw	038h
	retlw	0Eh
	retlw	070h
	retlw	06h
	retlw	060h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	03Ch
	retlw	0
	retlw	0F0h
	retlw	0
	retlw	0C0h
	retlw	03h
	retlw	0C0h
	retlw	03h
	retlw	0F0h
	retlw	0
	retlw	03Ch
	retlw	0
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	01Ch
	retlw	0
	retlw	070h
	retlw	0
	retlw	0E0h
	retlw	01h
	retlw	080h
	retlw	07h
	retlw	0
	retlw	0Eh
	retlw	0
	retlw	038h
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	07h
	retlw	0F8h
	retlw	01Fh
	retlw	01Ch
	retlw	038h
	retlw	0Eh
	retlw	070h
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	0Eh
	retlw	070h
	retlw	01Ch
	retlw	038h
	retlw	0F8h
	retlw	01Fh
	retlw	0E0h
	retlw	07h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	06h
	retlw	03h
	retlw	06h
	retlw	03h
	retlw	06h
	retlw	03h
	retlw	06h
	retlw	03h
	retlw	06h
	retlw	03h
	retlw	08Eh
	retlw	03h
	retlw	0FCh
	retlw	01h
	retlw	0F8h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	07h
	retlw	0F8h
	retlw	01Fh
	retlw	01Ch
	retlw	038h
	retlw	0Eh
	retlw	070h
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	06Ch
	retlw	0Eh
	retlw	07Ch
	retlw	01Ch
	retlw	038h
	retlw	0F8h
	retlw	07Fh
	retlw	0E0h
	retlw	067h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	06h
	retlw	03h
	retlw	06h
	retlw	03h
	retlw	06h
	retlw	07h
	retlw	06h
	retlw	0Fh
	retlw	06h
	retlw	01Fh
	retlw	08Eh
	retlw	03Bh
	retlw	0FCh
	retlw	071h
	retlw	0F8h
	retlw	060h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	078h
	retlw	018h
	retlw	0FCh
	retlw	038h
	retlw	0CEh
	retlw	071h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	086h
	retlw	061h
	retlw	08Eh
	retlw	073h
	retlw	01Ch
	retlw	03Fh
	retlw	018h
	retlw	01Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	06h
	retlw	0
	retlw	06h
	retlw	0
	retlw	06h
	retlw	0
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	06h
	retlw	0
	retlw	06h
	retlw	0
	retlw	06h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	0Fh
	retlw	0FEh
	retlw	03Fh
	retlw	0
	retlw	070h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	070h
	retlw	0FEh
	retlw	03Fh
	retlw	0FEh
	retlw	0Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0Eh
	retlw	0
	retlw	07Eh
	retlw	0
	retlw	0F0h
	retlw	03h
	retlw	080h
	retlw	01Fh
	retlw	0
	retlw	07Ch
	retlw	0
	retlw	07Ch
	retlw	080h
	retlw	01Fh
	retlw	0F0h
	retlw	03h
	retlw	07Eh
	retlw	0
	retlw	0Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	0
	retlw	038h
	retlw	0
	retlw	0Ch
	retlw	0
	retlw	07h
	retlw	0
	retlw	07h
	retlw	0
	retlw	0Ch
	retlw	0
	retlw	038h
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	06h
	retlw	060h
	retlw	01Eh
	retlw	078h
	retlw	038h
	retlw	01Ch
	retlw	060h
	retlw	06h
	retlw	0C0h
	retlw	03h
	retlw	0C0h
	retlw	03h
	retlw	060h
	retlw	06h
	retlw	038h
	retlw	01Ch
	retlw	01Eh
	retlw	078h
	retlw	06h
	retlw	060h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	06h
	retlw	0
	retlw	01Eh
	retlw	0
	retlw	078h
	retlw	0
	retlw	0E0h
	retlw	01h
	retlw	080h
	retlw	07Fh
	retlw	080h
	retlw	07Fh
	retlw	0E0h
	retlw	01h
	retlw	078h
	retlw	0
	retlw	01Eh
	retlw	0
	retlw	06h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	078h
	retlw	06h
	retlw	07Ch
	retlw	06h
	retlw	066h
	retlw	086h
	retlw	063h
	retlw	0C6h
	retlw	061h
	retlw	066h
	retlw	060h
	retlw	03Eh
	retlw	060h
	retlw	01Eh
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01Ch
	retlw	0
	retlw	038h
	retlw	0
	retlw	070h
	retlw	0
	retlw	0E0h
	retlw	0
	retlw	0C0h
	retlw	01h
	retlw	080h
	retlw	03h
	retlw	0
	retlw	07h
	retlw	0
	retlw	0Eh
	retlw	0
	retlw	01Ch
	retlw	0
	retlw	038h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0C0h
	retlw	0
	retlw	0E0h
	retlw	0
	retlw	070h
	retlw	0
	retlw	038h
	retlw	0
	retlw	01Ch
	retlw	0
	retlw	0Eh
	retlw	0
	retlw	01Ch
	retlw	0
	retlw	038h
	retlw	0
	retlw	070h
	retlw	0
	retlw	0E0h
	retlw	0
	retlw	0C0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	03Eh
	retlw	0
	retlw	07Eh
	retlw	0
	retlw	04Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01Ch
	retlw	040h
	retlw	03Eh
	retlw	060h
	retlw	033h
	retlw	060h
	retlw	033h
	retlw	060h
	retlw	033h
	retlw	060h
	retlw	033h
	retlw	060h
	retlw	033h
	retlw	060h
	retlw	033h
	retlw	0E0h
	retlw	03Fh
	retlw	0C0h
	retlw	03Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	080h
	retlw	061h
	retlw	0C0h
	retlw	060h
	retlw	0C0h
	retlw	060h
	retlw	0C0h
	retlw	060h
	retlw	0C0h
	retlw	060h
	retlw	0C0h
	retlw	071h
	retlw	080h
	retlw	03Fh
	retlw	0
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	0Fh
	retlw	0C0h
	retlw	01Fh
	retlw	0E0h
	retlw	038h
	retlw	060h
	retlw	030h
	retlw	060h
	retlw	030h
	retlw	060h
	retlw	030h
	retlw	060h
	retlw	030h
	retlw	060h
	retlw	030h
	retlw	0C0h
	retlw	018h
	retlw	080h
	retlw	08h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	080h
	retlw	03Fh
	retlw	0C0h
	retlw	071h
	retlw	0C0h
	retlw	060h
	retlw	0C0h
	retlw	060h
	retlw	0C0h
	retlw	060h
	retlw	0C0h
	retlw	061h
	retlw	080h
	retlw	061h
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	0Fh
	retlw	0C0h
	retlw	01Fh
	retlw	0E0h
	retlw	03Bh
	retlw	060h
	retlw	033h
	retlw	060h
	retlw	033h
	retlw	060h
	retlw	033h
	retlw	060h
	retlw	033h
	retlw	060h
	retlw	033h
	retlw	0C0h
	retlw	013h
	retlw	080h
	retlw	01h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	01h
	retlw	080h
	retlw	01h
	retlw	0F8h
	retlw	07Fh
	retlw	0FCh
	retlw	07Fh
	retlw	08Eh
	retlw	01h
	retlw	086h
	retlw	01h
	retlw	086h
	retlw	01h
	retlw	06h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0C0h
	retlw	01h
	retlw	0E0h
	retlw	063h
	retlw	070h
	retlw	067h
	retlw	030h
	retlw	066h
	retlw	030h
	retlw	066h
	retlw	030h
	retlw	066h
	retlw	030h
	retlw	066h
	retlw	030h
	retlw	073h
	retlw	0F0h
	retlw	03Fh
	retlw	0F0h
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	080h
	retlw	01h
	retlw	0C0h
	retlw	0
	retlw	0C0h
	retlw	0
	retlw	0C0h
	retlw	0
	retlw	0C0h
	retlw	01h
	retlw	080h
	retlw	07Fh
	retlw	0
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	030h
	retlw	060h
	retlw	030h
	retlw	0ECh
	retlw	03Fh
	retlw	0ECh
	retlw	03Fh
	retlw	0
	retlw	030h
	retlw	0
	retlw	030h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	030h
	retlw	0
	retlw	070h
	retlw	0
	retlw	060h
	retlw	030h
	retlw	060h
	retlw	0F6h
	retlw	07Fh
	retlw	0F6h
	retlw	03Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	0
	retlw	06h
	retlw	0
	retlw	0Fh
	retlw	080h
	retlw	01Fh
	retlw	0C0h
	retlw	039h
	retlw	0C0h
	retlw	070h
	retlw	0
	retlw	060h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	060h
	retlw	06h
	retlw	060h
	retlw	0FEh
	retlw	07Fh
	retlw	0FEh
	retlw	07Fh
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	03Fh
	retlw	0C0h
	retlw	03Fh
	retlw	0E0h
	retlw	0
	retlw	0E0h
	retlw	0
	retlw	0C0h
	retlw	03Fh
	retlw	0C0h
	retlw	03Fh
	retlw	0E0h
	retlw	0
	retlw	0E0h
	retlw	0
	retlw	0C0h
	retlw	03Fh
	retlw	080h
	retlw	03Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	03Fh
	retlw	0E0h
	retlw	03Fh
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	0E0h
	retlw	0
	retlw	0C0h
	retlw	03Fh
	retlw	080h
	retlw	03Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	0Fh
	retlw	0C0h
	retlw	01Fh
	retlw	0E0h
	retlw	038h
	retlw	060h
	retlw	030h
	retlw	060h
	retlw	030h
	retlw	060h
	retlw	030h
	retlw	060h
	retlw	030h
	retlw	0E0h
	retlw	038h
	retlw	0C0h
	retlw	01Fh
	retlw	080h
	retlw	0Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0F0h
	retlw	07Fh
	retlw	0F0h
	retlw	07Fh
	retlw	030h
	retlw	06h
	retlw	030h
	retlw	0Ch
	retlw	030h
	retlw	0Ch
	retlw	030h
	retlw	0Ch
	retlw	030h
	retlw	0Ch
	retlw	070h
	retlw	0Eh
	retlw	0E0h
	retlw	07h
	retlw	0C0h
	retlw	03h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0C0h
	retlw	03h
	retlw	0E0h
	retlw	07h
	retlw	070h
	retlw	0Eh
	retlw	030h
	retlw	0Ch
	retlw	030h
	retlw	0Ch
	retlw	030h
	retlw	0Ch
	retlw	030h
	retlw	0Ch
	retlw	030h
	retlw	06h
	retlw	0F0h
	retlw	07Fh
	retlw	0F0h
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	03Fh
	retlw	0E0h
	retlw	03Fh
	retlw	0C0h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	0E0h
	retlw	0
	retlw	0C0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0C0h
	retlw	011h
	retlw	0E0h
	retlw	033h
	retlw	060h
	retlw	033h
	retlw	060h
	retlw	033h
	retlw	060h
	retlw	033h
	retlw	060h
	retlw	033h
	retlw	060h
	retlw	03Fh
	retlw	040h
	retlw	01Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	060h
	retlw	0
	retlw	060h
	retlw	0
	retlw	0FEh
	retlw	01Fh
	retlw	0FEh
	retlw	03Fh
	retlw	060h
	retlw	030h
	retlw	060h
	retlw	030h
	retlw	060h
	retlw	030h
	retlw	0
	retlw	030h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	0Fh
	retlw	0E0h
	retlw	01Fh
	retlw	0
	retlw	038h
	retlw	0
	retlw	030h
	retlw	0
	retlw	030h
	retlw	0
	retlw	030h
	retlw	0
	retlw	030h
	retlw	0
	retlw	018h
	retlw	0E0h
	retlw	03Fh
	retlw	0E0h
	retlw	03Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	060h
	retlw	0
	retlw	0E0h
	retlw	01h
	retlw	080h
	retlw	07h
	retlw	0
	retlw	01Eh
	retlw	0
	retlw	038h
	retlw	0
	retlw	038h
	retlw	0
	retlw	01Eh
	retlw	080h
	retlw	07h
	retlw	0E0h
	retlw	01h
	retlw	060h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0E0h
	retlw	07h
	retlw	0E0h
	retlw	01Fh
	retlw	0
	retlw	038h
	retlw	0
	retlw	01Ch
	retlw	0E0h
	retlw	0Fh
	retlw	0E0h
	retlw	0Fh
	retlw	0
	retlw	01Ch
	retlw	0
	retlw	038h
	retlw	0E0h
	retlw	01Fh
	retlw	0E0h
	retlw	07h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	060h
	retlw	030h
	retlw	0E0h
	retlw	038h
	retlw	0C0h
	retlw	01Dh
	retlw	080h
	retlw	0Fh
	retlw	0
	retlw	07h
	retlw	080h
	retlw	0Fh
	retlw	0C0h
	retlw	01Dh
	retlw	0E0h
	retlw	038h
	retlw	060h
	retlw	030h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	030h
	retlw	0
	retlw	0F0h
	retlw	040h
	retlw	0C0h
	retlw	073h
	retlw	0
	retlw	03Fh
	retlw	0
	retlw	0Fh
	retlw	0C0h
	retlw	03h
	retlw	0F0h
	retlw	0
	retlw	030h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	060h
	retlw	030h
	retlw	060h
	retlw	038h
	retlw	060h
	retlw	03Ch
	retlw	060h
	retlw	036h
	retlw	060h
	retlw	033h
	retlw	0E0h
	retlw	031h
	retlw	0E0h
	retlw	030h
	retlw	060h
	retlw	030h
	retlw	020h
	retlw	030h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	0
	retlw	0C0h
	retlw	01h
	retlw	0FCh
	retlw	01Fh
	retlw	07Eh
	retlw	03Fh
	retlw	07h
	retlw	070h
	retlw	03h
	retlw	060h
	retlw	03h
	retlw	060h
	retlw	03h
	retlw	060h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	07Eh
	retlw	07Fh
	retlw	07Eh
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	03h
	retlw	060h
	retlw	03h
	retlw	060h
	retlw	03h
	retlw	060h
	retlw	07h
	retlw	070h
	retlw	07Eh
	retlw	03Fh
	retlw	0FCh
	retlw	01Fh
	retlw	0C0h
	retlw	01h
	retlw	080h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	010h
	retlw	0
	retlw	018h
	retlw	0
	retlw	0Ch
	retlw	0
	retlw	04h
	retlw	0
	retlw	0Ch
	retlw	0
	retlw	018h
	retlw	0
	retlw	010h
	retlw	0
	retlw	018h
	retlw	0
	retlw	0Ch
	retlw	0
	retlw	04h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0Fh
	retlw	080h
	retlw	0Fh
	retlw	0C0h
	retlw	0Ch
	retlw	060h
	retlw	0Ch
	retlw	030h
	retlw	0Ch
	retlw	030h
	retlw	0Ch
	retlw	060h
	retlw	0Ch
	retlw	0C0h
	retlw	0Ch
	retlw	080h
	retlw	0Fh
	retlw	0
	retlw	0Fh
	retlw	0
	retlw	0
	global	_Terminal12x16
	global	_count
	global	_font
	global	_font2
	global	_dht11_rh
	global	_dht11_temp
	global	_height
	global	_min
	global	_width
	global	_Oled_RAM
	global	_dht11_data
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_RCSTA
_RCSTA	set	24
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_TXREG
_TXREG	set	25
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA5
_RA5	set	45
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_SSPEN
_SSPEN	set	165
	global	_T1CKPS0
_T1CKPS0	set	132
	global	_TMR1ON
_TMR1ON	set	128
	global	_TXIF
_TXIF	set	100
	global	_ADCON1
_ADCON1	set	159
	global	_SPBRG
_SPBRG	set	153
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_TXSTA
_TXSTA	set	152
	global	_BF
_BF	set	1184
	global	_RBPU
_RBPU	set	1039
	global	_TRISD0
_TRISD0	set	1088
	global	_TRISD1
_TRISD1	set	1089
	global	_TRISD2
_TRISD2	set	1090
	global	_TRISD4
_TRISD4	set	1092
	global	_TRISD5
_TRISD5	set	1093
	global	_TRISD6
_TRISD6	set	1094
	global	_TRISD7
_TRISD7	set	1095
	
STR_12:	
	retlw	78	;'N'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	115	;'s'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	67	;'C'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	102	;'f'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	32	;' '
	retlw	101	;'e'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	104	;'h'
	retlw	116	;'t'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	67	;'C'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	102	;'f'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	67	;'C'
	retlw	50	;'2'
	retlw	53	;'5'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_10:	
	retlw	32	;' '
	retlw	68	;'D'
	retlw	72	;'H'
	retlw	84	;'T'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	68	;'D'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	79	;'O'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	56	;'8'
	retlw	120	;'x'
	retlw	54	;'6'
	retlw	52	;'4'
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	98	;'b'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	0
psect	stringtext
	
STR_9:	
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	0
psect	stringtext
	
STR_11:	
	retlw	32	;' '
	retlw	69	;'E'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	83	;'S'
	retlw	83	;'S'
	retlw	68	;'D'
	retlw	49	;'1'
	retlw	51	;'3'
	retlw	48	;'0'
	retlw	54	;'6'
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	71	;'G'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	112	;'p'
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	0
psect	stringtext
	
STR_13:	
	retlw	32	;' '
	retlw	104	;'h'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_8:	
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	0
psect	stringtext
	
STR_14:	
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	0
psect	stringtext
	
STR_15:	
	retlw	66	;'B'
	retlw	77	;'M'
	retlw	68	;'D'
	retlw	0
psect	stringtext
STR_16	equ	STR_15+0
	file	"iot_remote.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_count:
       ds      2

_font:
       ds      2

_font2:
       ds      2

_dht11_rh:
       ds      1

_dht11_temp:
       ds      1

_height:
       ds      1

_min:
       ds      1

_width:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_dht11_data:
       ds      40

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
_Oled_RAM:
       ds      90

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+0Bh)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+028h)
	fcall	clear_ram
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+05Ah)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_ClearLCDScreen
?_ClearLCDScreen:	; 0 bytes @ 0x0
	global	?_WriteDataToLCD
?_WriteDataToLCD:	; 0 bytes @ 0x0
	global	?_WriteCommandToLCD
?_WriteCommandToLCD:	; 0 bytes @ 0x0
	global	?_initialise_SPI
?_initialise_SPI:	; 0 bytes @ 0x0
	global	??_initialise_SPI
??_initialise_SPI:	; 0 bytes @ 0x0
	global	?_Oled_Init
?_Oled_Init:	; 0 bytes @ 0x0
	global	?_Oled_Delay
?_Oled_Delay:	; 0 bytes @ 0x0
	global	??_Oled_Delay
??_Oled_Delay:	; 0 bytes @ 0x0
	global	?_Oled_SetFont
?_Oled_SetFont:	; 0 bytes @ 0x0
	global	?_Oled_FillScreen
?_Oled_FillScreen:	; 0 bytes @ 0x0
	global	?_uart_init
?_uart_init:	; 0 bytes @ 0x0
	global	??_uart_init
??_uart_init:	; 0 bytes @ 0x0
	global	?_uart_tx
?_uart_tx:	; 0 bytes @ 0x0
	global	??_uart_tx
??_uart_tx:	; 0 bytes @ 0x0
	global	?_Oled_Reset
?_Oled_Reset:	; 0 bytes @ 0x0
	global	?_Oled_Command
?_Oled_Command:	; 0 bytes @ 0x0
	global	?_blinktest
?_blinktest:	; 0 bytes @ 0x0
	global	??_blinktest
??_blinktest:	; 0 bytes @ 0x0
	global	?_InitKeypad
?_InitKeypad:	; 0 bytes @ 0x0
	global	??_InitKeypad
??_InitKeypad:	; 0 bytes @ 0x0
	global	??_READ_SWITCHES
??_READ_SWITCHES:	; 0 bytes @ 0x0
	global	?_ToggleEpinOfLCD
?_ToggleEpinOfLCD:	; 0 bytes @ 0x0
	global	??_ToggleEpinOfLCD
??_ToggleEpinOfLCD:	; 0 bytes @ 0x0
	global	?_InitLCD
?_InitLCD:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_Oled_WriteRam
?_Oled_WriteRam:	; 0 bytes @ 0x0
	global	?_dht11_measure
?_dht11_measure:	; 1 bytes @ 0x0
	global	?_READ_SWITCHES
?_READ_SWITCHES:	; 1 bytes @ 0x0
	global	?_GetKey
?_GetKey:	; 1 bytes @ 0x0
	global	?___lbdiv
?___lbdiv:	; 1 bytes @ 0x0
	global	?___lbmod
?___lbmod:	; 1 bytes @ 0x0
	global	?_WriteSPI
?_WriteSPI:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	uart_tx@c
uart_tx@c:	; 1 bytes @ 0x0
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x0
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x0
	global	ToggleEpinOfLCD@i
ToggleEpinOfLCD@i:	; 2 bytes @ 0x0
	global	Oled_SetFont@_font
Oled_SetFont@_font:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	?_uart_string
?_uart_string:	; 0 bytes @ 0x1
	global	??___lbdiv
??___lbdiv:	; 0 bytes @ 0x1
	global	??___lbmod
??___lbmod:	; 0 bytes @ 0x1
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x1
	global	uart_string@s
uart_string@s:	; 2 bytes @ 0x1
	ds	1
	global	??_WriteDataToLCD
??_WriteDataToLCD:	; 0 bytes @ 0x2
	global	??_WriteCommandToLCD
??_WriteCommandToLCD:	; 0 bytes @ 0x2
	global	??_WriteSPI
??_WriteSPI:	; 0 bytes @ 0x2
	global	WriteCommandToLCD@Command
WriteCommandToLCD@Command:	; 1 bytes @ 0x2
	global	WriteDataToLCD@LCDChar
WriteDataToLCD@LCDChar:	; 1 bytes @ 0x2
	global	WriteSPI@data
WriteSPI@data:	; 1 bytes @ 0x2
	global	Oled_SetFont@_width
Oled_SetFont@_width:	; 1 bytes @ 0x2
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x2
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x2
	global	Oled_Delay@i
Oled_Delay@i:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_ClearLCDScreen
??_ClearLCDScreen:	; 0 bytes @ 0x3
	global	?_WriteStringToLCD
?_WriteStringToLCD:	; 0 bytes @ 0x3
	global	??_uart_string
??_uart_string:	; 0 bytes @ 0x3
	global	??_Oled_Command
??_Oled_Command:	; 0 bytes @ 0x3
	global	??_GetKey
??_GetKey:	; 0 bytes @ 0x3
	global	??_InitLCD
??_InitLCD:	; 0 bytes @ 0x3
	global	??_Oled_WriteRam
??_Oled_WriteRam:	; 0 bytes @ 0x3
	global	GetKey@key
GetKey@key:	; 1 bytes @ 0x3
	global	Oled_Command@cmd
Oled_Command@cmd:	; 1 bytes @ 0x3
	global	Oled_WriteRam@dat
Oled_WriteRam@dat:	; 1 bytes @ 0x3
	global	Oled_SetFont@_height
Oled_SetFont@_height:	; 1 bytes @ 0x3
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x3
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x3
	global	InitLCD@i
InitLCD@i:	; 2 bytes @ 0x3
	global	WriteStringToLCD@s
WriteStringToLCD@s:	; 2 bytes @ 0x3
	ds	1
	global	??_Oled_Reset
??_Oled_Reset:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	Oled_SetFont@_min
Oled_SetFont@_min:	; 1 bytes @ 0x4
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	??_WriteStringToLCD
??_WriteStringToLCD:	; 0 bytes @ 0x5
	global	??_dht11_measure
??_dht11_measure:	; 0 bytes @ 0x5
	global	Oled_SetFont@_max
Oled_SetFont@_max:	; 1 bytes @ 0x5
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	ds	1
	global	??_Oled_SetFont
??_Oled_SetFont:	; 0 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	dht11_measure@time
dht11_measure@time:	; 2 bytes @ 0x7
	ds	1
	global	?_Oled_SetPointer
?_Oled_SetPointer:	; 0 bytes @ 0x8
	global	Oled_SetPointer@pag
Oled_SetPointer@pag:	; 1 bytes @ 0x8
	ds	1
	global	??_Oled_SetPointer
??_Oled_SetPointer:	; 0 bytes @ 0x9
	global	dht11_measure@i
dht11_measure@i:	; 1 bytes @ 0x9
	global	Oled_SetPointer@low_column
Oled_SetPointer@low_column:	; 1 bytes @ 0x9
	ds	1
	global	dht11_measure@counter
dht11_measure@counter:	; 1 bytes @ 0xA
	global	Oled_SetPointer@hig_column
Oled_SetPointer@hig_column:	; 1 bytes @ 0xA
	ds	1
	global	dht11_measure@i_629
dht11_measure@i_629:	; 1 bytes @ 0xB
	global	Oled_SetPointer@seg
Oled_SetPointer@seg:	; 1 bytes @ 0xB
	ds	1
	global	??_Oled_Init
??_Oled_Init:	; 0 bytes @ 0xC
	global	??_Oled_FillScreen
??_Oled_FillScreen:	; 0 bytes @ 0xC
	global	??_Oled_Line
??_Oled_Line:	; 0 bytes @ 0xC
	global	?_Oled_WriteChar
?_Oled_WriteChar:	; 0 bytes @ 0xC
	global	dht11_measure@i_631
dht11_measure@i_631:	; 1 bytes @ 0xC
	global	Oled_WriteChar@seg
Oled_WriteChar@seg:	; 1 bytes @ 0xC
	ds	1
	global	dht11_measure@i_632
dht11_measure@i_632:	; 1 bytes @ 0xD
	global	Oled_WriteChar@pag
Oled_WriteChar@pag:	; 1 bytes @ 0xD
	ds	1
	global	??_Oled_ConstText
??_Oled_ConstText:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_Oled_WriteChar
??_Oled_WriteChar:	; 0 bytes @ 0x0
	global	?_Oled_Pixel
?_Oled_Pixel:	; 0 bytes @ 0x0
	global	Oled_FillScreen@k
Oled_FillScreen@k:	; 2 bytes @ 0x0
	global	Oled_Pixel@x
Oled_Pixel@x:	; 2 bytes @ 0x0
	ds	2
	global	Oled_FillScreen@pattern
Oled_FillScreen@pattern:	; 1 bytes @ 0x2
	global	Oled_Pixel@y
Oled_Pixel@y:	; 2 bytes @ 0x2
	ds	1
	global	Oled_FillScreen@j
Oled_FillScreen@j:	; 1 bytes @ 0x3
	ds	1
	global	Oled_WriteChar@c
Oled_WriteChar@c:	; 1 bytes @ 0x4
	global	Oled_FillScreen@i
Oled_FillScreen@i:	; 1 bytes @ 0x4
	global	Oled_Pixel@color
Oled_Pixel@color:	; 1 bytes @ 0x4
	ds	1
	global	??_Oled_Pixel
??_Oled_Pixel:	; 0 bytes @ 0x5
	global	Oled_WriteChar@y_pag
Oled_WriteChar@y_pag:	; 2 bytes @ 0x5
	ds	2
	global	Oled_WriteChar@i
Oled_WriteChar@i:	; 2 bytes @ 0x7
	ds	2
	global	?_Oled_Line
?_Oled_Line:	; 0 bytes @ 0x9
	global	Oled_WriteChar@x_seg
Oled_WriteChar@x_seg:	; 2 bytes @ 0x9
	global	Oled_Line@x1
Oled_Line@x1:	; 2 bytes @ 0x9
	ds	2
	global	Oled_WriteChar@j
Oled_WriteChar@j:	; 2 bytes @ 0xB
	global	Oled_Line@y1
Oled_Line@y1:	; 2 bytes @ 0xB
	ds	2
	global	?_Oled_ConstText
?_Oled_ConstText:	; 0 bytes @ 0xD
	global	Oled_ConstText@buffer
Oled_ConstText@buffer:	; 2 bytes @ 0xD
	global	Oled_Line@x2
Oled_Line@x2:	; 2 bytes @ 0xD
	ds	2
	global	Oled_ConstText@seg
Oled_ConstText@seg:	; 1 bytes @ 0xF
	global	Oled_Line@y2
Oled_Line@y2:	; 2 bytes @ 0xF
	ds	1
	global	Oled_ConstText@pag
Oled_ConstText@pag:	; 1 bytes @ 0x10
	ds	1
	global	Oled_ConstText@x_seg
Oled_ConstText@x_seg:	; 1 bytes @ 0x11
	global	Oled_Line@color
Oled_Line@color:	; 1 bytes @ 0x11
	ds	1
	global	Oled_Line@i
Oled_Line@i:	; 2 bytes @ 0x12
	ds	2
	global	Oled_Line@dx1
Oled_Line@dx1:	; 2 bytes @ 0x14
	ds	2
	global	Oled_Line@dy1
Oled_Line@dy1:	; 2 bytes @ 0x16
	ds	2
	global	Oled_Line@dy2
Oled_Line@dy2:	; 2 bytes @ 0x18
	ds	2
	global	Oled_Line@numerator
Oled_Line@numerator:	; 2 bytes @ 0x1A
	ds	2
	global	Oled_Line@dx2
Oled_Line@dx2:	; 2 bytes @ 0x1C
	ds	2
	global	Oled_Line@shortest
Oled_Line@shortest:	; 2 bytes @ 0x1E
	ds	2
	global	Oled_Line@longest
Oled_Line@longest:	; 2 bytes @ 0x20
	ds	2
	global	Oled_Line@w
Oled_Line@w:	; 2 bytes @ 0x22
	ds	2
	global	Oled_Line@h
Oled_Line@h:	; 2 bytes @ 0x24
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x26
	ds	3
	global	main@send
main@send:	; 10 bytes @ 0x29
	ds	10
	global	main@i
main@i:	; 2 bytes @ 0x33
	ds	2
	global	main@i_1584
main@i_1584:	; 2 bytes @ 0x35
	ds	2
	global	main@i_1586
main@i_1586:	; 2 bytes @ 0x37
	ds	2
	global	main@Key
main@Key:	; 1 bytes @ 0x39
	ds	1
;;Data sizes: Strings 155, constant 2304, data 0, bss 141, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     58      69
;; BANK1           80      0      40
;; BANK3           96      0      90
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; uart_string@s	PTR const unsigned char  size(2) Largest target is 4
;;		 -> STR_16(CODE[4]), STR_15(CODE[4]), 
;;
;; Oled_ConstText@buffer	PTR const unsigned char  size(2) Largest target is 12
;;		 -> STR_8(CODE[6]), STR_7(CODE[8]), STR_6(CODE[12]), STR_5(CODE[8]), 
;;		 -> STR_4(CODE[12]), 
;;
;; font	PTR unsigned char  size(2) Largest target is 2304
;;		 -> NULL(NULL[0]), Terminal12x16(CODE[2304]), 
;;
;; Oled_SetFont@_font	PTR const unsigned char  size(2) Largest target is 2304
;;		 -> Terminal12x16(CODE[2304]), 
;;
;; font2	PTR unsigned char  size(2) Largest target is 2304
;;		 -> NULL(NULL[0]), Terminal12x16(CODE[2304]), 
;;
;; WriteStringToLCD@s	PTR const unsigned char  size(2) Largest target is 17
;;		 -> STR_14(CODE[5]), STR_13(CODE[6]), STR_12(CODE[17]), STR_11(CODE[8]), 
;;		 -> STR_10(CODE[12]), STR_9(CODE[10]), STR_3(CODE[16]), STR_2(CODE[17]), 
;;		 -> STR_1(CODE[14]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_dht11_measure
;;   _Oled_ConstText->_Oled_WriteChar
;;   _Oled_Pixel->_Oled_SetPointer
;;   _Oled_WriteChar->_Oled_SetPointer
;;   _Oled_FillScreen->_Oled_SetPointer
;;   _dht11_measure->_ClearLCDScreen
;;   _dht11_measure->_WriteStringToLCD
;;   _Oled_SetPointer->___awdiv
;;   _Oled_Reset->_Oled_Delay
;;   _InitLCD->_WriteCommandToLCD
;;   _GetKey->_READ_SWITCHES
;;   _WriteStringToLCD->_WriteDataToLCD
;;   _ClearLCDScreen->_WriteCommandToLCD
;;   _Oled_WriteRam->_WriteSPI
;;   _Oled_Command->_WriteSPI
;;   _uart_string->_uart_tx
;;   _WriteCommandToLCD->_ToggleEpinOfLCD
;;   _WriteDataToLCD->_ToggleEpinOfLCD
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_Oled_Line
;;   _Oled_Line->_Oled_Pixel
;;   _Oled_ConstText->_Oled_WriteChar
;;   _Oled_Init->_Oled_FillScreen
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                20    20      0    5943
;;                                             38 BANK0     20    20      0
;;                     _initialise_SPI
;;                          _Oled_Init
;;                         _Oled_Delay
;;                       _Oled_SetFont
;;                     _Oled_ConstText
;;                    _Oled_FillScreen
;;                          _Oled_Line
;;                         _InitKeypad
;;                            _InitLCD
;;                   _WriteStringToLCD
;;                          _uart_init
;;                     _ClearLCDScreen
;;                      _dht11_measure
;;                  _WriteCommandToLCD
;;                            ___lbdiv
;;                     _WriteDataToLCD
;;                            ___lbmod
;;                             _GetKey
;;                        _uart_string
;;                            _uart_tx
;; ---------------------------------------------------------------------------------
;; (1) _Oled_Line                                           30    21      9    1774
;;                                             12 COMMON     1     1      0
;;                                              9 BANK0     29    20      9
;;                             ___wmul
;;                         _Oled_Pixel
;; ---------------------------------------------------------------------------------
;; (1) _Oled_ConstText                                       5     1      4     732
;;                                             13 BANK0      5     1      4
;;                     _Oled_WriteChar
;; ---------------------------------------------------------------------------------
;; (1) _Oled_Init                                            0     0      0     523
;;                         _Oled_Delay
;;                         _Oled_Reset
;;                       _Oled_Command
;;                    _Oled_FillScreen
;; ---------------------------------------------------------------------------------
;; (2) _Oled_Pixel                                           9     4      5     857
;;                                              0 BANK0      9     4      5
;;                            ___awdiv
;;                    _Oled_SetPointer
;;                      _Oled_WriteRam
;; ---------------------------------------------------------------------------------
;; (2) _Oled_WriteChar                                      15    13      2     619
;;                                             12 COMMON     2     0      2
;;                                              0 BANK0     13    13      0
;;                             ___wmul
;;                    _Oled_SetPointer
;;                      _Oled_WriteRam
;; ---------------------------------------------------------------------------------
;; (1) _Oled_FillScreen                                      5     5      0     387
;;                                              0 BANK0      5     5      0
;;                    _Oled_SetPointer
;;                      _Oled_WriteRam
;;                          _blinktest
;; ---------------------------------------------------------------------------------
;; (1) _dht11_measure                                        9     9      0     702
;;                                              5 COMMON     9     9      0
;;                     _ClearLCDScreen
;;                   _WriteStringToLCD
;; ---------------------------------------------------------------------------------
;; (3) _Oled_SetPointer                                      4     3      1     161
;;                                              8 COMMON     4     3      1
;;                       _Oled_Command
;;                            ___awdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _Oled_Reset                                           0     0      0      46
;;                         _Oled_Delay
;; ---------------------------------------------------------------------------------
;; (1) _InitLCD                                              2     2      0     274
;;                                              3 COMMON     2     2      0
;;                    _ToggleEpinOfLCD
;;                  _WriteCommandToLCD
;; ---------------------------------------------------------------------------------
;; (1) _GetKey                                               1     1      0      24
;;                                              3 COMMON     1     1      0
;;                      _READ_SWITCHES
;; ---------------------------------------------------------------------------------
;; (2) _WriteStringToLCD                                     2     0      2     135
;;                                              3 COMMON     2     0      2
;;                     _WriteDataToLCD
;; ---------------------------------------------------------------------------------
;; (2) _ClearLCDScreen                                       2     2      0      90
;;                                              3 COMMON     2     2      0
;;                  _WriteCommandToLCD
;; ---------------------------------------------------------------------------------
;; (2) _blinktest                                            3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (3) _Oled_WriteRam                                        1     1      0      44
;;                                              3 COMMON     1     1      0
;;                           _WriteSPI
;; ---------------------------------------------------------------------------------
;; (4) _Oled_Command                                         1     1      0      44
;;                                              3 COMMON     1     1      0
;;                           _WriteSPI
;; ---------------------------------------------------------------------------------
;; (1) _uart_string                                          2     0      2      67
;;                                              1 COMMON     2     0      2
;;                            _uart_tx
;; ---------------------------------------------------------------------------------
;; (1) _Oled_Delay                                           4     4      0      46
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (2) _READ_SWITCHES                                        3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _WriteCommandToLCD                                    1     1      0      90
;;                                              2 COMMON     1     1      0
;;                    _ToggleEpinOfLCD
;; ---------------------------------------------------------------------------------
;; (1) _WriteDataToLCD                                       1     1      0      90
;;                                              2 COMMON     1     1      0
;;                    _ToggleEpinOfLCD
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              8     4      4     300
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (1) ___lbmod                                              5     4      1     159
;;                                              0 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (1) ___lbdiv                                              4     3      1     162
;;                                              0 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (4) _WriteSPI                                             4     2      2      22
;;                                              0 COMMON     3     1      2
;; ---------------------------------------------------------------------------------
;; (1) _uart_tx                                              1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Oled_SetFont                                         7     1      6      99
;;                                              0 COMMON     7     1      6
;; ---------------------------------------------------------------------------------
;; (1) _initialise_SPI                                       0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _ToggleEpinOfLCD                                      2     2      0      46
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _InitKeypad                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _initialise_SPI
;;   _Oled_Init
;;     _Oled_Delay
;;     _Oled_Reset
;;       _Oled_Delay
;;     _Oled_Command
;;       _WriteSPI
;;     _Oled_FillScreen
;;       _Oled_SetPointer
;;         _Oled_Command
;;           _WriteSPI
;;         ___awdiv (ARG)
;;       _Oled_WriteRam
;;         _WriteSPI
;;       _blinktest
;;   _Oled_Delay
;;   _Oled_SetFont
;;   _Oled_ConstText
;;     _Oled_WriteChar
;;       ___wmul
;;       _Oled_SetPointer
;;         _Oled_Command
;;           _WriteSPI
;;         ___awdiv (ARG)
;;       _Oled_WriteRam
;;         _WriteSPI
;;   _Oled_FillScreen
;;     _Oled_SetPointer
;;       _Oled_Command
;;         _WriteSPI
;;       ___awdiv (ARG)
;;     _Oled_WriteRam
;;       _WriteSPI
;;     _blinktest
;;   _Oled_Line
;;     ___wmul
;;     _Oled_Pixel
;;       ___awdiv
;;       _Oled_SetPointer
;;         _Oled_Command
;;           _WriteSPI
;;         ___awdiv (ARG)
;;       _Oled_WriteRam
;;         _WriteSPI
;;   _InitKeypad
;;   _InitLCD
;;     _ToggleEpinOfLCD
;;     _WriteCommandToLCD
;;       _ToggleEpinOfLCD
;;   _WriteStringToLCD
;;     _WriteDataToLCD
;;       _ToggleEpinOfLCD
;;   _uart_init
;;   _ClearLCDScreen
;;     _WriteCommandToLCD
;;       _ToggleEpinOfLCD
;;   _dht11_measure
;;     _ClearLCDScreen
;;       _WriteCommandToLCD
;;         _ToggleEpinOfLCD
;;     _WriteStringToLCD
;;       _WriteDataToLCD
;;         _ToggleEpinOfLCD
;;   _WriteCommandToLCD
;;     _ToggleEpinOfLCD
;;   ___lbdiv
;;   _WriteDataToLCD
;;     _ToggleEpinOfLCD
;;   ___lbmod
;;   _GetKey
;;     _READ_SWITCHES
;;   _uart_string
;;     _uart_tx
;;   _uart_tx
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0      D5       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     3A      45       5       86.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0      28       7       50.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0      5A       9       93.8%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      DA      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 20 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   53[BANK0 ] int 
;;  i               2   55[BANK0 ] int 
;;  send           10   41[BANK0 ] unsigned char [10]
;;  i               2   51[BANK0 ] int 
;;  Key             1   57[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      17       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      20       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_initialise_SPI
;;		_Oled_Init
;;		_Oled_Delay
;;		_Oled_SetFont
;;		_Oled_ConstText
;;		_Oled_FillScreen
;;		_Oled_Line
;;		_InitKeypad
;;		_InitLCD
;;		_WriteStringToLCD
;;		_uart_init
;;		_ClearLCDScreen
;;		_dht11_measure
;;		_WriteCommandToLCD
;;		___lbdiv
;;		_WriteDataToLCD
;;		___lbmod
;;		_GetKey
;;		_uart_string
;;		_uart_tx
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\Main.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	24
	
l7283:	
;Main.c: 21: int i;
;Main.c: 23: char send[10];
;Main.c: 24: ADCON1 = 0X06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	line	25
;Main.c: 25: TRISC = 0X10;
	movlw	(010h)
	movwf	(135)^080h	;volatile
	line	26
	
l7285:	
;Main.c: 26: TRISA = 0X00;
	clrf	(133)^080h	;volatile
	line	27
	
l7287:	
;Main.c: 27: TRISD = 0X00;
	clrf	(136)^080h	;volatile
	line	28
	
l7289:	
;Main.c: 28: TRISE=0X00;
	clrf	(137)^080h	;volatile
	line	29
	
l7291:	
	line	30
	
l7293:	
;Main.c: 30: initialise_SPI();
	fcall	_initialise_SPI
	line	32
	
l7295:	
;Main.c: 32: Oled_Init();
	fcall	_Oled_Init
	line	35
	
l7297:	
;Main.c: 34: {
;Main.c: 35: Oled_Delay();
	fcall	_Oled_Delay
	line	36
	
l7299:	
;Main.c: 36: Oled_SetFont(Terminal12x16, 12, 16, 32,127);
	movlw	low(_Terminal12x16|8000h)
	movwf	(?_Oled_SetFont)
	movlw	high(_Terminal12x16|8000h)
	movwf	((?_Oled_SetFont))+1
	movlw	(0Ch)
	movwf	0+(?_Oled_SetFont)+02h
	movlw	(010h)
	movwf	0+(?_Oled_SetFont)+03h
	movlw	(020h)
	movwf	0+(?_Oled_SetFont)+04h
	movlw	(07Fh)
	movwf	0+(?_Oled_SetFont)+05h
	fcall	_Oled_SetFont
	line	37
	
l7301:	
;Main.c: 37: Oled_ConstText("library for", 0, 0);
	movlw	low(STR_4|8000h)
	movwf	(?_Oled_ConstText)
	movlw	high(STR_4|8000h)
	movwf	((?_Oled_ConstText))+1
	clrf	0+(?_Oled_ConstText)+02h
	clrf	0+(?_Oled_ConstText)+03h
	fcall	_Oled_ConstText
	line	38
	
l7303:	
;Main.c: 38: Oled_ConstText("Graphic", 0, 2);
	movlw	low(STR_5|8000h)
	movwf	(?_Oled_ConstText)
	movlw	high(STR_5|8000h)
	movwf	((?_Oled_ConstText))+1
	clrf	0+(?_Oled_ConstText)+02h
	movlw	(02h)
	movwf	0+(?_Oled_ConstText)+03h
	fcall	_Oled_ConstText
	line	39
	
l7305:	
;Main.c: 39: Oled_ConstText("OLED 128x64", 0, 4);
	movlw	low(STR_6|8000h)
	movwf	(?_Oled_ConstText)
	movlw	high(STR_6|8000h)
	movwf	((?_Oled_ConstText))+1
	clrf	0+(?_Oled_ConstText)+02h
	movlw	(04h)
	movwf	0+(?_Oled_ConstText)+03h
	fcall	_Oled_ConstText
	line	40
	
l7307:	
;Main.c: 40: Oled_ConstText("SSD1306", 0, 6);
	movlw	low(STR_7|8000h)
	movwf	(?_Oled_ConstText)
	movlw	high(STR_7|8000h)
	movwf	((?_Oled_ConstText))+1
	clrf	0+(?_Oled_ConstText)+02h
	movlw	(06h)
	movwf	0+(?_Oled_ConstText)+03h
	fcall	_Oled_ConstText
	line	41
	
l7309:	
;Main.c: 41: _delay((unsigned long)((3000)*(16000000/4000.0)));
	opt asmopt_off
movlw  61
movwf	((??_main+0)+0+2),f
movlw	165
movwf	((??_main+0)+0+1),f
	movlw	102
movwf	((??_main+0)+0),f
u2517:
	decfsz	((??_main+0)+0),f
	goto	u2517
	decfsz	((??_main+0)+0+1),f
	goto	u2517
	decfsz	((??_main+0)+0+2),f
	goto	u2517
	nop2
opt asmopt_on

	line	43
	
l7311:	
;Main.c: 43: Oled_FillScreen(0x00);
	movlw	(0)
	fcall	_Oled_FillScreen
	line	44
	
l7313:	
;Main.c: 44: Oled_ConstText("lines", 30, 0);
	movlw	low(STR_8|8000h)
	movwf	(?_Oled_ConstText)
	movlw	high(STR_8|8000h)
	movwf	((?_Oled_ConstText))+1
	movlw	(01Eh)
	movwf	0+(?_Oled_ConstText)+02h
	clrf	0+(?_Oled_ConstText)+03h
	fcall	_Oled_ConstText
	line	45
	
l7315:	
;Main.c: 45: for(i=16; i<64; i=i+4)
	movlw	010h
	movwf	(main@i)
	clrf	(main@i+1)
	line	47
	
l7321:	
;Main.c: 46: {
;Main.c: 47: Oled_Line(0, 16, 127, i, 1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_Oled_Line)
	clrf	(?_Oled_Line+1)
	movlw	010h
	movwf	0+(?_Oled_Line)+02h
	clrf	1+(?_Oled_Line)+02h
	movlw	07Fh
	movwf	0+(?_Oled_Line)+04h
	clrf	1+(?_Oled_Line)+04h
	movf	(main@i+1),w
	movwf	1+(?_Oled_Line)+06h
	movf	(main@i),w
	movwf	0+(?_Oled_Line)+06h
	clrf	0+(?_Oled_Line)+08h
	incf	0+(?_Oled_Line)+08h,f
	fcall	_Oled_Line
	line	48
	
l7323:	
;Main.c: 48: _delay((unsigned long)((500)*(16000000/4000.0)));
	opt asmopt_off
movlw  11
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	28
movwf	((??_main+0)+0+1),f
	movlw	99
movwf	((??_main+0)+0),f
u2527:
	decfsz	((??_main+0)+0),f
	goto	u2527
	decfsz	((??_main+0)+0+1),f
	goto	u2527
	decfsz	((??_main+0)+0+2),f
	goto	u2527
	clrwdt
opt asmopt_on

	line	45
	
l7325:	
	movlw	04h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	
l7327:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(040h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2365
	movlw	low(040h)
	subwf	(main@i),w
u2365:

	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l7321
u2360:
	line	50
	
l7329:	
;Main.c: 49: }
;Main.c: 50: _delay((unsigned long)((3000)*(16000000/4000.0)));
	opt asmopt_off
movlw  61
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	165
movwf	((??_main+0)+0+1),f
	movlw	102
movwf	((??_main+0)+0),f
u2537:
	decfsz	((??_main+0)+0),f
	goto	u2537
	decfsz	((??_main+0)+0+1),f
	goto	u2537
	decfsz	((??_main+0)+0+2),f
	goto	u2537
	nop2
opt asmopt_on

	goto	l7297
	line	70
	
l7345:	
;Main.c: 68: {
;Main.c: 70: ClearLCDScreen();
	fcall	_ClearLCDScreen
	line	71
	
l7347:	
;Main.c: 71: if(dht11_measure())
	fcall	_dht11_measure
	xorlw	0
	skipnz
	goto	u2371
	goto	u2370
u2371:
	goto	l7355
u2370:
	line	73
	
l7349:	
;Main.c: 72: {
;Main.c: 73: WriteStringToLCD(" Error ");
	movlw	low(STR_11|8000h)
	movwf	(?_WriteStringToLCD)
	movlw	high(STR_11|8000h)
	movwf	((?_WriteStringToLCD))+1
	fcall	_WriteStringToLCD
	line	74
	
l7351:	
;Main.c: 74: WriteCommandToLCD(0xc0);
	movlw	(0C0h)
	fcall	_WriteCommandToLCD
	line	75
	
l7353:	
;Main.c: 75: WriteStringToLCD("No sensor found ");
	movlw	low(STR_12|8000h)
	movwf	(?_WriteStringToLCD)
	movlw	high(STR_12|8000h)
	movwf	((?_WriteStringToLCD))+1
	fcall	_WriteStringToLCD
	line	77
;Main.c: 77: }
	goto	l7345
	line	80
	
l7355:	
;Main.c: 78: else
;Main.c: 79: {
;Main.c: 80: WriteStringToLCD(" hum ");
	movlw	low(STR_13|8000h)
	movwf	(?_WriteStringToLCD)
	movlw	high(STR_13|8000h)
	movwf	((?_WriteStringToLCD))+1
	fcall	_WriteStringToLCD
	line	81
	
l7357:	
;Main.c: 81: WriteCommandToLCD(0x8A);
	movlw	(08Ah)
	fcall	_WriteCommandToLCD
	line	82
	
l7359:	
;Main.c: 82: WriteDataToLCD(dht11_rh/10+'0');
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(_dht11_rh),w
	fcall	___lbdiv
	addlw	030h
	fcall	_WriteDataToLCD
	line	83
	
l7361:	
;Main.c: 83: send[0] = dht11_rh/10+'0';
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(_dht11_rh),w
	fcall	___lbdiv
	addlw	030h
	movwf	(main@send)
	line	84
	
l7363:	
;Main.c: 84: WriteDataToLCD(dht11_rh%10+'0');
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(_dht11_rh),w
	fcall	___lbmod
	addlw	030h
	fcall	_WriteDataToLCD
	line	85
	
l7365:	
;Main.c: 85: send[1] = dht11_rh/10+'0';
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(_dht11_rh),w
	fcall	___lbdiv
	addlw	030h
	movwf	0+(main@send)+01h
	line	86
	
l7367:	
;Main.c: 86: WriteCommandToLCD(0xc0);
	movlw	(0C0h)
	fcall	_WriteCommandToLCD
	line	87
;Main.c: 87: WriteStringToLCD("Temp");
	movlw	low(STR_14|8000h)
	movwf	(?_WriteStringToLCD)
	movlw	high(STR_14|8000h)
	movwf	((?_WriteStringToLCD))+1
	fcall	_WriteStringToLCD
	line	88
	
l7369:	
;Main.c: 88: WriteCommandToLCD(0xca);
	movlw	(0CAh)
	fcall	_WriteCommandToLCD
	line	89
	
l7371:	
;Main.c: 89: WriteDataToLCD(dht11_temp/10+'0');
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(_dht11_temp),w
	fcall	___lbdiv
	addlw	030h
	fcall	_WriteDataToLCD
	line	90
	
l7373:	
;Main.c: 90: send[2] =dht11_temp/10+'0';
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(_dht11_temp),w
	fcall	___lbdiv
	addlw	030h
	movwf	0+(main@send)+02h
	line	91
	
l7375:	
;Main.c: 91: WriteDataToLCD(dht11_temp%10+'0');
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(_dht11_temp),w
	fcall	___lbmod
	addlw	030h
	fcall	_WriteDataToLCD
	line	92
	
l7377:	
;Main.c: 92: send[3] =dht11_temp%10+'0';
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(_dht11_temp),w
	fcall	___lbmod
	addlw	030h
	movwf	0+(main@send)+03h
	line	97
	
l7379:	
;Main.c: 97: Key = GetKey();
	fcall	_GetKey
	movwf	(main@Key)
	line	98
	
l7381:	
;Main.c: 98: ClearLCDScreen();
	fcall	_ClearLCDScreen
	line	99
	
l7383:	
;Main.c: 99: WriteDataToLCD(Key);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@Key),w
	fcall	_WriteDataToLCD
	line	104
	
l7385:	
;Main.c: 104: if(Key=='n')
	movf	(main@Key),w
	xorlw	06Eh
	skipz
	goto	u2381
	goto	u2380
u2381:
	goto	l7409
u2380:
	line	106
	
l7387:	
;Main.c: 105: {
;Main.c: 106: count++;
	incf	(_count),f
	skipnz
	incf	(_count+1),f
	line	107
	
l7389:	
;Main.c: 107: if(count == 250)
		movf	(_count),w
	xorlw	250
	iorwf	(_count+1),w

	skipz
	goto	u2391
	goto	u2390
u2391:
	goto	l3058
u2390:
	line	109
	
l7391:	
;Main.c: 108: {
;Main.c: 109: uart_string("BMD");
	movlw	low(STR_15|8000h)
	movwf	(?_uart_string)
	movlw	high(STR_15|8000h)
	movwf	((?_uart_string))+1
	fcall	_uart_string
	line	110
	
l7393:	
;Main.c: 110: for(int i=0;i<4;i++)
	clrf	(main@i_1584)
	clrf	(main@i_1584+1)
	line	111
	
l7399:	
;Main.c: 111: uart_tx(send[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i_1584),w
	addlw	main@send&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_uart_tx
	line	110
	
l7401:	
	incf	(main@i_1584),f
	skipnz
	incf	(main@i_1584+1),f
	
l7403:	
	movf	(main@i_1584+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2405
	movlw	low(04h)
	subwf	(main@i_1584),w
u2405:

	skipc
	goto	u2401
	goto	u2400
u2401:
	goto	l7399
u2400:
	line	113
	
l7405:	
;Main.c: 113: uart_tx('0');
	movlw	(030h)
	fcall	_uart_tx
	line	114
;Main.c: 114: uart_tx('T');
	movlw	(054h)
	fcall	_uart_tx
	line	115
;Main.c: 115: uart_tx('\n');
	movlw	(0Ah)
	fcall	_uart_tx
	line	120
	
l7407:	
;Main.c: 120: count=0;
	clrf	(_count)
	clrf	(_count+1)
	goto	l7345
	line	126
	
l7409:	
;Main.c: 123: else
;Main.c: 124: {
;Main.c: 126: uart_string("BMD");
	movlw	low(STR_16|8000h)
	movwf	(?_uart_string)
	movlw	high(STR_16|8000h)
	movwf	((?_uart_string))+1
	fcall	_uart_string
	line	127
	
l7411:	
;Main.c: 127: for(int i=0;i<4;i++)
	clrf	(main@i_1586)
	clrf	(main@i_1586+1)
	line	128
	
l7417:	
;Main.c: 128: uart_tx(send[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i_1586),w
	addlw	main@send&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_uart_tx
	line	127
	
l7419:	
	incf	(main@i_1586),f
	skipnz
	incf	(main@i_1586+1),f
	
l7421:	
	movf	(main@i_1586+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2415
	movlw	low(04h)
	subwf	(main@i_1586),w
u2415:

	skipc
	goto	u2411
	goto	u2410
u2411:
	goto	l7417
u2410:
	line	130
	
l7423:	
;Main.c: 130: if(Key=='1') uart_tx('1');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@Key),w
	xorlw	031h
	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l7427
u2420:
	
l7425:	
	movlw	(031h)
	fcall	_uart_tx
	line	131
	
l7427:	
;Main.c: 131: if(Key=='2') uart_tx('2');
	movf	(main@Key),w
	xorlw	032h
	skipz
	goto	u2431
	goto	u2430
u2431:
	goto	l7431
u2430:
	
l7429:	
	movlw	(032h)
	fcall	_uart_tx
	line	132
	
l7431:	
;Main.c: 132: if(Key=='3') uart_tx('3');
	movf	(main@Key),w
	xorlw	033h
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l7435
u2440:
	
l7433:	
	movlw	(033h)
	fcall	_uart_tx
	line	133
	
l7435:	
;Main.c: 133: if(Key=='4') uart_tx('4');
	movf	(main@Key),w
	xorlw	034h
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l7439
u2450:
	
l7437:	
	movlw	(034h)
	fcall	_uart_tx
	line	134
	
l7439:	
;Main.c: 134: if(Key=='5') uart_tx('5');
	movf	(main@Key),w
	xorlw	035h
	skipz
	goto	u2461
	goto	u2460
u2461:
	goto	l7443
u2460:
	
l7441:	
	movlw	(035h)
	fcall	_uart_tx
	line	135
	
l7443:	
;Main.c: 135: if(Key=='6') uart_tx('6');
	movf	(main@Key),w
	xorlw	036h
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l7447
u2470:
	
l7445:	
	movlw	(036h)
	fcall	_uart_tx
	line	136
	
l7447:	
;Main.c: 136: if(Key=='7') uart_tx('7');
	movf	(main@Key),w
	xorlw	037h
	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l7451
u2480:
	
l7449:	
	movlw	(037h)
	fcall	_uart_tx
	line	137
	
l7451:	
;Main.c: 137: if(Key=='8') uart_tx('8');
	movf	(main@Key),w
	xorlw	038h
	skipz
	goto	u2491
	goto	u2490
u2491:
	goto	l7455
u2490:
	
l7453:	
	movlw	(038h)
	fcall	_uart_tx
	line	138
	
l7455:	
;Main.c: 138: if(Key=='9') uart_tx('9');
	movf	(main@Key),w
	xorlw	039h
	skipz
	goto	u2501
	goto	u2500
u2501:
	goto	l3074
u2500:
	
l7457:	
	movlw	(039h)
	fcall	_uart_tx
	
l3074:	
	line	139
;Main.c: 139: uart_tx('T');
	movlw	(054h)
	fcall	_uart_tx
	line	140
;Main.c: 140: uart_tx('\n');
	movlw	(0Ah)
	fcall	_uart_tx
	goto	l7345
	line	142
	
l3058:	
	goto	l7345
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	160
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Oled_Line
psect	text696,local,class=CODE,delta=2
global __ptext696
__ptext696:

;; *************** function _Oled_Line *****************
;; Defined at:
;;		line 471 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
;; Parameters:    Size  Location     Type
;;  x1              2    9[BANK0 ] unsigned int 
;;  y1              2   11[BANK0 ] unsigned int 
;;  x2              2   13[BANK0 ] unsigned int 
;;  y2              2   15[BANK0 ] unsigned int 
;;  color           1   17[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  h               2   36[BANK0 ] int 
;;  w               2   34[BANK0 ] int 
;;  longest         2   32[BANK0 ] int 
;;  shortest        2   30[BANK0 ] int 
;;  dx2             2   28[BANK0 ] int 
;;  numerator       2   26[BANK0 ] int 
;;  dy2             2   24[BANK0 ] int 
;;  dy1             2   22[BANK0 ] int 
;;  dx1             2   20[BANK0 ] int 
;;  i               2   18[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       9       0       0       0
;;      Locals:         0      20       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1      29       0       0       0
;;Total ram usage:       30 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___wmul
;;		_Oled_Pixel
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text696
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
	line	471
	global	__size_of_Oled_Line
	__size_of_Oled_Line	equ	__end_of_Oled_Line-_Oled_Line
	
_Oled_Line:	
	opt	stack 3
; Regs used in _Oled_Line: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	475
	
l7203:	
;ssd1306.c: 472: sint i;
;ssd1306.c: 473: sint longest, shortest;
;ssd1306.c: 474: sint numerator;
;ssd1306.c: 475: sint w = x2 - x1;
	movf	(Oled_Line@x2+1),w
	movwf	(Oled_Line@w+1)
	movf	(Oled_Line@x2),w
	movwf	(Oled_Line@w)
	movf	(Oled_Line@x1),w
	subwf	(Oled_Line@w),f
	movf	(Oled_Line@x1+1),w
	skipc
	decf	(Oled_Line@w+1),f
	subwf	(Oled_Line@w+1),f
	line	476
;ssd1306.c: 476: sint h = y2 - y1;
	movf	(Oled_Line@y2+1),w
	movwf	(Oled_Line@h+1)
	movf	(Oled_Line@y2),w
	movwf	(Oled_Line@h)
	movf	(Oled_Line@y1),w
	subwf	(Oled_Line@h),f
	movf	(Oled_Line@y1+1),w
	skipc
	decf	(Oled_Line@h+1),f
	subwf	(Oled_Line@h+1),f
	line	477
	
l7205:	
;ssd1306.c: 477: sint dx1 = 0, dy1 = 0, dx2 = 0, dy2 = 0;
	clrf	(Oled_Line@dx1)
	clrf	(Oled_Line@dx1+1)
	
l7207:	
	clrf	(Oled_Line@dy1)
	clrf	(Oled_Line@dy1+1)
	
l7209:	
	clrf	(Oled_Line@dx2)
	clrf	(Oled_Line@dx2+1)
	
l7211:	
	clrf	(Oled_Line@dy2)
	clrf	(Oled_Line@dy2+1)
	line	479
	
l7213:	
;ssd1306.c: 479: if(w < 0) dx1 = -1; else if(w > 0) dx1 = 1;
	btfss	(Oled_Line@w+1),7
	goto	u2231
	goto	u2230
u2231:
	goto	l7217
u2230:
	
l7215:	
	movlw	low(-1)
	movwf	(Oled_Line@dx1)
	movlw	high(-1)
	movwf	((Oled_Line@dx1))+1
	goto	l7221
	
l7217:	
	movf	(Oled_Line@w+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2245
	movlw	low(01h)
	subwf	(Oled_Line@w),w
u2245:

	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l7221
u2240:
	
l7219:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Oled_Line@dx1)
	incf	(Oled_Line@dx1),f
	clrf	(Oled_Line@dx1+1)
	line	480
	
l7221:	
;ssd1306.c: 480: if(h < 0) dy1 = -1; else if(h > 0) dy1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(Oled_Line@h+1),7
	goto	u2251
	goto	u2250
u2251:
	goto	l7225
u2250:
	
l7223:	
	movlw	low(-1)
	movwf	(Oled_Line@dy1)
	movlw	high(-1)
	movwf	((Oled_Line@dy1))+1
	goto	l7229
	
l7225:	
	movf	(Oled_Line@h+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2265
	movlw	low(01h)
	subwf	(Oled_Line@h),w
u2265:

	skipc
	goto	u2261
	goto	u2260
u2261:
	goto	l7229
u2260:
	
l7227:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Oled_Line@dy1)
	incf	(Oled_Line@dy1),f
	clrf	(Oled_Line@dy1+1)
	line	481
	
l7229:	
;ssd1306.c: 481: if(w < 0) dx2 = -1; else if(w > 0) dx2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(Oled_Line@w+1),7
	goto	u2271
	goto	u2270
u2271:
	goto	l7233
u2270:
	
l7231:	
	movlw	low(-1)
	movwf	(Oled_Line@dx2)
	movlw	high(-1)
	movwf	((Oled_Line@dx2))+1
	goto	l7237
	
l7233:	
	movf	(Oled_Line@w+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2285
	movlw	low(01h)
	subwf	(Oled_Line@w),w
u2285:

	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l7237
u2280:
	
l7235:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Oled_Line@dx2)
	incf	(Oled_Line@dx2),f
	clrf	(Oled_Line@dx2+1)
	line	482
	
l7237:	
;ssd1306.c: 482: if(w < 0) w *= -1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(Oled_Line@w+1),7
	goto	u2291
	goto	u2290
u2291:
	goto	l7241
u2290:
	
l7239:	
	movlw	low(-1)
	movwf	(?___wmul)
	movlw	high(-1)
	movwf	((?___wmul))+1
	movf	(Oled_Line@w+1),w
	movwf	1+(?___wmul)+02h
	movf	(Oled_Line@w),w
	movwf	0+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(Oled_Line@w+1)
	movf	(0+(?___wmul)),w
	movwf	(Oled_Line@w)
	line	483
	
l7241:	
;ssd1306.c: 483: if(h < 0) h *= -1;
	btfss	(Oled_Line@h+1),7
	goto	u2301
	goto	u2300
u2301:
	goto	l7245
u2300:
	
l7243:	
	movlw	low(-1)
	movwf	(?___wmul)
	movlw	high(-1)
	movwf	((?___wmul))+1
	movf	(Oled_Line@h+1),w
	movwf	1+(?___wmul)+02h
	movf	(Oled_Line@h),w
	movwf	0+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(Oled_Line@h+1)
	movf	(0+(?___wmul)),w
	movwf	(Oled_Line@h)
	line	484
	
l7245:	
;ssd1306.c: 484: longest = w;
	movf	(Oled_Line@w+1),w
	movwf	(Oled_Line@longest+1)
	movf	(Oled_Line@w),w
	movwf	(Oled_Line@longest)
	line	485
	
l7247:	
;ssd1306.c: 485: shortest = h;
	movf	(Oled_Line@h+1),w
	movwf	(Oled_Line@shortest+1)
	movf	(Oled_Line@h),w
	movwf	(Oled_Line@shortest)
	line	486
	
l7249:	
;ssd1306.c: 486: if(!(longest > shortest))
	movf	(Oled_Line@shortest+1),w
	xorlw	80h
	movwf	(??_Oled_Line+0)+0
	movf	(Oled_Line@longest+1),w
	xorlw	80h
	subwf	(??_Oled_Line+0)+0,w
	skipz
	goto	u2315
	movf	(Oled_Line@longest),w
	subwf	(Oled_Line@shortest),w
u2315:

	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l7263
u2310:
	line	488
	
l7251:	
;ssd1306.c: 487: {
;ssd1306.c: 488: longest = h;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Oled_Line@h+1),w
	movwf	(Oled_Line@longest+1)
	movf	(Oled_Line@h),w
	movwf	(Oled_Line@longest)
	line	489
;ssd1306.c: 489: shortest = w;
	movf	(Oled_Line@w+1),w
	movwf	(Oled_Line@shortest+1)
	movf	(Oled_Line@w),w
	movwf	(Oled_Line@shortest)
	line	490
	
l7253:	
;ssd1306.c: 490: if(h < 0) dy2 = -1; else if(h > 0) dy2 = 1;
	btfss	(Oled_Line@h+1),7
	goto	u2321
	goto	u2320
u2321:
	goto	l7257
u2320:
	
l7255:	
	movlw	low(-1)
	movwf	(Oled_Line@dy2)
	movlw	high(-1)
	movwf	((Oled_Line@dy2))+1
	goto	l7261
	
l7257:	
	movf	(Oled_Line@h+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2335
	movlw	low(01h)
	subwf	(Oled_Line@h),w
u2335:

	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l7261
u2330:
	
l7259:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Oled_Line@dy2)
	incf	(Oled_Line@dy2),f
	clrf	(Oled_Line@dy2+1)
	line	491
	
l7261:	
;ssd1306.c: 491: dx2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Oled_Line@dx2)
	clrf	(Oled_Line@dx2+1)
	line	493
	
l7263:	
;ssd1306.c: 492: }
;ssd1306.c: 493: numerator = longest >> 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Oled_Line@longest+1),w
	movwf	(Oled_Line@numerator+1)
	movf	(Oled_Line@longest),w
	movwf	(Oled_Line@numerator)
	
l7265:	
	rlf	(Oled_Line@numerator+1),w
	rrf	(Oled_Line@numerator+1),f
	rrf	(Oled_Line@numerator),f
	line	494
	
l7267:	
;ssd1306.c: 494: for (i = 0; i <= longest; i++)
	clrf	(Oled_Line@i)
	clrf	(Oled_Line@i+1)
	goto	l7281
	line	496
	
l7269:	
;ssd1306.c: 495: {
;ssd1306.c: 496: Oled_Pixel(x1, y1, color);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Oled_Line@x1+1),w
	movwf	(?_Oled_Pixel+1)
	movf	(Oled_Line@x1),w
	movwf	(?_Oled_Pixel)
	movf	(Oled_Line@y1+1),w
	movwf	1+(?_Oled_Pixel)+02h
	movf	(Oled_Line@y1),w
	movwf	0+(?_Oled_Pixel)+02h
	movf	(Oled_Line@color),w
	movwf	0+(?_Oled_Pixel)+04h
	fcall	_Oled_Pixel
	line	497
	
l7271:	
;ssd1306.c: 497: numerator += shortest;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Oled_Line@shortest),w
	addwf	(Oled_Line@numerator),f
	skipnc
	incf	(Oled_Line@numerator+1),f
	movf	(Oled_Line@shortest+1),w
	addwf	(Oled_Line@numerator+1),f
	line	498
	
l7273:	
;ssd1306.c: 498: if(!(numerator < longest))
	movf	(Oled_Line@numerator+1),w
	xorlw	80h
	movwf	(??_Oled_Line+0)+0
	movf	(Oled_Line@longest+1),w
	xorlw	80h
	subwf	(??_Oled_Line+0)+0,w
	skipz
	goto	u2345
	movf	(Oled_Line@longest),w
	subwf	(Oled_Line@numerator),w
u2345:

	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l7277
u2340:
	line	500
	
l7275:	
;ssd1306.c: 499: {
;ssd1306.c: 500: numerator -= longest;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Oled_Line@longest),w
	subwf	(Oled_Line@numerator),f
	movf	(Oled_Line@longest+1),w
	skipc
	decf	(Oled_Line@numerator+1),f
	subwf	(Oled_Line@numerator+1),f
	line	501
;ssd1306.c: 501: x1 += dx1;
	movf	(Oled_Line@dx1),w
	addwf	(Oled_Line@x1),f
	skipnc
	incf	(Oled_Line@x1+1),f
	movf	(Oled_Line@dx1+1),w
	addwf	(Oled_Line@x1+1),f
	line	502
;ssd1306.c: 502: y1 += dy1;
	movf	(Oled_Line@dy1),w
	addwf	(Oled_Line@y1),f
	skipnc
	incf	(Oled_Line@y1+1),f
	movf	(Oled_Line@dy1+1),w
	addwf	(Oled_Line@y1+1),f
	line	503
;ssd1306.c: 503: }else
	goto	l7279
	line	505
	
l7277:	
;ssd1306.c: 504: {
;ssd1306.c: 505: x1 += dx2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Oled_Line@dx2),w
	addwf	(Oled_Line@x1),f
	skipnc
	incf	(Oled_Line@x1+1),f
	movf	(Oled_Line@dx2+1),w
	addwf	(Oled_Line@x1+1),f
	line	506
;ssd1306.c: 506: y1 += dy2;
	movf	(Oled_Line@dy2),w
	addwf	(Oled_Line@y1),f
	skipnc
	incf	(Oled_Line@y1+1),f
	movf	(Oled_Line@dy2+1),w
	addwf	(Oled_Line@y1+1),f
	line	494
	
l7279:	
	incf	(Oled_Line@i),f
	skipnz
	incf	(Oled_Line@i+1),f
	
l7281:	
	movf	(Oled_Line@longest+1),w
	xorlw	80h
	movwf	(??_Oled_Line+0)+0
	movf	(Oled_Line@i+1),w
	xorlw	80h
	subwf	(??_Oled_Line+0)+0,w
	skipz
	goto	u2355
	movf	(Oled_Line@i),w
	subwf	(Oled_Line@longest),w
u2355:

	skipnc
	goto	u2351
	goto	u2350
u2351:
	goto	l7269
u2350:
	line	509
	
l4436:	
	return
	opt stack 0
GLOBAL	__end_of_Oled_Line
	__end_of_Oled_Line:
;; =============== function _Oled_Line ends ============

	signat	_Oled_Line,20600
	global	_Oled_ConstText
psect	text697,local,class=CODE,delta=2
global __ptext697
__ptext697:

;; *************** function _Oled_ConstText *****************
;; Defined at:
;;		line 214 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
;; Parameters:    Size  Location     Type
;;  buffer          2   13[BANK0 ] PTR const unsigned char 
;;		 -> STR_8(6), STR_7(8), STR_6(12), STR_5(8), 
;;		 -> STR_4(12), 
;;  seg             1   15[BANK0 ] unsigned char 
;;  pag             1   16[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  x_seg           1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Oled_WriteChar
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text697
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
	line	214
	global	__size_of_Oled_ConstText
	__size_of_Oled_ConstText	equ	__end_of_Oled_ConstText-_Oled_ConstText
	
_Oled_ConstText:	
	opt	stack 3
; Regs used in _Oled_ConstText: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	215
	
l7193:	
;ssd1306.c: 215: unsigned char x_seg = seg;
	movf	(Oled_ConstText@seg),w
	movwf	(Oled_ConstText@x_seg)
	line	216
;ssd1306.c: 216: while(*buffer)
	goto	l7201
	line	218
	
l7195:	
;ssd1306.c: 217: {
;ssd1306.c: 218: Oled_WriteChar(*buffer, x_seg, pag);
	movf	(Oled_ConstText@x_seg),w
	movwf	(?_Oled_WriteChar)
	movf	(Oled_ConstText@pag),w
	movwf	0+(?_Oled_WriteChar)+01h
	movf	(Oled_ConstText@buffer+1),w
	movwf	btemp+1
	movf	(Oled_ConstText@buffer),w
	movwf	fsr0
	fcall	stringtab
	fcall	_Oled_WriteChar
	line	219
	
l7197:	
;ssd1306.c: 219: x_seg = x_seg + width;
	movf	(_width),w
	addwf	(Oled_ConstText@x_seg),f
	line	220
	
l7199:	
;ssd1306.c: 220: buffer++;
	incf	(Oled_ConstText@buffer),f
	skipnz
	incf	(Oled_ConstText@buffer+1),f
	line	216
	
l7201:	
	movf	(Oled_ConstText@buffer+1),w
	movwf	btemp+1
	movf	(Oled_ConstText@buffer),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2221
	goto	u2220
u2221:
	goto	l7195
u2220:
	line	222
	
l4330:	
	return
	opt stack 0
GLOBAL	__end_of_Oled_ConstText
	__end_of_Oled_ConstText:
;; =============== function _Oled_ConstText ends ============

	signat	_Oled_ConstText,12408
	global	_Oled_Init
psect	text698,local,class=CODE,delta=2
global __ptext698
__ptext698:

;; *************** function _Oled_Init *****************
;; Defined at:
;;		line 39 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Oled_Delay
;;		_Oled_Reset
;;		_Oled_Command
;;		_Oled_FillScreen
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text698
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
	line	39
	global	__size_of_Oled_Init
	__size_of_Oled_Init	equ	__end_of_Oled_Init-_Oled_Init
	
_Oled_Init:	
	opt	stack 3
; Regs used in _Oled_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	41
	
l7187:	
;ssd1306.c: 41: RA5 = 1;
	bsf	(45/8),(45)&7
	line	42
;ssd1306.c: 42: RA1 = 0;
	bcf	(41/8),(41)&7
	line	43
;ssd1306.c: 43: RA2 = 0;
	bcf	(42/8),(42)&7
	line	44
	
l7189:	
;ssd1306.c: 44: Oled_Delay();
	fcall	_Oled_Delay
	line	47
;ssd1306.c: 47: Oled_Reset();
	fcall	_Oled_Reset
	line	49
;ssd1306.c: 49: Oled_Command(0xAE);
	movlw	(0AEh)
	fcall	_Oled_Command
	line	55
;ssd1306.c: 55: Oled_Command(0x81); Oled_Command(0xCF);
	movlw	(081h)
	fcall	_Oled_Command
	movlw	(0CFh)
	fcall	_Oled_Command
	line	56
;ssd1306.c: 56: Oled_Command(0xA4);
	movlw	(0A4h)
	fcall	_Oled_Command
	line	57
;ssd1306.c: 57: Oled_Command(0xA6);
	movlw	(0A6h)
	fcall	_Oled_Command
	line	65
;ssd1306.c: 65: Oled_Command(0x20); Oled_Command(0x02);
	movlw	(020h)
	fcall	_Oled_Command
	movlw	(02h)
	fcall	_Oled_Command
	line	66
;ssd1306.c: 66: Oled_Command(0x00);
	movlw	(0)
	fcall	_Oled_Command
	line	67
;ssd1306.c: 67: Oled_Command(0x10);
	movlw	(010h)
	fcall	_Oled_Command
	line	68
;ssd1306.c: 68: Oled_Command(0xB0);
	movlw	(0B0h)
	fcall	_Oled_Command
	line	70
;ssd1306.c: 70: Oled_Command(0x40);
	movlw	(040h)
	fcall	_Oled_Command
	line	71
;ssd1306.c: 71: Oled_Command(0xA1);
	movlw	(0A1h)
	fcall	_Oled_Command
	line	72
;ssd1306.c: 72: Oled_Command(0xA8); Oled_Command(0x3F);
	movlw	(0A8h)
	fcall	_Oled_Command
	movlw	(03Fh)
	fcall	_Oled_Command
	line	73
;ssd1306.c: 73: Oled_Command(0xC8);
	movlw	(0C8h)
	fcall	_Oled_Command
	line	74
;ssd1306.c: 74: Oled_Command(0xD3); Oled_Command(0x00);
	movlw	(0D3h)
	fcall	_Oled_Command
	movlw	(0)
	fcall	_Oled_Command
	line	75
;ssd1306.c: 75: Oled_Command(0xDA); Oled_Command(0x12);
	movlw	(0DAh)
	fcall	_Oled_Command
	movlw	(012h)
	fcall	_Oled_Command
	line	77
;ssd1306.c: 77: Oled_Command(0xD5); Oled_Command(0x80);
	movlw	(0D5h)
	fcall	_Oled_Command
	movlw	(080h)
	fcall	_Oled_Command
	line	78
;ssd1306.c: 78: Oled_Command(0xD9); Oled_Command(0xF1);
	movlw	(0D9h)
	fcall	_Oled_Command
	movlw	(0F1h)
	fcall	_Oled_Command
	line	79
;ssd1306.c: 79: Oled_Command(0xDB); Oled_Command(0x40);
	movlw	(0DBh)
	fcall	_Oled_Command
	movlw	(040h)
	fcall	_Oled_Command
	line	80
;ssd1306.c: 80: Oled_Command(0x8D); Oled_Command(0x14);
	movlw	(08Dh)
	fcall	_Oled_Command
	movlw	(014h)
	fcall	_Oled_Command
	line	82
;ssd1306.c: 82: Oled_Command(0xAF);
	movlw	(0AFh)
	fcall	_Oled_Command
	line	86
	
l7191:	
;ssd1306.c: 86: Oled_FillScreen(0x00);
	movlw	(0)
	fcall	_Oled_FillScreen
	line	92
	
l4285:	
	return
	opt stack 0
GLOBAL	__end_of_Oled_Init
	__end_of_Oled_Init:
;; =============== function _Oled_Init ends ============

	signat	_Oled_Init,88
	global	_Oled_Pixel
psect	text699,local,class=CODE,delta=2
global __ptext699
__ptext699:

;; *************** function _Oled_Pixel *****************
;; Defined at:
;;		line 448 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
;; Parameters:    Size  Location     Type
;;  x               2    0[BANK0 ] int 
;;  y               2    2[BANK0 ] int 
;;  color           1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		_Oled_SetPointer
;;		_Oled_WriteRam
;; This function is called by:
;;		_Oled_Line
;; This function uses a non-reentrant model
;;
psect	text699
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
	line	448
	global	__size_of_Oled_Pixel
	__size_of_Oled_Pixel	equ	__end_of_Oled_Pixel-_Oled_Pixel
	
_Oled_Pixel:	
	opt	stack 3
; Regs used in _Oled_Pixel: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	449
	
l7167:	
;ssd1306.c: 449: if((x < 0) || (x > 127) || (y < 0) || (y > 63)){return;}
	btfsc	(Oled_Pixel@x+1),7
	goto	u2121
	goto	u2120
u2121:
	goto	l4408
u2120:
	
l7169:	
	movf	(Oled_Pixel@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(080h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2135
	movlw	low(080h)
	subwf	(Oled_Pixel@x),w
u2135:

	skipnc
	goto	u2131
	goto	u2130
u2131:
	goto	l4408
u2130:
	
l7171:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(Oled_Pixel@y+1),7
	goto	u2141
	goto	u2140
u2141:
	goto	l4408
u2140:
	
l7173:	
	movf	(Oled_Pixel@y+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(040h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2155
	movlw	low(040h)
	subwf	(Oled_Pixel@y),w
u2155:

	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l7175
u2150:
	goto	l4408
	line	450
	
l7175:	
;ssd1306.c: 450: Oled_SetPointer(x, y/8);
	movlw	08h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Oled_Pixel@y+1),w
	movwf	1+(?___awdiv)+02h
	movf	(Oled_Pixel@y),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(?_Oled_SetPointer)
	movf	(Oled_Pixel@x),w
	fcall	_Oled_SetPointer
	line	451
;ssd1306.c: 451: switch(color)
	goto	l7185
	line	453
	
l7177:	
	movlw	08h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(Oled_Pixel@y+1),w
	movwf	1+(?___awdiv)+02h
	movf	(Oled_Pixel@y),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(??_Oled_Pixel+0)+0
	movlw	07h
u2165:
	clrc
	rlf	(??_Oled_Pixel+0)+0,f
	addlw	-1
	skipz
	goto	u2165
	movlw	(_Oled_RAM)&0ffh
	addwf	0+(??_Oled_Pixel+0)+0,w
	movwf	(??_Oled_Pixel+1)+0
	movf	(Oled_Pixel@x),w
	addwf	0+(??_Oled_Pixel+1)+0,w
	movwf	(??_Oled_Pixel+2)+0
	movf	0+(??_Oled_Pixel+2)+0,w
	movwf	fsr0
	movlw	(01h)
	movwf	(??_Oled_Pixel+3)+0
	movf	(Oled_Pixel@y),w
	andlw	07h
	addlw	1
	goto	u2174
u2175:
	clrc
	rlf	(??_Oled_Pixel+3)+0,f
u2174:
	addlw	-1
	skipz
	goto	u2175
	movf	0+(??_Oled_Pixel+3)+0,w
	bsf	status, 7	;select IRP bank3
	iorwf	indf,f
	movf	(indf),w
	fcall	_Oled_WriteRam
	goto	l4408
	line	454
	
l7179:	
	movlw	08h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(Oled_Pixel@y+1),w
	movwf	1+(?___awdiv)+02h
	movf	(Oled_Pixel@y),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(??_Oled_Pixel+0)+0
	movlw	07h
u2185:
	clrc
	rlf	(??_Oled_Pixel+0)+0,f
	addlw	-1
	skipz
	goto	u2185
	movlw	(_Oled_RAM)&0ffh
	addwf	0+(??_Oled_Pixel+0)+0,w
	movwf	(??_Oled_Pixel+1)+0
	movf	(Oled_Pixel@x),w
	addwf	0+(??_Oled_Pixel+1)+0,w
	movwf	(??_Oled_Pixel+2)+0
	movf	0+(??_Oled_Pixel+2)+0,w
	movwf	fsr0
	movlw	(01h)
	movwf	(??_Oled_Pixel+3)+0
	movf	(Oled_Pixel@y),w
	andlw	07h
	addlw	1
	goto	u2194
u2195:
	clrc
	rlf	(??_Oled_Pixel+3)+0,f
u2194:
	addlw	-1
	skipz
	goto	u2195
	movf	0+(??_Oled_Pixel+3)+0,w
	xorlw	0ffh
	bsf	status, 7	;select IRP bank3
	andwf	indf,f
	movf	(indf),w
	fcall	_Oled_WriteRam
	goto	l4408
	line	455
	
l7181:	
	movlw	08h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(Oled_Pixel@y+1),w
	movwf	1+(?___awdiv)+02h
	movf	(Oled_Pixel@y),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(??_Oled_Pixel+0)+0
	movlw	07h
u2205:
	clrc
	rlf	(??_Oled_Pixel+0)+0,f
	addlw	-1
	skipz
	goto	u2205
	movlw	(_Oled_RAM)&0ffh
	addwf	0+(??_Oled_Pixel+0)+0,w
	movwf	(??_Oled_Pixel+1)+0
	movf	(Oled_Pixel@x),w
	addwf	0+(??_Oled_Pixel+1)+0,w
	movwf	(??_Oled_Pixel+2)+0
	movf	0+(??_Oled_Pixel+2)+0,w
	movwf	fsr0
	movlw	(01h)
	movwf	(??_Oled_Pixel+3)+0
	movf	(Oled_Pixel@y),w
	andlw	07h
	addlw	1
	goto	u2214
u2215:
	clrc
	rlf	(??_Oled_Pixel+3)+0,f
u2214:
	addlw	-1
	skipz
	goto	u2215
	movf	0+(??_Oled_Pixel+3)+0,w
	bsf	status, 7	;select IRP bank3
	xorwf	indf,f
	movf	(indf),w
	fcall	_Oled_WriteRam
	goto	l4408
	line	451
	
l7185:	
	movf	(Oled_Pixel@color),w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 1 to 3
; switch strategies available:
; Name         Bytes Cycles
; simple_byte    10     6 (average)
; direct_byte    31    22 (fixed)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l7177
	xorlw	2^1	; case 2
	skipnz
	goto	l7179
	xorlw	3^2	; case 3
	skipnz
	goto	l7181
	goto	l4408

	line	457
	
l4408:	
	return
	opt stack 0
GLOBAL	__end_of_Oled_Pixel
	__end_of_Oled_Pixel:
;; =============== function _Oled_Pixel ends ============

	signat	_Oled_Pixel,12408
	global	_Oled_WriteChar
psect	text700,local,class=CODE,delta=2
global __ptext700
__ptext700:

;; *************** function _Oled_WriteChar *****************
;; Defined at:
;;		line 180 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;;  seg             1   12[COMMON] unsigned char 
;;  pag             1   13[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    4[BANK0 ] unsigned char 
;;  j               2   11[BANK0 ] unsigned int 
;;  x_seg           2    9[BANK0 ] unsigned int 
;;  i               2    7[BANK0 ] unsigned int 
;;  y_pag           2    5[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         2      13       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___wmul
;;		_Oled_SetPointer
;;		_Oled_WriteRam
;; This function is called by:
;;		_Oled_ConstText
;; This function uses a non-reentrant model
;;
psect	text700
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
	line	180
	global	__size_of_Oled_WriteChar
	__size_of_Oled_WriteChar	equ	__end_of_Oled_WriteChar-_Oled_WriteChar
	
_Oled_WriteChar:	
	opt	stack 3
; Regs used in _Oled_WriteChar: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;Oled_WriteChar@c stored from wreg
	line	183
	movwf	(Oled_WriteChar@c)
	
l7131:	
;ssd1306.c: 181: uint i, j;
;ssd1306.c: 182: uint x_seg, y_pag;
;ssd1306.c: 183: x_seg = seg;
	movf	(Oled_WriteChar@seg),w
	movwf	(Oled_WriteChar@x_seg)
	clrf	(Oled_WriteChar@x_seg+1)
	line	185
;ssd1306.c: 185: font = font2;
	movf	(_font2+1),w
	movwf	(_font+1)
	movf	(_font2),w
	movwf	(_font)
	line	186
;ssd1306.c: 186: j = c - min;
	movf	(Oled_WriteChar@c),w
	movwf	(Oled_WriteChar@j)
	clrf	(Oled_WriteChar@j+1)
	movf	(_min),w
	subwf	(Oled_WriteChar@j),f
	skipc
	decf	(Oled_WriteChar@j+1),f
	line	187
	
l7133:	
;ssd1306.c: 187: j = j * (width * height);
	movf	(_height),w
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	movf	(_width),w
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(?___wmul+1)
	movf	(0+(?___wmul)),w
	movwf	(?___wmul)
	movf	(Oled_WriteChar@j+1),w
	movwf	1+(?___wmul)+02h
	movf	(Oled_WriteChar@j),w
	movwf	0+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(Oled_WriteChar@j+1)
	movf	(0+(?___wmul)),w
	movwf	(Oled_WriteChar@j)
	line	188
	
l7135:	
;ssd1306.c: 188: for(i = 0; i < j; i++){font++;}
	clrf	(Oled_WriteChar@i)
	clrf	(Oled_WriteChar@i+1)
	goto	l7139
	
l7137:	
	incf	(_font),f
	skipnz
	incf	(_font+1),f
	incf	(Oled_WriteChar@i),f
	skipnz
	incf	(Oled_WriteChar@i+1),f
	
l7139:	
	movf	(Oled_WriteChar@j+1),w
	subwf	(Oled_WriteChar@i+1),w
	skipz
	goto	u2075
	movf	(Oled_WriteChar@j),w
	subwf	(Oled_WriteChar@i),w
u2075:
	skipc
	goto	u2071
	goto	u2070
u2071:
	goto	l7137
u2070:
	line	189
	
l7141:	
;ssd1306.c: 189: for(i = 0; i < width; i++)
	clrf	(Oled_WriteChar@i)
	clrf	(Oled_WriteChar@i+1)
	goto	l7165
	line	191
	
l7143:	
;ssd1306.c: 190: {
;ssd1306.c: 191: y_pag = pag;
	movf	(Oled_WriteChar@pag),w
	movwf	(Oled_WriteChar@y_pag)
	clrf	(Oled_WriteChar@y_pag+1)
	line	192
	
l7145:	
;ssd1306.c: 192: for(j = 0; j < height; j++)
	clrf	(Oled_WriteChar@j)
	clrf	(Oled_WriteChar@j+1)
	goto	l7161
	line	194
	
l7147:	
;ssd1306.c: 193: {
;ssd1306.c: 194: if(x_seg < 128)
	movlw	high(080h)
	subwf	(Oled_WriteChar@x_seg+1),w
	movlw	low(080h)
	skipnz
	subwf	(Oled_WriteChar@x_seg),w
	skipnc
	goto	u2081
	goto	u2080
u2081:
	goto	l7155
u2080:
	line	196
	
l7149:	
;ssd1306.c: 195: {
;ssd1306.c: 196: Oled_SetPointer(x_seg, y_pag);
	movf	(Oled_WriteChar@y_pag),w
	movwf	(?_Oled_SetPointer)
	movf	(Oled_WriteChar@x_seg),w
	fcall	_Oled_SetPointer
	line	197
	
l7151:	
;ssd1306.c: 197: Oled_WriteRam(*font);
	movf	(_font+1),w
	movwf	btemp+1
	movf	(_font),w
	movwf	fsr0
	fcall	stringtab
	fcall	_Oled_WriteRam
	line	198
	
l7153:	
;ssd1306.c: 198: Oled_RAM[x_seg + (y_pag * 128)] = *font;
	movf	(_font+1),w
	movwf	btemp+1
	movf	(_font),w
	movwf	fsr0
	fcall	stringtab
	movwf	(??_Oled_WriteChar+0)+0
	movf	(Oled_WriteChar@y_pag),w
	movwf	(??_Oled_WriteChar+1)+0
	movlw	07h
u2095:
	clrc
	rlf	(??_Oled_WriteChar+1)+0,f
	addlw	-1
	skipz
	goto	u2095
	movlw	(_Oled_RAM)&0ffh
	addwf	0+(??_Oled_WriteChar+1)+0,w
	movwf	(??_Oled_WriteChar+2)+0
	movf	(Oled_WriteChar@x_seg),w
	addwf	0+(??_Oled_WriteChar+2)+0,w
	movwf	(??_Oled_WriteChar+3)+0
	movf	0+(??_Oled_WriteChar+3)+0,w
	movwf	fsr0
	movf	(??_Oled_WriteChar+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	200
	
l7155:	
;ssd1306.c: 199: }
;ssd1306.c: 200: y_pag++;
	incf	(Oled_WriteChar@y_pag),f
	skipnz
	incf	(Oled_WriteChar@y_pag+1),f
	line	201
	
l7157:	
;ssd1306.c: 201: font++;
	incf	(_font),f
	skipnz
	incf	(_font+1),f
	line	192
	
l7159:	
	incf	(Oled_WriteChar@j),f
	skipnz
	incf	(Oled_WriteChar@j+1),f
	
l7161:	
	movf	(_height),w
	movwf	(??_Oled_WriteChar+0)+0
	clrf	(??_Oled_WriteChar+0)+0+1
	movf	1+(??_Oled_WriteChar+0)+0,w
	subwf	(Oled_WriteChar@j+1),w
	skipz
	goto	u2105
	movf	0+(??_Oled_WriteChar+0)+0,w
	subwf	(Oled_WriteChar@j),w
u2105:
	skipc
	goto	u2101
	goto	u2100
u2101:
	goto	l7147
u2100:
	line	203
	
l7163:	
;ssd1306.c: 202: }
;ssd1306.c: 203: x_seg++;
	incf	(Oled_WriteChar@x_seg),f
	skipnz
	incf	(Oled_WriteChar@x_seg+1),f
	line	189
	incf	(Oled_WriteChar@i),f
	skipnz
	incf	(Oled_WriteChar@i+1),f
	
l7165:	
	movf	(_width),w
	movwf	(??_Oled_WriteChar+0)+0
	clrf	(??_Oled_WriteChar+0)+0+1
	movf	1+(??_Oled_WriteChar+0)+0,w
	subwf	(Oled_WriteChar@i+1),w
	skipz
	goto	u2115
	movf	0+(??_Oled_WriteChar+0)+0,w
	subwf	(Oled_WriteChar@i),w
u2115:
	skipc
	goto	u2111
	goto	u2110
u2111:
	goto	l7143
u2110:
	line	205
	
l4324:	
	return
	opt stack 0
GLOBAL	__end_of_Oled_WriteChar
	__end_of_Oled_WriteChar:
;; =============== function _Oled_WriteChar ends ============

	signat	_Oled_WriteChar,12408
	global	_Oled_FillScreen
psect	text701,local,class=CODE,delta=2
global __ptext701
__ptext701:

;; *************** function _Oled_FillScreen *****************
;; Defined at:
;;		line 328 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
;; Parameters:    Size  Location     Type
;;  pattern         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pattern         1    2[BANK0 ] unsigned char 
;;  k               2    0[BANK0 ] unsigned int 
;;  i               1    4[BANK0 ] unsigned char 
;;  j               1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Oled_SetPointer
;;		_Oled_WriteRam
;;		_blinktest
;; This function is called by:
;;		_main
;;		_Oled_Init
;; This function uses a non-reentrant model
;;
psect	text701
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
	line	328
	global	__size_of_Oled_FillScreen
	__size_of_Oled_FillScreen	equ	__end_of_Oled_FillScreen-_Oled_FillScreen
	
_Oled_FillScreen:	
	opt	stack 4
; Regs used in _Oled_FillScreen: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Oled_FillScreen@pattern stored from wreg
	line	330
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Oled_FillScreen@pattern)
	
l7101:	
;ssd1306.c: 329: unsigned char i, j;
;ssd1306.c: 330: uint k = 0;
	clrf	(Oled_FillScreen@k)
	clrf	(Oled_FillScreen@k+1)
	line	335
;ssd1306.c: 335: for(i = 0; i < 8; i++)
	clrf	(Oled_FillScreen@i)
	line	337
	
l7107:	
;ssd1306.c: 336: {
;ssd1306.c: 337: Oled_SetPointer(0, i);
	movf	(Oled_FillScreen@i),w
	movwf	(?_Oled_SetPointer)
	movlw	(0)
	fcall	_Oled_SetPointer
	line	340
	
l7109:	
;ssd1306.c: 340: for(j = 0; j < 128; j++)
	clrf	(Oled_FillScreen@j)
	line	342
	
l7115:	
;ssd1306.c: 341: {
;ssd1306.c: 342: Oled_WriteRam(pattern);
	movf	(Oled_FillScreen@pattern),w
	fcall	_Oled_WriteRam
	line	346
	
l7117:	
;ssd1306.c: 346: Oled_RAM[k] = pattern;
	movf	(Oled_FillScreen@k),w
	addlw	_Oled_RAM&0ffh
	movwf	fsr0
	movf	(Oled_FillScreen@pattern),w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	347
	
l7119:	
;ssd1306.c: 347: k++;
	incf	(Oled_FillScreen@k),f
	skipnz
	incf	(Oled_FillScreen@k+1),f
	line	340
	
l7121:	
	incf	(Oled_FillScreen@j),f
	
l7123:	
	movlw	(080h)
	subwf	(Oled_FillScreen@j),w
	skipc
	goto	u2051
	goto	u2050
u2051:
	goto	l7115
u2050:
	line	350
	
l7125:	
;ssd1306.c: 349: }
;ssd1306.c: 350: blinktest();
	fcall	_blinktest
	line	335
	
l7127:	
	incf	(Oled_FillScreen@i),f
	
l7129:	
	movlw	(08h)
	subwf	(Oled_FillScreen@i),w
	skipc
	goto	u2061
	goto	u2060
u2061:
	goto	l7107
u2060:
	line	355
	
l4370:	
	return
	opt stack 0
GLOBAL	__end_of_Oled_FillScreen
	__end_of_Oled_FillScreen:
;; =============== function _Oled_FillScreen ends ============

	signat	_Oled_FillScreen,4216
	global	_dht11_measure
psect	text702,local,class=CODE,delta=2
global __ptext702
__ptext702:

;; *************** function _dht11_measure *****************
;; Defined at:
;;		line 5 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\dht11.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  time            2    7[COMMON] short 
;;  i               1   13[COMMON] unsigned char 
;;  i               1   12[COMMON] unsigned char 
;;  i               1   11[COMMON] unsigned char 
;;  i               1    9[COMMON] unsigned char 
;;  counter         1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         7       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ClearLCDScreen
;;		_WriteStringToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text702
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\dht11.c"
	line	5
	global	__size_of_dht11_measure
	__size_of_dht11_measure	equ	__end_of_dht11_measure-_dht11_measure
	
_dht11_measure:	
	opt	stack 4
; Regs used in _dht11_measure: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	6
	
l6991:	
;dht11.c: 6: for(unsigned char i=0;i<40;i++) dht11_data[i]=0;
	clrf	(dht11_measure@i)
	
l6997:	
	movf	(dht11_measure@i),w
	addlw	_dht11_data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	
l6999:	
	incf	(dht11_measure@i),f
	
l7001:	
	movlw	(028h)
	subwf	(dht11_measure@i),w
	skipc
	goto	u1851
	goto	u1850
u1851:
	goto	l6997
u1850:
	
l1168:	
	line	8
;dht11.c: 8: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	9
;dht11.c: 9: TRISD2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1090/8)^080h,(1090)&7
	line	10
	
l7003:	
;dht11.c: 10: _delay((unsigned long)((20)*(16000000/4000.0)));
	opt asmopt_off
movlw	104
movwf	((??_dht11_measure+0)+0+1),f
	movlw	228
movwf	((??_dht11_measure+0)+0),f
u2547:
	decfsz	((??_dht11_measure+0)+0),f
	goto	u2547
	decfsz	((??_dht11_measure+0)+0+1),f
	goto	u2547
	clrwdt
opt asmopt_on

	line	11
	
l7005:	
;dht11.c: 11: TRISD2 =1 ;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1090/8)^080h,(1090)&7
	line	13
	
l7007:	
;dht11.c: 13: unsigned char counter=0;
	clrf	(dht11_measure@counter)
	line	16
;dht11.c: 16: while(RD2)
	goto	l1169
	line	19
	
l7009:	
;dht11.c: 17: {
;dht11.c: 19: counter++;
	incf	(dht11_measure@counter),f
	line	20
	
l7011:	
;dht11.c: 20: _delay((unsigned long)((1)*(16000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	22
	
l7013:	
;dht11.c: 22: if(counter==80)
	movf	(dht11_measure@counter),w
	xorlw	050h
	skipz
	goto	u1861
	goto	u1860
u1861:
	goto	l1169
u1860:
	line	24
	
l7015:	
;dht11.c: 23: {
;dht11.c: 24: ClearLCDScreen();
	fcall	_ClearLCDScreen
	line	25
	
l7017:	
;dht11.c: 25: WriteStringToLCD(" eighty reached");
	movlw	low(STR_3|8000h)
	movwf	(?_WriteStringToLCD)
	movlw	high(STR_3|8000h)
	movwf	((?_WriteStringToLCD))+1
	fcall	_WriteStringToLCD
	line	26
	
l7019:	
;dht11.c: 26: return 0;
	movlw	(0)
	goto	l1172
	line	28
	
l1169:	
	line	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(66/8),(66)&7
	goto	u1871
	goto	u1870
u1871:
	goto	l7009
u1870:
	goto	l1174
	line	33
	
l7023:	
;dht11.c: 32: {
;dht11.c: 33: counter++;
	incf	(dht11_measure@counter),f
	line	34
	
l7025:	
;dht11.c: 34: _delay((unsigned long)((1)*(16000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	36
	
l7027:	
;dht11.c: 36: if(counter==180)
	movf	(dht11_measure@counter),w
	xorlw	0B4h
	skipz
	goto	u1881
	goto	u1880
u1881:
	goto	l1174
u1880:
	goto	l7019
	line	38
	
l1174:	
	line	31
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(66/8),(66)&7
	goto	u1891
	goto	u1890
u1891:
	goto	l7023
u1890:
	goto	l1178
	line	43
	
l7033:	
;dht11.c: 42: {
;dht11.c: 43: counter++;
	incf	(dht11_measure@counter),f
	line	44
	
l7035:	
;dht11.c: 44: _delay((unsigned long)((1)*(16000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	46
	
l7037:	
;dht11.c: 46: if(counter==80)
	movf	(dht11_measure@counter),w
	xorlw	050h
	skipz
	goto	u1901
	goto	u1900
u1901:
	goto	l1178
u1900:
	goto	l7019
	line	48
	
l1178:	
	line	41
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(66/8),(66)&7
	goto	u1911
	goto	u1910
u1911:
	goto	l7033
u1910:
	line	51
	
l7043:	
;dht11.c: 48: }
;dht11.c: 51: for(unsigned char i=0;i<40;i++)
	clrf	(dht11_measure@i_629)
	line	54
	
l1184:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(8),(2)&7
	goto	u1921
	goto	u1920
u1921:
	goto	l1184
u1920:
	
l1186:	
	line	58
;dht11.c: 58: T1CKPS0=1;
	bsf	(132/8),(132)&7
	line	59
	
l7049:	
;dht11.c: 59: TMR1L=0x00;
	clrf	(14)	;volatile
	line	60
;dht11.c: 60: TMR1H=0x00;
	clrf	(15)	;volatile
	line	61
	
l7051:	
;dht11.c: 61: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	64
;dht11.c: 64: while((PORTD & (1<<2)));
	
l1187:	
	btfsc	(8),(2)&7
	goto	u1931
	goto	u1930
u1931:
	goto	l1187
u1930:
	
l1189:	
	line	66
;dht11.c: 66: TMR1ON=0;
	bcf	(128/8),(128)&7
	line	69
	
l7053:	
;dht11.c: 69: short time=TMR1L;
	movf	(14),w	;volatile
	movwf	(dht11_measure@time)
	clrf	(dht11_measure@time+1)
	line	70
	
l7055:	
;dht11.c: 70: time=time | (TMR1H<<8);
	movf	(15),w	;volatile
	movwf	(??_dht11_measure+0)+0
	clrf	(??_dht11_measure+0)+0+1
	movlw	08h
	movwf	btemp+1
u1945:
	clrc
	rlf	(??_dht11_measure+0)+0,f
	rlf	(??_dht11_measure+0)+1,f
	decfsz	btemp+1,f
	goto	u1945
	movf	0+(??_dht11_measure+0)+0,w
	iorwf	(dht11_measure@time),f
	movf	1+(??_dht11_measure+0)+0,w
	iorwf	(dht11_measure@time+1),f
	line	72
	
l7057:	
;dht11.c: 72: time=time*2;
	clrc
	rlf	(dht11_measure@time),f
	rlf	(dht11_measure@time+1),f
	line	74
	
l7059:	
;dht11.c: 74: if(time>55 && time <70)
	movf	(dht11_measure@time+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(038h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1955
	movlw	low(038h)
	subwf	(dht11_measure@time),w
u1955:

	skipc
	goto	u1951
	goto	u1950
u1951:
	goto	l7065
u1950:
	
l7061:	
	movf	(dht11_measure@time+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(046h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1965
	movlw	low(046h)
	subwf	(dht11_measure@time),w
u1965:

	skipnc
	goto	u1961
	goto	u1960
u1961:
	goto	l7065
u1960:
	line	77
	
l7063:	
;dht11.c: 75: {
;dht11.c: 77: dht11_data[i]=0;
	movf	(dht11_measure@i_629),w
	addlw	_dht11_data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	78
;dht11.c: 78: }
	goto	l7069
	line	79
	
l7065:	
;dht11.c: 79: else if(time>150)
	movf	(dht11_measure@time+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(097h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1975
	movlw	low(097h)
	subwf	(dht11_measure@time),w
u1975:

	skipc
	goto	u1971
	goto	u1970
u1971:
	goto	l7069
u1970:
	line	82
	
l7067:	
;dht11.c: 80: {
;dht11.c: 82: dht11_data[i]=1;
	movf	(dht11_measure@i_629),w
	addlw	_dht11_data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	incf	indf,f
	line	51
	
l7069:	
	incf	(dht11_measure@i_629),f
	
l7071:	
	movlw	(028h)
	subwf	(dht11_measure@i_629),w
	skipc
	goto	u1981
	goto	u1980
u1981:
	goto	l1184
u1980:
	line	87
	
l7073:	
;dht11.c: 84: }
;dht11.c: 85: }
;dht11.c: 87: dht11_rh=dht11_temp=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_dht11_temp)
	clrf	(_dht11_rh)
	line	89
;dht11.c: 89: for(unsigned char i=0;i<8;i++)
	clrf	(dht11_measure@i_631)
	line	91
	
l7079:	
;dht11.c: 90: {
;dht11.c: 91: if(dht11_data[i]==1)
	movf	(dht11_measure@i_631),w
	addlw	_dht11_data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	decf	indf,w
	skipz
	goto	u1991
	goto	u1990
u1991:
	goto	l7083
u1990:
	line	92
	
l7081:	
;dht11.c: 92: dht11_rh|=(1<<(7-i));
	movlw	(01h)
	movwf	(??_dht11_measure+0)+0
	movf	(dht11_measure@i_631),w
	sublw	07h
	addlw	1
	goto	u2004
u2005:
	clrc
	rlf	(??_dht11_measure+0)+0,f
u2004:
	addlw	-1
	skipz
	goto	u2005
	movf	0+(??_dht11_measure+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dht11_rh),f
	line	89
	
l7083:	
	incf	(dht11_measure@i_631),f
	movlw	(08h)
	subwf	(dht11_measure@i_631),w
	skipc
	goto	u2011
	goto	u2010
u2011:
	goto	l7079
u2010:
	line	95
	
l7085:	
;dht11.c: 93: }
;dht11.c: 95: for(unsigned char i=0;i<8;i++)
	clrf	(dht11_measure@i_632)
	line	97
	
l7091:	
;dht11.c: 96: {
;dht11.c: 97: if(dht11_data[16+i]==1)
	movf	(dht11_measure@i_632),w
	addlw	_dht11_data+010h&0ffh
	movwf	fsr0
	decf	indf,w
	skipz
	goto	u2021
	goto	u2020
u2021:
	goto	l7095
u2020:
	line	98
	
l7093:	
;dht11.c: 98: dht11_temp|=(1<<(7-i));
	movlw	(01h)
	movwf	(??_dht11_measure+0)+0
	movf	(dht11_measure@i_632),w
	sublw	07h
	addlw	1
	goto	u2034
u2035:
	clrc
	rlf	(??_dht11_measure+0)+0,f
u2034:
	addlw	-1
	skipz
	goto	u2035
	movf	0+(??_dht11_measure+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_dht11_temp),f
	line	95
	
l7095:	
	incf	(dht11_measure@i_632),f
	movlw	(08h)
	subwf	(dht11_measure@i_632),w
	skipc
	goto	u2041
	goto	u2040
u2041:
	goto	l7091
u2040:
	line	101
	
l7097:	
;dht11.c: 99: }
;dht11.c: 101: return 1;
	movlw	(01h)
	line	102
	
l1172:	
	return
	opt stack 0
GLOBAL	__end_of_dht11_measure
	__end_of_dht11_measure:
;; =============== function _dht11_measure ends ============

	signat	_dht11_measure,89
	global	_Oled_SetPointer
psect	text703,local,class=CODE,delta=2
global __ptext703
__ptext703:

;; *************** function _Oled_SetPointer *****************
;; Defined at:
;;		line 142 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
;; Parameters:    Size  Location     Type
;;  seg             1    wreg     unsigned char 
;;  pag             1    8[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  seg             1   11[COMMON] unsigned char 
;;  hig_column      1   10[COMMON] unsigned char 
;;  low_column      1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Oled_Command
;; This function is called by:
;;		_Oled_WriteChar
;;		_Oled_FillScreen
;;		_Oled_Pixel
;; This function uses a non-reentrant model
;;
psect	text703
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
	line	142
	global	__size_of_Oled_SetPointer
	__size_of_Oled_SetPointer	equ	__end_of_Oled_SetPointer-_Oled_SetPointer
	
_Oled_SetPointer:	
	opt	stack 3
; Regs used in _Oled_SetPointer: [wreg+status,2+status,0+pclath+cstack]
;Oled_SetPointer@seg stored from wreg
	line	144
	movwf	(Oled_SetPointer@seg)
	
l6971:	
;ssd1306.c: 143: unsigned char low_column, hig_column;
;ssd1306.c: 144: low_column = (seg & 0b00001111);
	movf	(Oled_SetPointer@seg),w
	movwf	(Oled_SetPointer@low_column)
	
l6973:	
	movlw	(0Fh)
	andwf	(Oled_SetPointer@low_column),f
	line	145
	
l6975:	
;ssd1306.c: 145: hig_column = (seg & 0b11110000)>>4;
	swapf	(Oled_SetPointer@seg),w
	andlw	(0ffh shr 4) & 0ffh
	movwf	(Oled_SetPointer@hig_column)
	
l6977:	
	movlw	(0Fh)
	andwf	(Oled_SetPointer@hig_column),f
	line	146
	
l6979:	
;ssd1306.c: 146: hig_column = hig_column | 0b00010000;
	bsf	(Oled_SetPointer@hig_column)+(4/8),(4)&7
	line	147
	
l6981:	
;ssd1306.c: 147: pag = (pag & 0b00000111);
	movlw	(07h)
	andwf	(Oled_SetPointer@pag),f
	line	148
	
l6983:	
;ssd1306.c: 148: pag = (pag | 0b10110000);
	movlw	(0B0h)
	iorwf	(Oled_SetPointer@pag),f
	line	149
	
l6985:	
;ssd1306.c: 149: Oled_Command(low_column);
	movf	(Oled_SetPointer@low_column),w
	fcall	_Oled_Command
	line	150
	
l6987:	
;ssd1306.c: 150: Oled_Command(hig_column);
	movf	(Oled_SetPointer@hig_column),w
	fcall	_Oled_Command
	line	151
	
l6989:	
;ssd1306.c: 151: Oled_Command(pag);
	movf	(Oled_SetPointer@pag),w
	fcall	_Oled_Command
	line	152
	
l4308:	
	return
	opt stack 0
GLOBAL	__end_of_Oled_SetPointer
	__end_of_Oled_SetPointer:
;; =============== function _Oled_SetPointer ends ============

	signat	_Oled_SetPointer,8312
	global	_Oled_Reset
psect	text704,local,class=CODE,delta=2
global __ptext704
__ptext704:

;; *************** function _Oled_Reset *****************
;; Defined at:
;;		line 109 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Oled_Delay
;; This function is called by:
;;		_Oled_Init
;; This function uses a non-reentrant model
;;
psect	text704
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
	line	109
	global	__size_of_Oled_Reset
	__size_of_Oled_Reset	equ	__end_of_Oled_Reset-_Oled_Reset
	
_Oled_Reset:	
	opt	stack 5
; Regs used in _Oled_Reset: [wreg+status,2+status,0+pclath+cstack]
	line	110
	
l6965:	
;ssd1306.c: 110: RA2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	line	111
	
l6967:	
;ssd1306.c: 111: Oled_Delay(); Oled_Delay();
	fcall	_Oled_Delay
	fcall	_Oled_Delay
	line	112
	
l6969:	
;ssd1306.c: 112: RA2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	line	113
;ssd1306.c: 113: Oled_Delay();
	fcall	_Oled_Delay
	line	114
	
l4293:	
	return
	opt stack 0
GLOBAL	__end_of_Oled_Reset
	__end_of_Oled_Reset:
;; =============== function _Oled_Reset ends ============

	signat	_Oled_Reset,88
	global	_InitLCD
psect	text705,local,class=CODE,delta=2
global __ptext705
__ptext705:

;; *************** function _InitLCD *****************
;; Defined at:
;;		line 45 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    3[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ToggleEpinOfLCD
;;		_WriteCommandToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text705
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\LCD.c"
	line	45
	global	__size_of_InitLCD
	__size_of_InitLCD	equ	__end_of_InitLCD-_InitLCD
	
_InitLCD:	
	opt	stack 5
; Regs used in _InitLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	48
	
l6911:	
;LCD.c: 46: int i;
;LCD.c: 48: RD0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	49
;LCD.c: 49: RD1 = 0;
	bcf	(65/8),(65)&7
	line	50
;LCD.c: 50: RD4 = 0;
	bcf	(68/8),(68)&7
	line	51
;LCD.c: 51: RD5 = 0;
	bcf	(69/8),(69)&7
	line	52
;LCD.c: 52: RD6 = 0;
	bcf	(70/8),(70)&7
	line	53
;LCD.c: 53: RD7 = 0;
	bcf	(71/8),(71)&7
	line	54
;LCD.c: 54: TRISD0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1088/8)^080h,(1088)&7
	line	55
;LCD.c: 55: TRISD1 = 0;
	bcf	(1089/8)^080h,(1089)&7
	line	56
;LCD.c: 56: TRISD4 = 0;
	bcf	(1092/8)^080h,(1092)&7
	line	57
;LCD.c: 57: TRISD5 = 0;
	bcf	(1093/8)^080h,(1093)&7
	line	58
;LCD.c: 58: TRISD6 = 0;
	bcf	(1094/8)^080h,(1094)&7
	line	59
;LCD.c: 59: TRISD7 = 0;
	bcf	(1095/8)^080h,(1095)&7
	line	64
	
l6913:	
;LCD.c: 64: PORTD &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(8),f	;volatile
	line	65
;LCD.c: 65: PORTD |= 0x30;
	movlw	(030h)
	iorwf	(8),f	;volatile
	line	66
	
l6915:	
;LCD.c: 66: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	69
	
l6917:	
;LCD.c: 69: for(i=0;i<500;i++);
	clrf	(InitLCD@i)
	clrf	(InitLCD@i+1)
	
l6923:	
	incf	(InitLCD@i),f
	skipnz
	incf	(InitLCD@i+1),f
	
l6925:	
	movf	(InitLCD@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1825
	movlw	low(01F4h)
	subwf	(InitLCD@i),w
u1825:

	skipc
	goto	u1821
	goto	u1820
u1821:
	goto	l6923
u1820:
	line	70
	
l6927:	
;LCD.c: 70: PORTD &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	line	71
;LCD.c: 71: PORTD |= 0x30;
	movlw	(030h)
	iorwf	(8),f	;volatile
	line	72
	
l6929:	
;LCD.c: 72: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	76
	
l6931:	
;LCD.c: 76: PORTD &= 0x0F;
	movlw	(0Fh)
	andwf	(8),f	;volatile
	line	77
	
l6933:	
;LCD.c: 77: PORTD |= 0x30;
	movlw	(030h)
	iorwf	(8),f	;volatile
	line	78
	
l6935:	
;LCD.c: 78: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	79
	
l6937:	
;LCD.c: 79: for(i=0;i<500;i++);
	clrf	(InitLCD@i)
	clrf	(InitLCD@i+1)
	
l6943:	
	incf	(InitLCD@i),f
	skipnz
	incf	(InitLCD@i+1),f
	
l6945:	
	movf	(InitLCD@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1835
	movlw	low(01F4h)
	subwf	(InitLCD@i),w
u1835:

	skipc
	goto	u1831
	goto	u1830
u1831:
	goto	l6943
u1830:
	line	82
	
l6947:	
;LCD.c: 82: PORTD &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	line	83
	
l6949:	
;LCD.c: 83: PORTD |= 0x20;
	bsf	(8)+(5/8),(5)&7	;volatile
	line	84
	
l6951:	
;LCD.c: 84: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	85
	
l6953:	
;LCD.c: 85: for(i=0;i<500;i++);
	clrf	(InitLCD@i)
	clrf	(InitLCD@i+1)
	
l6959:	
	incf	(InitLCD@i),f
	skipnz
	incf	(InitLCD@i+1),f
	
l6961:	
	movf	(InitLCD@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1845
	movlw	low(01F4h)
	subwf	(InitLCD@i),w
u1845:

	skipc
	goto	u1841
	goto	u1840
u1841:
	goto	l6959
u1840:
	line	88
	
l6963:	
;LCD.c: 88: WriteCommandToLCD(0x28);
	movlw	(028h)
	fcall	_WriteCommandToLCD
	line	89
;LCD.c: 89: WriteCommandToLCD(0x0c);
	movlw	(0Ch)
	fcall	_WriteCommandToLCD
	line	90
;LCD.c: 90: WriteCommandToLCD(0x01);
	movlw	(01h)
	fcall	_WriteCommandToLCD
	line	91
;LCD.c: 91: WriteCommandToLCD(0x06);
	movlw	(06h)
	fcall	_WriteCommandToLCD
	line	92
	
l2431:	
	return
	opt stack 0
GLOBAL	__end_of_InitLCD
	__end_of_InitLCD:
;; =============== function _InitLCD ends ============

	signat	_InitLCD,88
	global	_GetKey
psect	text706,local,class=CODE,delta=2
global __ptext706
__ptext706:

;; *************** function _GetKey *****************
;; Defined at:
;;		line 103 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\Keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key             1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_READ_SWITCHES
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text706
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\Keypad.c"
	line	103
	global	__size_of_GetKey
	__size_of_GetKey	equ	__end_of_GetKey-_GetKey
	
_GetKey:	
	opt	stack 6
; Regs used in _GetKey: [wreg+pclath+cstack]
	line	104
	
l6903:	
	line	107
	
l6905:	
;Keypad.c: 107: key = READ_SWITCHES();
	fcall	_READ_SWITCHES
	movwf	(GetKey@key)
	line	109
	
l6907:	
;Keypad.c: 109: return key;
	movf	(GetKey@key),w
	line	110
	
l1841:	
	return
	opt stack 0
GLOBAL	__end_of_GetKey
	__end_of_GetKey:
;; =============== function _GetKey ends ============

	signat	_GetKey,89
	global	_WriteStringToLCD
psect	text707,local,class=CODE,delta=2
global __ptext707
__ptext707:

;; *************** function _WriteStringToLCD *****************
;; Defined at:
;;		line 96 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\LCD.c"
;; Parameters:    Size  Location     Type
;;  s               2    3[COMMON] PTR const unsigned char 
;;		 -> STR_14(5), STR_13(6), STR_12(17), STR_11(8), 
;;		 -> STR_10(12), STR_9(10), STR_3(16), STR_2(17), 
;;		 -> STR_1(14), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_WriteDataToLCD
;; This function is called by:
;;		_dht11_measure
;;		_main
;; This function uses a non-reentrant model
;;
psect	text707
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\LCD.c"
	line	96
	global	__size_of_WriteStringToLCD
	__size_of_WriteStringToLCD	equ	__end_of_WriteStringToLCD-_WriteStringToLCD
	
_WriteStringToLCD:	
	opt	stack 4
; Regs used in _WriteStringToLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	97
	
l6895:	
;LCD.c: 97: while(*s)
	goto	l6901
	line	98
	
l6897:	
;LCD.c: 98: WriteDataToLCD(*s++);
	movf	(WriteStringToLCD@s+1),w
	movwf	btemp+1
	movf	(WriteStringToLCD@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_WriteDataToLCD
	
l6899:	
	incf	(WriteStringToLCD@s),f
	skipnz
	incf	(WriteStringToLCD@s+1),f
	line	97
	
l6901:	
	movf	(WriteStringToLCD@s+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(WriteStringToLCD@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u1811
	goto	u1810
u1811:
	goto	l6897
u1810:
	line	99
	
l2437:	
	return
	opt stack 0
GLOBAL	__end_of_WriteStringToLCD
	__end_of_WriteStringToLCD:
;; =============== function _WriteStringToLCD ends ============

	signat	_WriteStringToLCD,4216
	global	_ClearLCDScreen
psect	text708,local,class=CODE,delta=2
global __ptext708
__ptext708:

;; *************** function _ClearLCDScreen *****************
;; Defined at:
;;		line 103 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_WriteCommandToLCD
;; This function is called by:
;;		_dht11_measure
;;		_main
;; This function uses a non-reentrant model
;;
psect	text708
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\LCD.c"
	line	103
	global	__size_of_ClearLCDScreen
	__size_of_ClearLCDScreen	equ	__end_of_ClearLCDScreen-_ClearLCDScreen
	
_ClearLCDScreen:	
	opt	stack 4
; Regs used in _ClearLCDScreen: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	104
	
l6891:	
;LCD.c: 104: WriteCommandToLCD(0x01);
	movlw	(01h)
	fcall	_WriteCommandToLCD
	line	105
	
l6893:	
;LCD.c: 105: _delay((unsigned long)((2)*(16000000/4000.0)));
	opt asmopt_off
movlw	11
movwf	((??_ClearLCDScreen+0)+0+1),f
	movlw	98
movwf	((??_ClearLCDScreen+0)+0),f
u2557:
	decfsz	((??_ClearLCDScreen+0)+0),f
	goto	u2557
	decfsz	((??_ClearLCDScreen+0)+0+1),f
	goto	u2557
	clrwdt
opt asmopt_on

	line	106
	
l2440:	
	return
	opt stack 0
GLOBAL	__end_of_ClearLCDScreen
	__end_of_ClearLCDScreen:
;; =============== function _ClearLCDScreen ends ============

	signat	_ClearLCDScreen,88
	global	_blinktest
psect	text709,local,class=CODE,delta=2
global __ptext709
__ptext709:

;; *************** function _blinktest *****************
;; Defined at:
;;		line 359 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 160/100
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Oled_FillScreen
;; This function uses a non-reentrant model
;;
psect	text709
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
	line	359
	global	__size_of_blinktest
	__size_of_blinktest	equ	__end_of_blinktest-_blinktest
	
_blinktest:	
	opt	stack 6
; Regs used in _blinktest: [wreg]
	line	360
;ssd1306.c: 360: while(1){
	
l4373:	
	line	361
;ssd1306.c: 361: RA0 =0;
	bcf	(40/8),(40)&7
	line	362
	
l6885:	
;ssd1306.c: 362: _delay((unsigned long)((300)*(16000000/4000.0)));
	opt asmopt_off
movlw  7
movwf	((??_blinktest+0)+0+2),f
movlw	17
movwf	((??_blinktest+0)+0+1),f
	movlw	109
movwf	((??_blinktest+0)+0),f
u2567:
	decfsz	((??_blinktest+0)+0),f
	goto	u2567
	decfsz	((??_blinktest+0)+0+1),f
	goto	u2567
	decfsz	((??_blinktest+0)+0+2),f
	goto	u2567
	clrwdt
opt asmopt_on

	line	363
	
l6887:	
;ssd1306.c: 363: RA0 =1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	line	364
;ssd1306.c: 364: _delay((unsigned long)((300)*(16000000/4000.0)));
	opt asmopt_off
movlw  7
movwf	((??_blinktest+0)+0+2),f
movlw	17
movwf	((??_blinktest+0)+0+1),f
	movlw	109
movwf	((??_blinktest+0)+0),f
u2577:
	decfsz	((??_blinktest+0)+0),f
	goto	u2577
	decfsz	((??_blinktest+0)+0+1),f
	goto	u2577
	decfsz	((??_blinktest+0)+0+2),f
	goto	u2577
	clrwdt
opt asmopt_on

	line	365
	
l6889:	
;ssd1306.c: 365: RA0 =0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	goto	l4373
	return
	opt stack 0
psect	text710,local,class=CODE,delta=2
global __ptext710
__ptext710:
	line	367
GLOBAL	__end_of_blinktest
	__end_of_blinktest:
;; =============== function _blinktest ends ============

	signat	_blinktest,88
	global	_Oled_WriteRam

;; *************** function _Oled_WriteRam *****************
;; Defined at:
;;		line 130 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/100
;;		On exit  : 60/100
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_WriteSPI
;; This function is called by:
;;		_Oled_WriteChar
;;		_Oled_FillScreen
;;		_Oled_Pixel
;; This function uses a non-reentrant model
;;
psect	text710
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
	line	130
	global	__size_of_Oled_WriteRam
	__size_of_Oled_WriteRam	equ	__end_of_Oled_WriteRam-_Oled_WriteRam
	
_Oled_WriteRam:	
	opt	stack 4
; Regs used in _Oled_WriteRam: [wreg+status,2+status,0+pclath+cstack]
;Oled_WriteRam@dat stored from wreg
	movwf	(Oled_WriteRam@dat)
	line	131
	
l6881:	
;ssd1306.c: 131: RA5 = 0; RA1 = 1;
	bcf	(45/8),(45)&7
	bsf	(41/8),(41)&7
	line	132
;ssd1306.c: 132: while(WriteSPI(dat));
	
l6883:	
	movf	(Oled_WriteRam@dat),w
	fcall	_WriteSPI
	movf	((1+(?_WriteSPI))),w
	iorwf	((0+(?_WriteSPI))),w
	skipz
	goto	u1801
	goto	u1800
u1801:
	goto	l6883
u1800:
	
l4304:	
	line	133
;ssd1306.c: 133: RA5 = 1;
	bsf	(45/8),(45)&7
	line	134
	
l4305:	
	return
	opt stack 0
GLOBAL	__end_of_Oled_WriteRam
	__end_of_Oled_WriteRam:
;; =============== function _Oled_WriteRam ends ============

	signat	_Oled_WriteRam,4216
	global	_Oled_Command
psect	text711,local,class=CODE,delta=2
global __ptext711
__ptext711:

;; *************** function _Oled_Command *****************
;; Defined at:
;;		line 120 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_WriteSPI
;; This function is called by:
;;		_Oled_Init
;;		_Oled_SetPointer
;; This function uses a non-reentrant model
;;
psect	text711
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
	line	120
	global	__size_of_Oled_Command
	__size_of_Oled_Command	equ	__end_of_Oled_Command-_Oled_Command
	
_Oled_Command:	
	opt	stack 3
; Regs used in _Oled_Command: [wreg+status,2+status,0+pclath+cstack]
;Oled_Command@cmd stored from wreg
	movwf	(Oled_Command@cmd)
	line	121
	
l6877:	
;ssd1306.c: 121: RA5 = 0; RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7
	bcf	(41/8),(41)&7
	line	122
;ssd1306.c: 122: while(WriteSPI(cmd));
	
l6879:	
	movf	(Oled_Command@cmd),w
	fcall	_WriteSPI
	movf	((1+(?_WriteSPI))),w
	iorwf	((0+(?_WriteSPI))),w
	skipz
	goto	u1791
	goto	u1790
u1791:
	goto	l6879
u1790:
	
l4298:	
	line	123
;ssd1306.c: 123: RA5 = 1;
	bsf	(45/8),(45)&7
	line	124
	
l4299:	
	return
	opt stack 0
GLOBAL	__end_of_Oled_Command
	__end_of_Oled_Command:
;; =============== function _Oled_Command ends ============

	signat	_Oled_Command,4216
	global	_uart_string
psect	text712,local,class=CODE,delta=2
global __ptext712
__ptext712:

;; *************** function _uart_string *****************
;; Defined at:
;;		line 18 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\uart_config.c"
;; Parameters:    Size  Location     Type
;;  s               2    1[COMMON] PTR const unsigned char 
;;		 -> STR_16(4), STR_15(4), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uart_tx
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text712
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\uart_config.c"
	line	18
	global	__size_of_uart_string
	__size_of_uart_string	equ	__end_of_uart_string-_uart_string
	
_uart_string:	
	opt	stack 6
; Regs used in _uart_string: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	20
	
l6869:	
;uart_config.c: 20: while(*s)
	goto	l6875
	line	21
	
l6871:	
;uart_config.c: 21: uart_tx(*s++);
	movf	(uart_string@s+1),w
	movwf	btemp+1
	movf	(uart_string@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_uart_tx
	
l6873:	
	incf	(uart_string@s),f
	skipnz
	incf	(uart_string@s+1),f
	line	20
	
l6875:	
	movf	(uart_string@s+1),w
	movwf	btemp+1
	movf	(uart_string@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u1781
	goto	u1780
u1781:
	goto	l6871
u1780:
	line	22
	
l5048:	
	return
	opt stack 0
GLOBAL	__end_of_uart_string
	__end_of_uart_string:
;; =============== function _uart_string ends ============

	signat	_uart_string,4216
	global	_Oled_Delay
psect	text713,local,class=CODE,delta=2
global __ptext713
__ptext713:

;; *************** function _Oled_Delay *****************
;; Defined at:
;;		line 98 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Oled_Init
;;		_Oled_Reset
;; This function uses a non-reentrant model
;;
psect	text713
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
	line	98
	global	__size_of_Oled_Delay
	__size_of_Oled_Delay	equ	__end_of_Oled_Delay-_Oled_Delay
	
_Oled_Delay:	
	opt	stack 7
; Regs used in _Oled_Delay: [wreg+status,2+status,0]
	line	100
	
l6857:	
;ssd1306.c: 99: uint i;
;ssd1306.c: 100: for(i = 0; i < 500; i++){
	clrf	(Oled_Delay@i)
	clrf	(Oled_Delay@i+1)
	line	101
	
l6863:	
;ssd1306.c: 101: _delay((unsigned long)((1)*(16000000/4000.0)));
	opt asmopt_off
movlw	6
movwf	((??_Oled_Delay+0)+0+1),f
	movlw	48
movwf	((??_Oled_Delay+0)+0),f
u2587:
	decfsz	((??_Oled_Delay+0)+0),f
	goto	u2587
	decfsz	((??_Oled_Delay+0)+0+1),f
	goto	u2587
	clrwdt
opt asmopt_on

	line	100
	
l6865:	
	incf	(Oled_Delay@i),f
	skipnz
	incf	(Oled_Delay@i+1),f
	
l6867:	
	movlw	high(01F4h)
	subwf	(Oled_Delay@i+1),w
	movlw	low(01F4h)
	skipnz
	subwf	(Oled_Delay@i),w
	skipc
	goto	u1771
	goto	u1770
u1771:
	goto	l6863
u1770:
	line	103
	
l4290:	
	return
	opt stack 0
GLOBAL	__end_of_Oled_Delay
	__end_of_Oled_Delay:
;; =============== function _Oled_Delay ends ============

	signat	_Oled_Delay,88
	global	_READ_SWITCHES
psect	text714,local,class=CODE,delta=2
global __ptext714
__ptext714:

;; *************** function _READ_SWITCHES *****************
;; Defined at:
;;		line 35 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\Keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_GetKey
;; This function uses a non-reentrant model
;;
psect	text714
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\Keypad.c"
	line	35
	global	__size_of_READ_SWITCHES
	__size_of_READ_SWITCHES	equ	__end_of_READ_SWITCHES-_READ_SWITCHES
	
_READ_SWITCHES:	
	opt	stack 6
; Regs used in _READ_SWITCHES: [wreg]
	line	37
	
l6755:	
;Keypad.c: 37: RB0 = 0; RB1 = 1; RB2 = 1; RB3 = 1;
	bcf	(48/8),(48)&7
	bsf	(49/8),(49)&7
	bsf	(50/8),(50)&7
	bsf	(51/8),(51)&7
	line	45
;Keypad.c: 45: if (RB4 == 0) { _delay((unsigned long)((250)*(16000000/4000.0))); while (RB4==0); return '7'; }
	btfsc	(52/8),(52)&7
	goto	u1451
	goto	u1450
u1451:
	goto	l1774
u1450:
	
l6757:	
	opt asmopt_off
movlw  6
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	14
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	176
movwf	((??_READ_SWITCHES+0)+0),f
u2597:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u2597
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u2597
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u2597
opt asmopt_on

	
l1775:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u1461
	goto	u1460
u1461:
	goto	l1775
u1460:
	
l6759:	
	movlw	(037h)
	goto	l1778
	
l1774:	
	line	46
;Keypad.c: 46: if (RB5 == 0) { _delay((unsigned long)((250)*(16000000/4000.0))); while (RB5==0); return '8'; }
	btfsc	(53/8),(53)&7
	goto	u1471
	goto	u1470
u1471:
	goto	l1779
u1470:
	
l6763:	
	opt asmopt_off
movlw  6
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	14
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	176
movwf	((??_READ_SWITCHES+0)+0),f
u2607:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u2607
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u2607
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u2607
opt asmopt_on

	
l1780:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u1481
	goto	u1480
u1481:
	goto	l1780
u1480:
	
l6765:	
	movlw	(038h)
	goto	l1778
	
l1779:	
	line	47
;Keypad.c: 47: if (RB6 == 0) { _delay((unsigned long)((250)*(16000000/4000.0))); while (RB6==0); return '9'; }
	btfsc	(54/8),(54)&7
	goto	u1491
	goto	u1490
u1491:
	goto	l1783
u1490:
	
l6769:	
	opt asmopt_off
movlw  6
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	14
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	176
movwf	((??_READ_SWITCHES+0)+0),f
u2617:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u2617
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u2617
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u2617
opt asmopt_on

	
l1784:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u1501
	goto	u1500
u1501:
	goto	l1784
u1500:
	
l6771:	
	movlw	(039h)
	goto	l1778
	
l1783:	
	line	48
;Keypad.c: 48: if (RB7 == 0) { _delay((unsigned long)((250)*(16000000/4000.0))); while (RB7==0); return '/'; }
	btfsc	(55/8),(55)&7
	goto	u1511
	goto	u1510
u1511:
	goto	l1787
u1510:
	
l6775:	
	opt asmopt_off
movlw  6
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	14
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	176
movwf	((??_READ_SWITCHES+0)+0),f
u2627:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u2627
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u2627
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u2627
opt asmopt_on

	
l1788:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(55/8),(55)&7
	goto	u1521
	goto	u1520
u1521:
	goto	l1788
u1520:
	
l6777:	
	movlw	(02Fh)
	goto	l1778
	
l1787:	
	line	53
;Keypad.c: 53: RB0 = 1; RB1 = 0; RB2 = 1; RB3 = 1;
	bsf	(48/8),(48)&7
	bcf	(49/8),(49)&7
	bsf	(50/8),(50)&7
	bsf	(51/8),(51)&7
	line	56
;Keypad.c: 56: if (RB4 == 0) { _delay((unsigned long)((250)*(16000000/4000.0))); while (RB4==0);; return '4'; }
	btfsc	(52/8),(52)&7
	goto	u1531
	goto	u1530
u1531:
	goto	l1791
u1530:
	
l6781:	
	opt asmopt_off
movlw  6
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	14
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	176
movwf	((??_READ_SWITCHES+0)+0),f
u2637:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u2637
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u2637
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u2637
opt asmopt_on

	
l1792:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u1541
	goto	u1540
u1541:
	goto	l1792
u1540:
	
l6783:	
	movlw	(034h)
	goto	l1778
	
l1791:	
	line	57
;Keypad.c: 57: if (RB5 == 0) { _delay((unsigned long)((250)*(16000000/4000.0))); while (RB5==0); return '5'; }
	btfsc	(53/8),(53)&7
	goto	u1551
	goto	u1550
u1551:
	goto	l1795
u1550:
	
l6787:	
	opt asmopt_off
movlw  6
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	14
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	176
movwf	((??_READ_SWITCHES+0)+0),f
u2647:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u2647
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u2647
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u2647
opt asmopt_on

	
l1796:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u1561
	goto	u1560
u1561:
	goto	l1796
u1560:
	
l6789:	
	movlw	(035h)
	goto	l1778
	
l1795:	
	line	58
;Keypad.c: 58: if (RB6 == 0) { _delay((unsigned long)((250)*(16000000/4000.0))); while (RB6==0); return '6'; }
	btfsc	(54/8),(54)&7
	goto	u1571
	goto	u1570
u1571:
	goto	l1799
u1570:
	
l6793:	
	opt asmopt_off
movlw  6
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	14
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	176
movwf	((??_READ_SWITCHES+0)+0),f
u2657:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u2657
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u2657
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u2657
opt asmopt_on

	
l1800:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u1581
	goto	u1580
u1581:
	goto	l1800
u1580:
	
l6795:	
	movlw	(036h)
	goto	l1778
	
l1799:	
	line	59
;Keypad.c: 59: if (RB7 == 0) { _delay((unsigned long)((250)*(16000000/4000.0))); while (RB7==0); return 'x'; }
	btfsc	(55/8),(55)&7
	goto	u1591
	goto	u1590
u1591:
	goto	l1803
u1590:
	
l6799:	
	opt asmopt_off
movlw  6
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	14
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	176
movwf	((??_READ_SWITCHES+0)+0),f
u2667:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u2667
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u2667
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u2667
opt asmopt_on

	
l1804:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(55/8),(55)&7
	goto	u1601
	goto	u1600
u1601:
	goto	l1804
u1600:
	
l6801:	
	movlw	(078h)
	goto	l1778
	
l1803:	
	line	73
;Keypad.c: 73: RB0 = 1; RB1 = 1; RB2 = 0; RB3 = 1;
	bsf	(48/8),(48)&7
	bsf	(49/8),(49)&7
	bcf	(50/8),(50)&7
	bsf	(51/8),(51)&7
	line	75
;Keypad.c: 75: if (RB4 == 0) { _delay((unsigned long)((250)*(16000000/4000.0))); while (RB4==0); return '1'; }
	btfsc	(52/8),(52)&7
	goto	u1611
	goto	u1610
u1611:
	goto	l1807
u1610:
	
l6805:	
	opt asmopt_off
movlw  6
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	14
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	176
movwf	((??_READ_SWITCHES+0)+0),f
u2677:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u2677
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u2677
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u2677
opt asmopt_on

	
l1808:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u1621
	goto	u1620
u1621:
	goto	l1808
u1620:
	
l6807:	
	movlw	(031h)
	goto	l1778
	
l1807:	
	line	76
;Keypad.c: 76: if (RB5 == 0) { _delay((unsigned long)((250)*(16000000/4000.0))); while (RB5==0); return '2'; }
	btfsc	(53/8),(53)&7
	goto	u1631
	goto	u1630
u1631:
	goto	l1811
u1630:
	
l6811:	
	opt asmopt_off
movlw  6
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	14
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	176
movwf	((??_READ_SWITCHES+0)+0),f
u2687:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u2687
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u2687
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u2687
opt asmopt_on

	
l1812:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u1641
	goto	u1640
u1641:
	goto	l1812
u1640:
	
l6813:	
	movlw	(032h)
	goto	l1778
	
l1811:	
	line	77
;Keypad.c: 77: if (RB6 == 0) { _delay((unsigned long)((250)*(16000000/4000.0))); while (RB6==0); return '3'; }
	btfsc	(54/8),(54)&7
	goto	u1651
	goto	u1650
u1651:
	goto	l1815
u1650:
	
l6817:	
	opt asmopt_off
movlw  6
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	14
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	176
movwf	((??_READ_SWITCHES+0)+0),f
u2697:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u2697
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u2697
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u2697
opt asmopt_on

	
l1816:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u1661
	goto	u1660
u1661:
	goto	l1816
u1660:
	
l6819:	
	movlw	(033h)
	goto	l1778
	
l1815:	
	line	78
;Keypad.c: 78: if (RB7 == 0) { _delay((unsigned long)((250)*(16000000/4000.0))); while (RB7==0); return '-'; }
	btfsc	(55/8),(55)&7
	goto	u1671
	goto	u1670
u1671:
	goto	l1819
u1670:
	
l6823:	
	opt asmopt_off
movlw  6
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	14
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	176
movwf	((??_READ_SWITCHES+0)+0),f
u2707:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u2707
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u2707
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u2707
opt asmopt_on

	
l1820:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(55/8),(55)&7
	goto	u1681
	goto	u1680
u1681:
	goto	l1820
u1680:
	
l6825:	
	movlw	(02Dh)
	goto	l1778
	
l1819:	
	line	89
;Keypad.c: 89: RB0 = 1; RB1 = 1; RB2 = 1; RB3 = 0;
	bsf	(48/8),(48)&7
	bsf	(49/8),(49)&7
	bsf	(50/8),(50)&7
	bcf	(51/8),(51)&7
	line	91
;Keypad.c: 91: if (RB4 == 0) { _delay((unsigned long)((250)*(16000000/4000.0))); while (RB4==0); return 'C'; }
	btfsc	(52/8),(52)&7
	goto	u1691
	goto	u1690
u1691:
	goto	l1823
u1690:
	
l6829:	
	opt asmopt_off
movlw  6
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	14
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	176
movwf	((??_READ_SWITCHES+0)+0),f
u2717:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u2717
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u2717
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u2717
opt asmopt_on

	
l1824:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u1701
	goto	u1700
u1701:
	goto	l1824
u1700:
	
l6831:	
	movlw	(043h)
	goto	l1778
	
l1823:	
	line	92
;Keypad.c: 92: if (RB5 == 0) { _delay((unsigned long)((250)*(16000000/4000.0))); while (RB5==0); return '0'; }
	btfsc	(53/8),(53)&7
	goto	u1711
	goto	u1710
u1711:
	goto	l1827
u1710:
	
l6835:	
	opt asmopt_off
movlw  6
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	14
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	176
movwf	((??_READ_SWITCHES+0)+0),f
u2727:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u2727
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u2727
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u2727
opt asmopt_on

	
l1828:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u1721
	goto	u1720
u1721:
	goto	l1828
u1720:
	
l6837:	
	movlw	(030h)
	goto	l1778
	
l1827:	
	line	93
;Keypad.c: 93: if (RB6 == 0) { _delay((unsigned long)((250)*(16000000/4000.0))); while (RB6==0); return '='; }
	btfsc	(54/8),(54)&7
	goto	u1731
	goto	u1730
u1731:
	goto	l1831
u1730:
	
l6841:	
	opt asmopt_off
movlw  6
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	14
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	176
movwf	((??_READ_SWITCHES+0)+0),f
u2737:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u2737
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u2737
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u2737
opt asmopt_on

	
l1832:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u1741
	goto	u1740
u1741:
	goto	l1832
u1740:
	
l6843:	
	movlw	(03Dh)
	goto	l1778
	
l1831:	
	line	94
;Keypad.c: 94: if (RB7 == 0) { _delay((unsigned long)((250)*(16000000/4000.0))); while (RB7==0); return '+'; }
	btfsc	(55/8),(55)&7
	goto	u1751
	goto	u1750
u1751:
	goto	l6853
u1750:
	
l6847:	
	opt asmopt_off
movlw  6
movwf	((??_READ_SWITCHES+0)+0+2),f
movlw	14
movwf	((??_READ_SWITCHES+0)+0+1),f
	movlw	176
movwf	((??_READ_SWITCHES+0)+0),f
u2747:
	decfsz	((??_READ_SWITCHES+0)+0),f
	goto	u2747
	decfsz	((??_READ_SWITCHES+0)+0+1),f
	goto	u2747
	decfsz	((??_READ_SWITCHES+0)+0+2),f
	goto	u2747
opt asmopt_on

	
l1836:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(55/8),(55)&7
	goto	u1761
	goto	u1760
u1761:
	goto	l1836
u1760:
	
l6849:	
	movlw	(02Bh)
	goto	l1778
	line	96
	
l6853:	
;Keypad.c: 96: return 'n';
	movlw	(06Eh)
	line	97
	
l1778:	
	return
	opt stack 0
GLOBAL	__end_of_READ_SWITCHES
	__end_of_READ_SWITCHES:
;; =============== function _READ_SWITCHES ends ============

	signat	_READ_SWITCHES,89
	global	_WriteCommandToLCD
psect	text715,local,class=CODE,delta=2
global __ptext715
__ptext715:

;; *************** function _WriteCommandToLCD *****************
;; Defined at:
;;		line 17 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\LCD.c"
;; Parameters:    Size  Location     Type
;;  Command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Command         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ToggleEpinOfLCD
;; This function is called by:
;;		_InitLCD
;;		_ClearLCDScreen
;;		_main
;; This function uses a non-reentrant model
;;
psect	text715
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\LCD.c"
	line	17
	global	__size_of_WriteCommandToLCD
	__size_of_WriteCommandToLCD	equ	__end_of_WriteCommandToLCD-_WriteCommandToLCD
	
_WriteCommandToLCD:	
	opt	stack 6
; Regs used in _WriteCommandToLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;WriteCommandToLCD@Command stored from wreg
	movwf	(WriteCommandToLCD@Command)
	line	18
	
l6743:	
;LCD.c: 18: RD1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	20
	
l6745:	
;LCD.c: 20: PORTD &= 0x0F;
	movlw	(0Fh)
	andwf	(8),f	;volatile
	line	21
;LCD.c: 21: PORTD |= (Command&0xF0);
	movf	(WriteCommandToLCD@Command),w
	andlw	0F0h
	iorwf	(8),f	;volatile
	line	22
	
l6747:	
;LCD.c: 22: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	24
	
l6749:	
;LCD.c: 24: PORTD &= 0x0F;
	movlw	(0Fh)
	andwf	(8),f	;volatile
	line	25
	
l6751:	
;LCD.c: 25: PORTD |= ((Command<<4)&0xF0);
	swapf	(WriteCommandToLCD@Command),w
	andlw	(0ffh shl 4) & 0ffh
	andlw	0F0h
	iorwf	(8),f	;volatile
	line	26
	
l6753:	
;LCD.c: 26: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	27
	
l2419:	
	return
	opt stack 0
GLOBAL	__end_of_WriteCommandToLCD
	__end_of_WriteCommandToLCD:
;; =============== function _WriteCommandToLCD ends ============

	signat	_WriteCommandToLCD,4216
	global	_WriteDataToLCD
psect	text716,local,class=CODE,delta=2
global __ptext716
__ptext716:

;; *************** function _WriteDataToLCD *****************
;; Defined at:
;;		line 31 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\LCD.c"
;; Parameters:    Size  Location     Type
;;  LCDChar         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCDChar         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ToggleEpinOfLCD
;; This function is called by:
;;		_WriteStringToLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text716
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\LCD.c"
	line	31
	global	__size_of_WriteDataToLCD
	__size_of_WriteDataToLCD	equ	__end_of_WriteDataToLCD-_WriteDataToLCD
	
_WriteDataToLCD:	
	opt	stack 6
; Regs used in _WriteDataToLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;WriteDataToLCD@LCDChar stored from wreg
	movwf	(WriteDataToLCD@LCDChar)
	line	32
	
l6731:	
;LCD.c: 32: RD1 = 1;
	bsf	(65/8),(65)&7
	line	34
	
l6733:	
;LCD.c: 34: PORTD &= 0x0F;
	movlw	(0Fh)
	andwf	(8),f	;volatile
	line	35
;LCD.c: 35: PORTD |= (LCDChar&0xF0);
	movf	(WriteDataToLCD@LCDChar),w
	andlw	0F0h
	iorwf	(8),f	;volatile
	line	36
	
l6735:	
;LCD.c: 36: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	38
	
l6737:	
;LCD.c: 38: PORTD &= 0x0F;
	movlw	(0Fh)
	andwf	(8),f	;volatile
	line	39
	
l6739:	
;LCD.c: 39: PORTD |= ((LCDChar<<4)&0xF0);
	swapf	(WriteDataToLCD@LCDChar),w
	andlw	(0ffh shl 4) & 0ffh
	andlw	0F0h
	iorwf	(8),f	;volatile
	line	40
	
l6741:	
;LCD.c: 40: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	41
	
l2422:	
	return
	opt stack 0
GLOBAL	__end_of_WriteDataToLCD
	__end_of_WriteDataToLCD:
;; =============== function _WriteDataToLCD ends ============

	signat	_WriteDataToLCD,4216
	global	___awdiv
psect	text717,local,class=CODE,delta=2
global __ptext717
__ptext717:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.80\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMMON] int 
;;  sign            1    5[COMMON] unsigned char 
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Oled_Pixel
;; This function uses a non-reentrant model
;;
psect	text717
	file	"C:\Program Files\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l6687:	
	clrf	(___awdiv@sign)
	line	10
	
l6689:	
	btfss	(___awdiv@divisor+1),7
	goto	u1381
	goto	u1380
u1381:
	goto	l6695
u1380:
	line	11
	
l6691:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l6693:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l6695:	
	btfss	(___awdiv@dividend+1),7
	goto	u1391
	goto	u1390
u1391:
	goto	l6701
u1390:
	line	15
	
l6697:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l6699:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l6701:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l6703:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u1401
	goto	u1400
u1401:
	goto	l6723
u1400:
	line	20
	
l6705:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l6709
	line	22
	
l6707:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l6709:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1411
	goto	u1410
u1411:
	goto	l6707
u1410:
	line	26
	
l6711:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l6713:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1425
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1425:
	skipc
	goto	u1421
	goto	u1420
u1421:
	goto	l6719
u1420:
	line	28
	
l6715:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l6717:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l6719:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l6721:	
	decfsz	(___awdiv@counter),f
	goto	u1431
	goto	u1430
u1431:
	goto	l6711
u1430:
	line	34
	
l6723:	
	movf	(___awdiv@sign),w
	skipz
	goto	u1440
	goto	l6727
u1440:
	line	35
	
l6725:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l6727:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l5213:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lbmod
psect	text718,local,class=CODE,delta=2
global __ptext718
__ptext718:

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.80\sources\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    2[COMMON] unsigned char 
;;  rem             1    4[COMMON] unsigned char 
;;  counter         1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text718
	file	"C:\Program Files\HI-TECH Software\PICC\9.80\sources\lbmod.c"
	line	5
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
	opt	stack 7
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	line	9
	movwf	(___lbmod@dividend)
	
l6669:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l6671:	
	clrf	(___lbmod@rem)
	line	12
	
l6673:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u1355:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u1355
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l6675:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l6677:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u1361
	goto	u1360
u1361:
	goto	l6681
u1360:
	line	15
	
l6679:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l6681:	
	decfsz	(___lbmod@counter),f
	goto	u1371
	goto	u1370
u1371:
	goto	l6673
u1370:
	line	17
	
l6683:	
	movf	(___lbmod@rem),w
	line	18
	
l5102:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text719,local,class=CODE,delta=2
global __ptext719
__ptext719:

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.80\sources\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    1[COMMON] unsigned char 
;;  quotient        1    3[COMMON] unsigned char 
;;  counter         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text719
	file	"C:\Program Files\HI-TECH Software\PICC\9.80\sources\lbdiv.c"
	line	5
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
	opt	stack 7
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	line	9
	movwf	(___lbdiv@dividend)
	
l6645:	
	clrf	(___lbdiv@quotient)
	line	10
	
l6647:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u1310
	goto	l6665
u1310:
	line	11
	
l6649:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l6653
	
l5091:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l6651:	
	incf	(___lbdiv@counter),f
	line	12
	
l6653:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1321
	goto	u1320
u1321:
	goto	l5091
u1320:
	line	16
	
l5093:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l6655:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1331
	goto	u1330
u1331:
	goto	l6661
u1330:
	line	19
	
l6657:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l6659:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l6661:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l6663:	
	decfsz	(___lbdiv@counter),f
	goto	u1341
	goto	u1340
u1341:
	goto	l5093
u1340:
	line	25
	
l6665:	
	movf	(___lbdiv@quotient),w
	line	26
	
l5096:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___wmul
psect	text720,local,class=CODE,delta=2
global __ptext720
__ptext720:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files\HI-TECH Software\PICC\9.80\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Oled_WriteChar
;;		_Oled_Line
;; This function uses a non-reentrant model
;;
psect	text720
	file	"C:\Program Files\HI-TECH Software\PICC\9.80\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l6629:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l6631:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1291
	goto	u1290
u1291:
	goto	l6635
u1290:
	line	8
	
l6633:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l6635:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l6637:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l6639:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1301
	goto	u1300
u1301:
	goto	l6631
u1300:
	line	12
	
l6641:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l5066:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_WriteSPI
psect	text721,local,class=CODE,delta=2
global __ptext721
__ptext721:

;; *************** function _WriteSPI *****************
;; Defined at:
;;		line 40 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\SPI.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    2[COMMON] unsigned char 
;;  temp            1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 60/100
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Oled_Command
;;		_Oled_WriteRam
;; This function uses a non-reentrant model
;;
psect	text721
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\SPI.c"
	line	40
	global	__size_of_WriteSPI
	__size_of_WriteSPI	equ	__end_of_WriteSPI-_WriteSPI
	
_WriteSPI:	
	opt	stack 4
; Regs used in _WriteSPI: [wreg+status,2]
;WriteSPI@data stored from wreg
	line	42
	movwf	(WriteSPI@data)
	
l6617:	
;SPI.c: 41: unsigned char temp;
;SPI.c: 42: temp = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	line	43
	
l6619:	
;SPI.c: 43: RA5=0;
	bcf	(45/8),(45)&7
	line	44
;SPI.c: 44: SSPBUF = data;
	movf	(WriteSPI@data),w
	movwf	(19)	;volatile
	line	45
;SPI.c: 45: while(!BF);
	
l3673:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1184/8)^080h,(1184)&7
	goto	u1281
	goto	u1280
u1281:
	goto	l3673
u1280:
	line	47
	
l6621:	
;SPI.c: 47: temp = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	movf	(19),w	;volatile
	line	48
	
l6623:	
;SPI.c: 48: RA5=1;
	bsf	(45/8),(45)&7
	line	50
	
l6625:	
;SPI.c: 50: return 0;
	clrf	(?_WriteSPI)
	clrf	(?_WriteSPI+1)
	line	51
	
l3676:	
	return
	opt stack 0
GLOBAL	__end_of_WriteSPI
	__end_of_WriteSPI:
;; =============== function _WriteSPI ends ============

	signat	_WriteSPI,4218
	global	_uart_tx
psect	text722,local,class=CODE,delta=2
global __ptext722
__ptext722:

;; *************** function _uart_tx *****************
;; Defined at:
;;		line 11 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\uart_config.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_uart_string
;; This function uses a non-reentrant model
;;
psect	text722
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\uart_config.c"
	line	11
	global	__size_of_uart_tx
	__size_of_uart_tx	equ	__end_of_uart_tx-_uart_tx
	
_uart_tx:	
	opt	stack 7
; Regs used in _uart_tx: [wreg]
;uart_tx@c stored from wreg
	movwf	(uart_tx@c)
	line	12
	
l6611:	
;uart_config.c: 12: while(TXIF==0);
	
l5039:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u1271
	goto	u1270
u1271:
	goto	l5039
u1270:
	line	13
	
l6613:	
;uart_config.c: 13: TXREG = c;
	movf	(uart_tx@c),w
	movwf	(25)	;volatile
	line	14
	
l6615:	
;uart_config.c: 14: TXIF=0;
	bcf	(100/8),(100)&7
	line	15
	
l5042:	
	return
	opt stack 0
GLOBAL	__end_of_uart_tx
	__end_of_uart_tx:
;; =============== function _uart_tx ends ============

	signat	_uart_tx,4216
	global	_uart_init
psect	text723,local,class=CODE,delta=2
global __ptext723
__ptext723:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 4 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\uart_config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text723
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\uart_config.c"
	line	4
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 7
; Regs used in _uart_init: [wreg]
	
l6607:	
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	5
;uart_config.c: 5: TXSTA=0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(152)^080h	;volatile
	line	6
;uart_config.c: 6: SPBRG=31;
	movlw	(01Fh)
	movwf	(153)^080h	;volatile
	line	7
	
l6609:	
;uart_config.c: 7: TXIF=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(100/8),(100)&7
	line	8
	
l5036:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,88
	global	_Oled_SetFont
psect	text724,local,class=CODE,delta=2
global __ptext724
__ptext724:

;; *************** function _Oled_SetFont *****************
;; Defined at:
;;		line 165 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
;; Parameters:    Size  Location     Type
;;  _font           2    0[COMMON] PTR const unsigned char 
;;		 -> Terminal12x16(2304), 
;;  _width          1    2[COMMON] unsigned char 
;;  _height         1    3[COMMON] unsigned char 
;;  _min            1    4[COMMON] unsigned char 
;;  _max            1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text724
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\ssd1306.c"
	line	165
	global	__size_of_Oled_SetFont
	__size_of_Oled_SetFont	equ	__end_of_Oled_SetFont-_Oled_SetFont
	
_Oled_SetFont:	
	opt	stack 7
; Regs used in _Oled_SetFont: [wreg+status,2+status,0]
	line	166
	
l6601:	
;ssd1306.c: 166: font2 = _font;
	movf	(Oled_SetFont@_font+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_font2+1)
	movf	(Oled_SetFont@_font),w
	movwf	(_font2)
	line	167
;ssd1306.c: 167: width = _width;
	movf	(Oled_SetFont@_width),w
	movwf	(_width)
	line	168
	
l6603:	
;ssd1306.c: 168: height = _height / 8;
	movf	(Oled_SetFont@_height),w
	movwf	(??_Oled_SetFont+0)+0
	clrc
	rrf	(??_Oled_SetFont+0)+0,f
	clrc
	rrf	(??_Oled_SetFont+0)+0,f
	clrc
	rrf	(??_Oled_SetFont+0)+0,f
	movf	0+(??_Oled_SetFont+0)+0,w
	movwf	(_height)
	line	169
	
l6605:	
;ssd1306.c: 170: max = _max;
	movf	(Oled_SetFont@_min),w
	movwf	(_min)
	line	171
	
l4311:	
	return
	opt stack 0
GLOBAL	__end_of_Oled_SetFont
	__end_of_Oled_SetFont:
;; =============== function _Oled_SetFont ends ============

	signat	_Oled_SetFont,20600
	global	_initialise_SPI
psect	text725,local,class=CODE,delta=2
global __ptext725
__ptext725:

;; *************** function _initialise_SPI *****************
;; Defined at:
;;		line 4 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\SPI.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/20
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text725
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\SPI.c"
	line	4
	global	__size_of_initialise_SPI
	__size_of_initialise_SPI	equ	__end_of_initialise_SPI-_initialise_SPI
	
_initialise_SPI:	
	opt	stack 7
; Regs used in _initialise_SPI: [wreg+status,2+status,0]
	line	9
	
l6593:	
;SPI.c: 9: RA5=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(45/8),(45)&7
	line	10
	
l6595:	
;SPI.c: 10: SSPSTAT |= 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	movf	(148)^080h,w	;volatile
	line	11
	
l6597:	
;SPI.c: 11: SSPCON |=0x22;
	movlw	(022h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(20),f	;volatile
	line	12
	
l6599:	
;SPI.c: 12: SSPEN = 1;
	bsf	(165/8),(165)&7
	line	13
	
l3664:	
	return
	opt stack 0
GLOBAL	__end_of_initialise_SPI
	__end_of_initialise_SPI:
;; =============== function _initialise_SPI ends ============

	signat	_initialise_SPI,88
	global	_ToggleEpinOfLCD
psect	text726,local,class=CODE,delta=2
global __ptext726
__ptext726:

;; *************** function _ToggleEpinOfLCD *****************
;; Defined at:
;;		line 5 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_WriteCommandToLCD
;;		_WriteDataToLCD
;;		_InitLCD
;; This function uses a non-reentrant model
;;
psect	text726
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\LCD.c"
	line	5
	global	__size_of_ToggleEpinOfLCD
	__size_of_ToggleEpinOfLCD	equ	__end_of_ToggleEpinOfLCD-_ToggleEpinOfLCD
	
_ToggleEpinOfLCD:	
	opt	stack 6
; Regs used in _ToggleEpinOfLCD: [wreg+status,2+status,0+btemp+1]
	line	7
	
l6581:	
;LCD.c: 6: int i;
;LCD.c: 7: RD0 = 1;
	bsf	(64/8),(64)&7
	line	9
	
l6583:	
;LCD.c: 9: for(i=0;i<500;i++);
	clrf	(ToggleEpinOfLCD@i)
	clrf	(ToggleEpinOfLCD@i+1)
	
l6589:	
	incf	(ToggleEpinOfLCD@i),f
	skipnz
	incf	(ToggleEpinOfLCD@i+1),f
	
l6591:	
	movf	(ToggleEpinOfLCD@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1265
	movlw	low(01F4h)
	subwf	(ToggleEpinOfLCD@i),w
u1265:

	skipc
	goto	u1261
	goto	u1260
u1261:
	goto	l6589
u1260:
	
l2415:	
	line	11
;LCD.c: 11: RD0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	13
	
l2416:	
	return
	opt stack 0
GLOBAL	__end_of_ToggleEpinOfLCD
	__end_of_ToggleEpinOfLCD:
;; =============== function _ToggleEpinOfLCD ends ============

	signat	_ToggleEpinOfLCD,88
	global	_InitKeypad
psect	text727,local,class=CODE,delta=2
global __ptext727
__ptext727:

;; *************** function _InitKeypad *****************
;; Defined at:
;;		line 7 in file "D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\Keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text727
	file	"D:\Frank\FRANK PROGRAMS\PIC\satya project pic controller\Keypad.c"
	line	7
	global	__size_of_InitKeypad
	__size_of_InitKeypad	equ	__end_of_InitKeypad-_InitKeypad
	
_InitKeypad:	
	opt	stack 7
; Regs used in _InitKeypad: [wreg+status,2]
	line	8
	
l6575:	
;Keypad.c: 8: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	9
	
l6577:	
;Keypad.c: 9: TRISB = 0xF0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	22
	
l6579:	
;Keypad.c: 22: RBPU = 0;
	bcf	(1039/8)^080h,(1039)&7
	line	28
	
l1771:	
	return
	opt stack 0
GLOBAL	__end_of_InitKeypad
	__end_of_InitKeypad:
;; =============== function _InitKeypad ends ============

	signat	_InitKeypad,88
psect	text728,local,class=CODE,delta=2
global __ptext728
__ptext728:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
