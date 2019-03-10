   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
  32                     ; 28 void LcdGpioInit(void)
  32                     ; 29 {
  34                     	switch	.text
  35  0000               _LcdGpioInit:
  39                     ; 31 	GPIOB->DDR|= 0xFF;		
  41  0000 c65007        	ld	a,20487
  42  0003 aaff          	or	a,#255
  43  0005 c75007        	ld	20487,a
  44                     ; 32 	GPIOC->DDR|= 0x06;
  46  0008 c6500c        	ld	a,20492
  47  000b aa06          	or	a,#6
  48  000d c7500c        	ld	20492,a
  49                     ; 33 	GPIOE->DDR|= 0x01<<5;
  51  0010 721a5016      	bset	20502,#5
  52                     ; 36 	GPIOB->CR1|= 0xFF;
  54  0014 c65008        	ld	a,20488
  55  0017 aaff          	or	a,#255
  56  0019 c75008        	ld	20488,a
  57                     ; 37 	GPIOC->CR1|= 0x06;
  59  001c c6500d        	ld	a,20493
  60  001f aa06          	or	a,#6
  61  0021 c7500d        	ld	20493,a
  62                     ; 38 	GPIOE->CR1|= 0x01<<5;
  64  0024 721a5017      	bset	20503,#5
  65                     ; 39 }
  68  0028 81            	ret
  71                     	xref	_LcdGpioInit
  97                     ; 46 void LcdInit(void)
  97                     ; 47 {
  98                     	switch	.text
  99  0029               _LcdInit:
 103                     ; 50 	LcdGpioInit();		//引脚初始化
 105  0029 add5          	call	_LcdGpioInit
 107                     ; 52 	LCD_DELAY_15ms;
 109  002b cd0000        	call	_Delay15ms
 111                     ; 53 	WrtCmd(0x38);			//设置工作方式，8线，2行，5*8
 113  002e a638          	ld	a,#56
 114  0030 ad43          	call	_WrtCmd
 116                     ; 54 	LCD_DELAY_5ms;
 118  0032 cd0000        	call	_Delay5ms
 120                     ; 55 	WrtCmd(0x38);
 122  0035 a638          	ld	a,#56
 123  0037 ad3c          	call	_WrtCmd
 125                     ; 56 	LCD_DELAY_5ms;
 127  0039 cd0000        	call	_Delay5ms
 129                     ; 57 	WrtCmd(0x38);
 131  003c a638          	ld	a,#56
 132  003e ad35          	call	_WrtCmd
 134                     ; 58 	LCD_DELAY_5ms;
 136  0040 cd0000        	call	_Delay5ms
 138                     ; 59 	WrtCmd(0x38);
 140  0043 a638          	ld	a,#56
 141  0045 ad2e          	call	_WrtCmd
 143                     ; 60 	LCD_DELAY_5ms;
 145  0047 cd0000        	call	_Delay5ms
 147                     ; 61 	WrtCmd(0x38);
 149  004a a638          	ld	a,#56
 150  004c ad27          	call	_WrtCmd
 152                     ; 62 	LCD_DELAY_5ms;
 154  004e cd0000        	call	_Delay5ms
 156                     ; 63 	WrtCmd(0x08);			//关闭显示
 158  0051 a608          	ld	a,#8
 159  0053 ad20          	call	_WrtCmd
 161                     ; 64 	LCD_DELAY_5ms;
 163  0055 cd0000        	call	_Delay5ms
 165                     ; 65 	WrtCmd(0x06);			//光标右移
 167  0058 a606          	ld	a,#6
 168  005a ad19          	call	_WrtCmd
 170                     ; 66 	LCD_DELAY_5ms;
 172  005c cd0000        	call	_Delay5ms
 174                     ; 67 	WrtStr(1,0,"Init...");
 176  005f ae0000        	ldw	x,#L13
 177  0062 89            	pushw	x
 178  0063 5f            	clrw	x
 179  0064 a601          	ld	a,#1
 180  0066 95            	ld	xh,a
 181  0067 ad56          	call	_WrtStr
 183  0069 85            	popw	x
 184                     ; 68 	LCD_DELAY_5ms;
 186  006a cd0000        	call	_Delay5ms
 188                     ; 69 	WrtCmd(0x0C);			//开显示
 190  006d a60c          	ld	a,#12
 191  006f ad04          	call	_WrtCmd
 193                     ; 70 	LCD_DELAY_5ms;
 195  0071 cd0000        	call	_Delay5ms
 197                     ; 71 }
 200  0074 81            	ret
 235                     ; 79 void WrtCmd(u8 cmd)
 235                     ; 80 {
 236                     	switch	.text
 237  0075               _WrtCmd:
 239  0075 88            	push	a
 240       00000000      OFST:	set	0
 243                     ; 81 	WRITE;
 245  0076 7213500a      	bres	20490,#1
 246                     ; 82 	CMD;
 248  007a 7215500a      	bres	20490,#2
 249                     ; 83 	LCD_DELAY_20us;
 251  007e cd0000        	call	_Delay20us
 253                     ; 84 	LCD_DI=cmd;
 255  0081 7b01          	ld	a,(OFST+1,sp)
 256  0083 c75005        	ld	20485,a
 257                     ; 85 	LCD_DELAY_20us;
 259  0086 cd0000        	call	_Delay20us
 261                     ; 86 	LCD_ENABLE;	
 263  0089 721b5014      	bres	20500,#5
 266  008d 721a5014      	bset	20500,#5
 269  0091 cd0000        	call	_Delay20us
 273  0094 721b5014      	bres	20500,#5
 274                     ; 87 	LCD_DELAY_20us;
 277  0098 cd0000        	call	_Delay20us
 279                     ; 88 }
 282  009b 84            	pop	a
 283  009c 81            	ret
 318                     ; 96 void WrtData(u8 _data)
 318                     ; 97 {
 319                     	switch	.text
 320  009d               _WrtData:
 322  009d 88            	push	a
 323       00000000      OFST:	set	0
 326                     ; 98 	WRITE;
 328  009e 7213500a      	bres	20490,#1
 329                     ; 99 	DATA;
 331  00a2 7214500a      	bset	20490,#2
 332                     ; 100 	LCD_DELAY_20us;
 334  00a6 cd0000        	call	_Delay20us
 336                     ; 101 	LCD_DI=_data;
 338  00a9 7b01          	ld	a,(OFST+1,sp)
 339  00ab c75005        	ld	20485,a
 340                     ; 102 	LCD_ENABLE;
 342  00ae 721b5014      	bres	20500,#5
 345  00b2 721a5014      	bset	20500,#5
 348  00b6 cd0000        	call	_Delay20us
 352  00b9 721b5014      	bres	20500,#5
 353                     ; 103 }
 357  00bd 84            	pop	a
 358  00be 81            	ret
 413                     ; 113 void WrtStr(u8 y,u8 x,char *str)
 413                     ; 114 {
 414                     	switch	.text
 415  00bf               _WrtStr:
 417  00bf 89            	pushw	x
 418       00000000      OFST:	set	0
 421                     ; 115 	switch(y)
 423  00c0 9e            	ld	a,xh
 425                     ; 118 		case 2:WrtCmd(0xC0+x);break;
 426  00c1 4a            	dec	a
 427  00c2 2705          	jreq	L76
 428  00c4 4a            	dec	a
 429  00c5 270a          	jreq	L17
 430  00c7 201e          	jra	L131
 431  00c9               L76:
 432                     ; 117 		case 1:WrtCmd(0x80+x);break;
 434  00c9 7b02          	ld	a,(OFST+2,sp)
 435  00cb ab80          	add	a,#128
 436  00cd ada6          	call	_WrtCmd
 440  00cf 2016          	jra	L131
 441  00d1               L17:
 442                     ; 118 		case 2:WrtCmd(0xC0+x);break;
 444  00d1 7b02          	ld	a,(OFST+2,sp)
 445  00d3 abc0          	add	a,#192
 446  00d5 ad9e          	call	_WrtCmd
 450  00d7 200e          	jra	L131
 451  00d9               L321:
 453  00d9 200c          	jra	L131
 454  00db               L521:
 455                     ; 121 		WrtData(*str);
 457  00db 1e05          	ldw	x,(OFST+5,sp)
 458  00dd f6            	ld	a,(x)
 459  00de adbd          	call	_WrtData
 461                     ; 120 	for(;*str != 0;str++)
 463  00e0 1e05          	ldw	x,(OFST+5,sp)
 464  00e2 1c0001        	addw	x,#1
 465  00e5 1f05          	ldw	(OFST+5,sp),x
 466  00e7               L131:
 469  00e7 1e05          	ldw	x,(OFST+5,sp)
 470  00e9 7d            	tnz	(x)
 471  00ea 26ef          	jrne	L521
 472                     ; 123 }
 475  00ec 85            	popw	x
 476  00ed 81            	ret
 489                     	xdef	_LcdGpioInit
 490                     	xdef	_WrtStr
 491                     	xdef	_WrtData
 492                     	xdef	_WrtCmd
 493                     	xdef	_LcdInit
 494                     	xref	_Delay15ms
 495                     	xref	_Delay5ms
 496                     	xref	_Delay20us
 497                     .const:	section	.text
 498  0000               L13:
 499  0000 496e69742e2e  	dc.b	"Init...",0
 519                     	end
