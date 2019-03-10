   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
   4                     	bsct
   5  0000               _touch_a:
   6  0000 0000          	dc.w	0
   7  0002 000000000000  	ds.b	6
   8  0008               _touch_t:
   9  0008 0000          	dc.w	0
  10  000a 000000000000  	ds.b	6
  11  0010               _touch_d:
  12  0010 00            	dc.b	0
  13  0011 000000        	ds.b	3
  62                     ; 8 void Touch_Delay(void)   //100us
  62                     ; 9 {
  64                     	switch	.text
  65  0000               _Touch_Delay:
  67  0000 89            	pushw	x
  68       00000002      OFST:	set	2
  71                     ; 11     for(b=159;b>0;b--)
  73  0001 a69f          	ld	a,#159
  74  0003 6b01          	ld	(OFST-1,sp),a
  75  0005               L33:
  76                     ; 12         for(a=1;a>0;a--);
  78  0005 a601          	ld	a,#1
  79  0007 6b02          	ld	(OFST+0,sp),a
  80  0009               L14:
  84  0009 0a02          	dec	(OFST+0,sp)
  87  000b 0d02          	tnz	(OFST+0,sp)
  88  000d 26fa          	jrne	L14
  89                     ; 11     for(b=159;b>0;b--)
  91  000f 0a01          	dec	(OFST-1,sp)
  94  0011 0d01          	tnz	(OFST-1,sp)
  95  0013 26f0          	jrne	L33
  96                     ; 13 }
  99  0015 85            	popw	x
 100  0016 81            	ret
 123                     ; 17 void Touch_GpioInit(void)
 123                     ; 18 {
 124                     	switch	.text
 125  0017               _Touch_GpioInit:
 129                     ; 20 	GPIOC->DDR|= 0x01<<5;		
 131  0017 721a500c      	bset	20492,#5
 132                     ; 21 	GPIOC->CR1|= 0x01<<5;
 134  001b 721a500d      	bset	20493,#5
 135                     ; 22 }
 138  001f 81            	ret
 141                     	xref	_Touch_GpioInit
 142                     	xref	_Tim1_Init
 168                     ; 25 void Touch_Init(void)
 168                     ; 26 {
 169                     	switch	.text
 170  0020               _Touch_Init:
 174                     ; 30 	Touch_GpioInit();
 176  0020 adf5          	call	_Touch_GpioInit
 178                     ; 34 	Tim1_Init();
 180  0022 ad23          	call	_Tim1_Init
 182                     ; 36 	Delay100ms();
 184  0024 cd0000        	call	_Delay100ms
 186                     ; 38 	touch_t[0]=touch_a[0]+TOUCH_THRESHOLD_VALUE;
 188  0027 be00          	ldw	x,_touch_a
 189  0029 1c0023        	addw	x,#35
 190  002c bf08          	ldw	_touch_t,x
 191                     ; 39 	touch_t[1]=touch_a[1]+TOUCH_THRESHOLD_VALUE;
 193  002e be02          	ldw	x,_touch_a+2
 194  0030 1c0023        	addw	x,#35
 195  0033 bf0a          	ldw	_touch_t+2,x
 196                     ; 40 	touch_t[2]=touch_a[2]+TOUCH_THRESHOLD_VALUE;
 198  0035 be04          	ldw	x,_touch_a+4
 199  0037 1c0023        	addw	x,#35
 200  003a bf0c          	ldw	_touch_t+4,x
 201                     ; 41 	touch_t[3]=touch_a[3]+TOUCH_THRESHOLD_VALUE;
 203  003c be06          	ldw	x,_touch_a+6
 204  003e 1c0023        	addw	x,#35
 205  0041 bf0e          	ldw	_touch_t+6,x
 206                     ; 43 	Delay100ms();
 208  0043 cd0000        	call	_Delay100ms
 210                     ; 44 }
 213  0046 81            	ret
 236                     ; 49 void Tim1_Init(void)
 236                     ; 50 {
 237                     	switch	.text
 238  0047               _Tim1_Init:
 242                     ; 52 	TIM1->ARRH = 0xFF;
 244  0047 35ff5262      	mov	21090,#255
 245                     ; 53 	TIM1->ARRL = 0xFF;
 247  004b 35ff5263      	mov	21091,#255
 248                     ; 54 	TIM1->PSCRH = 0x00;
 250  004f 725f5260      	clr	21088
 251                     ; 55 	TIM1->PSCRL = 0x00;
 253  0053 725f5261      	clr	21089
 254                     ; 57 	TIM1->CCMR1 = 0x01;
 256  0057 35015258      	mov	21080,#1
 257                     ; 58 	TIM1->CCMR2 = 0x01;
 259  005b 35015259      	mov	21081,#1
 260                     ; 59 	TIM1->CCMR3 = 0x01;
 262  005f 3501525a      	mov	21082,#1
 263                     ; 60 	TIM1->CCMR4 = 0x01;
 265  0063 3501525b      	mov	21083,#1
 266                     ; 62 	TIM1->CCER1 = 0x11;
 268  0067 3511525c      	mov	21084,#17
 269                     ; 63 	TIM1->CCER2 = 0x11;
 271  006b 3511525d      	mov	21085,#17
 272                     ; 65 	TIM1->IER = 0x01;
 274  006f 35015254      	mov	21076,#1
 275                     ; 66 	TIM1->CR1 |= TIM1_CR1_CEN;
 277  0073 72105250      	bset	21072,#0
 278                     ; 68 }
 281  0077 81            	ret
 308                     ; 70 @far @interrupt void  TIM1_UPD_OVF_TRG_BRK_IRQHandler(void)
 308                     ; 71 {
 310                     	switch	.text
 311  0078               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 313       00000002      OFST:	set	2
 314  0078 89            	pushw	x
 317                     ; 72 	GPIOC->ODR &= ~(0x01<<5); 			//充电端口拉低
 319  0079 721b500a      	bres	20490,#5
 320                     ; 73 	GPIOC->DDR |= 0xF8;					//按键放电
 322  007d c6500c        	ld	a,20492
 323  0080 aaf8          	or	a,#248
 324  0082 c7500c        	ld	20492,a
 325                     ; 77 	TIM1->SR1 &= ~TIM1_SR1_UIF;			//清标志位
 327  0085 72115255      	bres	21077,#0
 328                     ; 79 	TIM1->CR1 &= ~TIM1_CR1_CEN;			//停止计数
 330  0089 72115250      	bres	21072,#0
 331                     ; 81 	TIM1->CNTRH=0x00;					//计数清零
 333  008d 725f525e      	clr	21086
 334                     ; 82 	TIM1->CNTRL=0x00;					//
 336  0091 725f525f      	clr	21087
 337                     ; 84 	touch_a[0]=( touch_a[0]/5*4+ \
 337                     ; 85 	(((TIM1->CCR1H)<<8)+(TIM1->CCR1L)) )/5;
 339  0095 c65265        	ld	a,21093
 340  0098 5f            	clrw	x
 341  0099 97            	ld	xl,a
 342  009a 4f            	clr	a
 343  009b 02            	rlwa	x,a
 344  009c 1f01          	ldw	(OFST-1,sp),x
 345  009e be00          	ldw	x,_touch_a
 346  00a0 a605          	ld	a,#5
 347  00a2 62            	div	x,a
 348  00a3 58            	sllw	x
 349  00a4 58            	sllw	x
 350  00a5 01            	rrwa	x,a
 351  00a6 cb5266        	add	a,21094
 352  00a9 2401          	jrnc	L61
 353  00ab 5c            	incw	x
 354  00ac               L61:
 355  00ac 02            	rlwa	x,a
 356  00ad 72fb01        	addw	x,(OFST-1,sp)
 357  00b0 a605          	ld	a,#5
 358  00b2 62            	div	x,a
 359  00b3 bf00          	ldw	_touch_a,x
 360                     ; 86 	touch_a[1]=( touch_a[1]/5*4+ \
 360                     ; 87 	(((TIM1->CCR2H)<<8)+(TIM1->CCR2L)) )/5;
 362  00b5 c65267        	ld	a,21095
 363  00b8 5f            	clrw	x
 364  00b9 97            	ld	xl,a
 365  00ba 4f            	clr	a
 366  00bb 02            	rlwa	x,a
 367  00bc 1f01          	ldw	(OFST-1,sp),x
 368  00be be02          	ldw	x,_touch_a+2
 369  00c0 a605          	ld	a,#5
 370  00c2 62            	div	x,a
 371  00c3 58            	sllw	x
 372  00c4 58            	sllw	x
 373  00c5 01            	rrwa	x,a
 374  00c6 cb5268        	add	a,21096
 375  00c9 2401          	jrnc	L02
 376  00cb 5c            	incw	x
 377  00cc               L02:
 378  00cc 02            	rlwa	x,a
 379  00cd 72fb01        	addw	x,(OFST-1,sp)
 380  00d0 a605          	ld	a,#5
 381  00d2 62            	div	x,a
 382  00d3 bf02          	ldw	_touch_a+2,x
 383                     ; 88 	touch_a[2]=( touch_a[2]/5*4+ \
 383                     ; 89 	(((TIM1->CCR3H)<<8)+(TIM1->CCR3L)) )/5;
 385  00d5 c65269        	ld	a,21097
 386  00d8 5f            	clrw	x
 387  00d9 97            	ld	xl,a
 388  00da 4f            	clr	a
 389  00db 02            	rlwa	x,a
 390  00dc 1f01          	ldw	(OFST-1,sp),x
 391  00de be04          	ldw	x,_touch_a+4
 392  00e0 a605          	ld	a,#5
 393  00e2 62            	div	x,a
 394  00e3 58            	sllw	x
 395  00e4 58            	sllw	x
 396  00e5 01            	rrwa	x,a
 397  00e6 cb526a        	add	a,21098
 398  00e9 2401          	jrnc	L22
 399  00eb 5c            	incw	x
 400  00ec               L22:
 401  00ec 02            	rlwa	x,a
 402  00ed 72fb01        	addw	x,(OFST-1,sp)
 403  00f0 a605          	ld	a,#5
 404  00f2 62            	div	x,a
 405  00f3 bf04          	ldw	_touch_a+4,x
 406                     ; 90 	touch_a[3]=( touch_a[3]/5*4+ \
 406                     ; 91 	(((TIM1->CCR4H)<<8)+(TIM1->CCR4L)) )/5;
 408  00f5 c6526b        	ld	a,21099
 409  00f8 5f            	clrw	x
 410  00f9 97            	ld	xl,a
 411  00fa 4f            	clr	a
 412  00fb 02            	rlwa	x,a
 413  00fc 1f01          	ldw	(OFST-1,sp),x
 414  00fe be06          	ldw	x,_touch_a+6
 415  0100 a605          	ld	a,#5
 416  0102 62            	div	x,a
 417  0103 58            	sllw	x
 418  0104 58            	sllw	x
 419  0105 01            	rrwa	x,a
 420  0106 cb526c        	add	a,21100
 421  0109 2401          	jrnc	L42
 422  010b 5c            	incw	x
 423  010c               L42:
 424  010c 02            	rlwa	x,a
 425  010d 72fb01        	addw	x,(OFST-1,sp)
 426  0110 a605          	ld	a,#5
 427  0112 62            	div	x,a
 428  0113 bf06          	ldw	_touch_a+6,x
 429                     ; 93 	touch_d[0] = touch_a[0]>touch_t[0]? 1:0;	//按键数字量
 431  0115 be00          	ldw	x,_touch_a
 432  0117 b308          	cpw	x,_touch_t
 433  0119 2304          	jrule	L62
 434  011b a601          	ld	a,#1
 435  011d 2001          	jra	L03
 436  011f               L62:
 437  011f 4f            	clr	a
 438  0120               L03:
 439  0120 b710          	ld	_touch_d,a
 440                     ; 94 	touch_d[1] = touch_a[1]>touch_t[1]? 1:0;
 442  0122 be02          	ldw	x,_touch_a+2
 443  0124 b30a          	cpw	x,_touch_t+2
 444  0126 2304          	jrule	L23
 445  0128 a601          	ld	a,#1
 446  012a 2001          	jra	L43
 447  012c               L23:
 448  012c 4f            	clr	a
 449  012d               L43:
 450  012d b711          	ld	_touch_d+1,a
 451                     ; 95 	touch_d[2] = touch_a[2]>touch_t[2]? 1:0;
 453  012f be04          	ldw	x,_touch_a+4
 454  0131 b30c          	cpw	x,_touch_t+4
 455  0133 2304          	jrule	L63
 456  0135 a601          	ld	a,#1
 457  0137 2001          	jra	L04
 458  0139               L63:
 459  0139 4f            	clr	a
 460  013a               L04:
 461  013a b712          	ld	_touch_d+2,a
 462                     ; 96 	touch_d[3] = touch_a[3]>touch_t[3]? 1:0;
 464  013c be06          	ldw	x,_touch_a+6
 465  013e b30e          	cpw	x,_touch_t+6
 466  0140 2304          	jrule	L24
 467  0142 a601          	ld	a,#1
 468  0144 2001          	jra	L44
 469  0146               L24:
 470  0146 4f            	clr	a
 471  0147               L44:
 472  0147 b713          	ld	_touch_d+3,a
 473                     ; 100 	GPIOC->DDR &= ~0xF8;
 475  0149 c6500c        	ld	a,20492
 476  014c a407          	and	a,#7
 477  014e c7500c        	ld	20492,a
 478                     ; 102 	TIM1->CR1 |= TIM1_CR1_CEN;
 480  0151 72105250      	bset	21072,#0
 481                     ; 104 	GPIOC->ODR |= 0x01<<5;		//开始充电
 483  0155 721a500a      	bset	20490,#5
 484                     ; 106 }
 487  0159 5b02          	addw	sp,#2
 488  015b 80            	iret
 532                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 533                     	xdef	_Tim1_Init
 534                     	xdef	_Touch_GpioInit
 535                     	xdef	_Touch_Delay
 536                     	xdef	_touch_t
 537                     	xdef	_touch_a
 538                     	xdef	_Touch_Init
 539                     	xdef	_touch_d
 540                     	xref	_Delay100ms
 559                     	end
