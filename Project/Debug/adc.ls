   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
   4                     	bsct
   5  0000               _ADC_Data:
   6  0000 0000          	dc.w	0
   7  0002 00000000      	ds.b	4
   8  0006               _ADC_Buffer:
   9  0006 0000          	dc.w	0
  10  0008 000000000000  	ds.b	18
  11  001a 000000000000  	ds.b	40
  12  0042               _adc_finsh_flag:
  13  0042 00            	dc.b	0
  14                     	xref	_Tim6_Init
  44                     ; 25 void ADC_Init(void)
  44                     ; 26 {
  46                     	switch	.text
  47  0000               _ADC_Init:
  51                     ; 29 	ADC1->CR1 |= 0x20;		//fADC = fMASTER /4
  53  0000 721a5401      	bset	21505,#5
  54                     ; 30 	ADC1->CSR |= 0x04;		//Select channel 4  
  56  0004 72145400      	bset	21504,#2
  57                     ; 31 	ADC1->CR2 |= ADC1_CR2_ALIGN;
  59  0008 72165402      	bset	21506,#3
  60                     ; 33 	ADC1->CR1 |= ADC1_CR1_ADON;		
  62  000c 72105401      	bset	21505,#0
  63                     ; 36 	Tim6_Init();
  65  0010 ad01          	call	_Tim6_Init
  67                     ; 37 }	
  70  0012 81            	ret
  93                     ; 45 void Tim6_Init(void)
  93                     ; 46 {
  94                     	switch	.text
  95  0013               _Tim6_Init:
  99                     ; 47 	TIM6->CR1 |= TIM6_CR1_OPM;	//One-pulse mode
 101  0013 72165340      	bset	21312,#3
 102                     ; 48 	TIM6->CR1 |= TIM6_CR1_URS;	//Update request source enable
 104  0017 72145340      	bset	21312,#2
 105                     ; 49 	TIM6->IER |= TIM6_IER_UIE;	//Update interrup enable
 107  001b 72105343      	bset	21315,#0
 108                     ; 52 	TIM6->PSCR = 0x07;			
 110  001f 35075347      	mov	21319,#7
 111                     ; 53 	TIM6->ARR = 249;			//Auto-reload is 125
 113  0023 35f95348      	mov	21320,#249
 114                     ; 54 	TIM6->CR1 |= TIM6_CR1_CEN;	//Counter enable
 116  0027 72105340      	bset	21312,#0
 117                     ; 55 }
 120  002b 81            	ret
 174                     ; 57 void ADCDataProcess(void)
 174                     ; 58 {
 175                     	switch	.text
 176  002c               _ADCDataProcess:
 178  002c 5206          	subw	sp,#6
 179       00000006      OFST:	set	6
 182                     ; 63 	for(i=0;i<9;i++)
 184  002e 0f05          	clr	(OFST-1,sp)
 185  0030               L75:
 186                     ; 64 		for(j=0;j<9-i;j++)
 188  0030 0f06          	clr	(OFST+0,sp)
 190  0032 2034          	jra	L17
 191  0034               L56:
 192                     ; 65 			if(ADC_Buffer[0][j]>ADC_Buffer[0][j+1])
 194  0034 7b06          	ld	a,(OFST+0,sp)
 195  0036 5f            	clrw	x
 196  0037 97            	ld	xl,a
 197  0038 58            	sllw	x
 198  0039 7b06          	ld	a,(OFST+0,sp)
 199  003b 905f          	clrw	y
 200  003d 9097          	ld	yl,a
 201  003f 9058          	sllw	y
 202  0041 ee06          	ldw	x,(_ADC_Buffer,x)
 203  0043 90e308        	cpw	x,(_ADC_Buffer+2,y)
 204  0046 231e          	jrule	L57
 205                     ; 67 				temp=ADC_Buffer[0][j];
 207  0048 7b06          	ld	a,(OFST+0,sp)
 208  004a 5f            	clrw	x
 209  004b 97            	ld	xl,a
 210  004c 58            	sllw	x
 211  004d ee06          	ldw	x,(_ADC_Buffer,x)
 212  004f 1f03          	ldw	(OFST-3,sp),x
 213                     ; 68 				ADC_Buffer[0][j]=ADC_Buffer[0][j+1];
 215  0051 7b06          	ld	a,(OFST+0,sp)
 216  0053 5f            	clrw	x
 217  0054 97            	ld	xl,a
 218  0055 58            	sllw	x
 219  0056 9093          	ldw	y,x
 220  0058 90ee08        	ldw	y,(_ADC_Buffer+2,y)
 221  005b ef06          	ldw	(_ADC_Buffer,x),y
 222                     ; 69 				ADC_Buffer[0][j+1]=temp;
 224  005d 7b06          	ld	a,(OFST+0,sp)
 225  005f 5f            	clrw	x
 226  0060 97            	ld	xl,a
 227  0061 58            	sllw	x
 228  0062 1603          	ldw	y,(OFST-3,sp)
 229  0064 ef08          	ldw	(_ADC_Buffer+2,x),y
 230  0066               L57:
 231                     ; 64 		for(j=0;j<9-i;j++)
 233  0066 0c06          	inc	(OFST+0,sp)
 234  0068               L17:
 237  0068 9c            	rvf
 238  0069 7b06          	ld	a,(OFST+0,sp)
 239  006b 5f            	clrw	x
 240  006c 97            	ld	xl,a
 241  006d 1f01          	ldw	(OFST-5,sp),x
 242  006f a600          	ld	a,#0
 243  0071 97            	ld	xl,a
 244  0072 a609          	ld	a,#9
 245  0074 1005          	sub	a,(OFST-1,sp)
 246  0076 2401          	jrnc	L21
 247  0078 5a            	decw	x
 248  0079               L21:
 249  0079 02            	rlwa	x,a
 250  007a 1301          	cpw	x,(OFST-5,sp)
 251  007c 2cb6          	jrsgt	L56
 252                     ; 63 	for(i=0;i<9;i++)
 254  007e 0c05          	inc	(OFST-1,sp)
 257  0080 7b05          	ld	a,(OFST-1,sp)
 258  0082 a109          	cp	a,#9
 259  0084 25aa          	jrult	L75
 260                     ; 72 	for(i=0;i<9;i++)
 262  0086 0f05          	clr	(OFST-1,sp)
 263  0088               L77:
 264                     ; 73 		for(j=0;j<9-i;j++)
 266  0088 0f06          	clr	(OFST+0,sp)
 268  008a 2034          	jra	L111
 269  008c               L501:
 270                     ; 74 			if(ADC_Buffer[1][j]>ADC_Buffer[1][j+1])
 272  008c 7b06          	ld	a,(OFST+0,sp)
 273  008e 5f            	clrw	x
 274  008f 97            	ld	xl,a
 275  0090 58            	sllw	x
 276  0091 7b06          	ld	a,(OFST+0,sp)
 277  0093 905f          	clrw	y
 278  0095 9097          	ld	yl,a
 279  0097 9058          	sllw	y
 280  0099 ee1a          	ldw	x,(_ADC_Buffer+20,x)
 281  009b 90e31c        	cpw	x,(_ADC_Buffer+22,y)
 282  009e 231e          	jrule	L511
 283                     ; 76 				temp=ADC_Buffer[1][j];
 285  00a0 7b06          	ld	a,(OFST+0,sp)
 286  00a2 5f            	clrw	x
 287  00a3 97            	ld	xl,a
 288  00a4 58            	sllw	x
 289  00a5 ee1a          	ldw	x,(_ADC_Buffer+20,x)
 290  00a7 1f03          	ldw	(OFST-3,sp),x
 291                     ; 77 				ADC_Buffer[1][j]=ADC_Buffer[1][j+1];
 293  00a9 7b06          	ld	a,(OFST+0,sp)
 294  00ab 5f            	clrw	x
 295  00ac 97            	ld	xl,a
 296  00ad 58            	sllw	x
 297  00ae 9093          	ldw	y,x
 298  00b0 90ee1c        	ldw	y,(_ADC_Buffer+22,y)
 299  00b3 ef1a          	ldw	(_ADC_Buffer+20,x),y
 300                     ; 78 				ADC_Buffer[1][j+1]=temp;
 302  00b5 7b06          	ld	a,(OFST+0,sp)
 303  00b7 5f            	clrw	x
 304  00b8 97            	ld	xl,a
 305  00b9 58            	sllw	x
 306  00ba 1603          	ldw	y,(OFST-3,sp)
 307  00bc ef1c          	ldw	(_ADC_Buffer+22,x),y
 308  00be               L511:
 309                     ; 73 		for(j=0;j<9-i;j++)
 311  00be 0c06          	inc	(OFST+0,sp)
 312  00c0               L111:
 315  00c0 9c            	rvf
 316  00c1 7b06          	ld	a,(OFST+0,sp)
 317  00c3 5f            	clrw	x
 318  00c4 97            	ld	xl,a
 319  00c5 1f01          	ldw	(OFST-5,sp),x
 320  00c7 a600          	ld	a,#0
 321  00c9 97            	ld	xl,a
 322  00ca a609          	ld	a,#9
 323  00cc 1005          	sub	a,(OFST-1,sp)
 324  00ce 2401          	jrnc	L41
 325  00d0 5a            	decw	x
 326  00d1               L41:
 327  00d1 02            	rlwa	x,a
 328  00d2 1301          	cpw	x,(OFST-5,sp)
 329  00d4 2cb6          	jrsgt	L501
 330                     ; 72 	for(i=0;i<9;i++)
 332  00d6 0c05          	inc	(OFST-1,sp)
 335  00d8 7b05          	ld	a,(OFST-1,sp)
 336  00da a109          	cp	a,#9
 337  00dc 25aa          	jrult	L77
 338                     ; 81 	for(i=0;i<9;i++)
 340  00de 0f05          	clr	(OFST-1,sp)
 341  00e0               L711:
 342                     ; 82 		for(j=0;j<9-i;j++)
 344  00e0 0f06          	clr	(OFST+0,sp)
 346  00e2 2034          	jra	L131
 347  00e4               L521:
 348                     ; 83 			if(ADC_Buffer[2][j]>ADC_Buffer[2][j+1])
 350  00e4 7b06          	ld	a,(OFST+0,sp)
 351  00e6 5f            	clrw	x
 352  00e7 97            	ld	xl,a
 353  00e8 58            	sllw	x
 354  00e9 7b06          	ld	a,(OFST+0,sp)
 355  00eb 905f          	clrw	y
 356  00ed 9097          	ld	yl,a
 357  00ef 9058          	sllw	y
 358  00f1 ee2e          	ldw	x,(_ADC_Buffer+40,x)
 359  00f3 90e330        	cpw	x,(_ADC_Buffer+42,y)
 360  00f6 231e          	jrule	L531
 361                     ; 85 				temp=ADC_Buffer[2][j];
 363  00f8 7b06          	ld	a,(OFST+0,sp)
 364  00fa 5f            	clrw	x
 365  00fb 97            	ld	xl,a
 366  00fc 58            	sllw	x
 367  00fd ee2e          	ldw	x,(_ADC_Buffer+40,x)
 368  00ff 1f03          	ldw	(OFST-3,sp),x
 369                     ; 86 				ADC_Buffer[2][j]=ADC_Buffer[2][j+1];
 371  0101 7b06          	ld	a,(OFST+0,sp)
 372  0103 5f            	clrw	x
 373  0104 97            	ld	xl,a
 374  0105 58            	sllw	x
 375  0106 9093          	ldw	y,x
 376  0108 90ee30        	ldw	y,(_ADC_Buffer+42,y)
 377  010b ef2e          	ldw	(_ADC_Buffer+40,x),y
 378                     ; 87 				ADC_Buffer[2][j+1]=temp;
 380  010d 7b06          	ld	a,(OFST+0,sp)
 381  010f 5f            	clrw	x
 382  0110 97            	ld	xl,a
 383  0111 58            	sllw	x
 384  0112 1603          	ldw	y,(OFST-3,sp)
 385  0114 ef30          	ldw	(_ADC_Buffer+42,x),y
 386  0116               L531:
 387                     ; 82 		for(j=0;j<9-i;j++)
 389  0116 0c06          	inc	(OFST+0,sp)
 390  0118               L131:
 393  0118 9c            	rvf
 394  0119 7b06          	ld	a,(OFST+0,sp)
 395  011b 5f            	clrw	x
 396  011c 97            	ld	xl,a
 397  011d 1f01          	ldw	(OFST-5,sp),x
 398  011f a600          	ld	a,#0
 399  0121 97            	ld	xl,a
 400  0122 a609          	ld	a,#9
 401  0124 1005          	sub	a,(OFST-1,sp)
 402  0126 2401          	jrnc	L61
 403  0128 5a            	decw	x
 404  0129               L61:
 405  0129 02            	rlwa	x,a
 406  012a 1301          	cpw	x,(OFST-5,sp)
 407  012c 2cb6          	jrsgt	L521
 408                     ; 81 	for(i=0;i<9;i++)
 410  012e 0c05          	inc	(OFST-1,sp)
 413  0130 7b05          	ld	a,(OFST-1,sp)
 414  0132 a109          	cp	a,#9
 415  0134 25aa          	jrult	L711
 416                     ; 90 	temp=0;
 418  0136 5f            	clrw	x
 419  0137 1f03          	ldw	(OFST-3,sp),x
 420                     ; 91 	for(i=2;i<8;i++)
 422  0139 a602          	ld	a,#2
 423  013b 6b05          	ld	(OFST-1,sp),a
 424  013d               L731:
 425                     ; 92 		temp+=ADC_Buffer[0][i];
 427  013d 7b05          	ld	a,(OFST-1,sp)
 428  013f 5f            	clrw	x
 429  0140 97            	ld	xl,a
 430  0141 58            	sllw	x
 431  0142 ee06          	ldw	x,(_ADC_Buffer,x)
 432  0144 72fb03        	addw	x,(OFST-3,sp)
 433  0147 1f03          	ldw	(OFST-3,sp),x
 434                     ; 91 	for(i=2;i<8;i++)
 436  0149 0c05          	inc	(OFST-1,sp)
 439  014b 7b05          	ld	a,(OFST-1,sp)
 440  014d a108          	cp	a,#8
 441  014f 25ec          	jrult	L731
 442                     ; 93 	ADC_Data[0]=temp/6;
 444  0151 1e03          	ldw	x,(OFST-3,sp)
 445  0153 a606          	ld	a,#6
 446  0155 62            	div	x,a
 447  0156 bf00          	ldw	_ADC_Data,x
 448                     ; 95 	temp=0;
 450  0158 5f            	clrw	x
 451  0159 1f03          	ldw	(OFST-3,sp),x
 452                     ; 96 	for(i=2;i<8;i++)
 454  015b a602          	ld	a,#2
 455  015d 6b05          	ld	(OFST-1,sp),a
 456  015f               L541:
 457                     ; 97 		temp+=ADC_Buffer[1][i];
 459  015f 7b05          	ld	a,(OFST-1,sp)
 460  0161 5f            	clrw	x
 461  0162 97            	ld	xl,a
 462  0163 58            	sllw	x
 463  0164 ee1a          	ldw	x,(_ADC_Buffer+20,x)
 464  0166 72fb03        	addw	x,(OFST-3,sp)
 465  0169 1f03          	ldw	(OFST-3,sp),x
 466                     ; 96 	for(i=2;i<8;i++)
 468  016b 0c05          	inc	(OFST-1,sp)
 471  016d 7b05          	ld	a,(OFST-1,sp)
 472  016f a108          	cp	a,#8
 473  0171 25ec          	jrult	L541
 474                     ; 98 	ADC_Data[1]=temp/6;
 476  0173 1e03          	ldw	x,(OFST-3,sp)
 477  0175 a606          	ld	a,#6
 478  0177 62            	div	x,a
 479  0178 bf02          	ldw	_ADC_Data+2,x
 480                     ; 100 	temp=0;
 482  017a 5f            	clrw	x
 483  017b 1f03          	ldw	(OFST-3,sp),x
 484                     ; 101 	for(i=2;i<8;i++)
 486  017d a602          	ld	a,#2
 487  017f 6b05          	ld	(OFST-1,sp),a
 488  0181               L351:
 489                     ; 102 		temp+=ADC_Buffer[2][i];
 491  0181 7b05          	ld	a,(OFST-1,sp)
 492  0183 5f            	clrw	x
 493  0184 97            	ld	xl,a
 494  0185 58            	sllw	x
 495  0186 ee2e          	ldw	x,(_ADC_Buffer+40,x)
 496  0188 72fb03        	addw	x,(OFST-3,sp)
 497  018b 1f03          	ldw	(OFST-3,sp),x
 498                     ; 101 	for(i=2;i<8;i++)
 500  018d 0c05          	inc	(OFST-1,sp)
 503  018f 7b05          	ld	a,(OFST-1,sp)
 504  0191 a108          	cp	a,#8
 505  0193 25ec          	jrult	L351
 506                     ; 103 	ADC_Data[2]=temp/6;
 508  0195 1e03          	ldw	x,(OFST-3,sp)
 509  0197 a606          	ld	a,#6
 510  0199 62            	div	x,a
 511  019a bf04          	ldw	_ADC_Data+4,x
 512                     ; 104 }
 515  019c 5b06          	addw	sp,#6
 516  019e 81            	ret
 519                     	bsct
 520  0043               L161_x:
 521  0043 00            	dc.b	0
 522  0044               L361_y:
 523  0044 00            	dc.b	0
 567                     ; 106 @far @interrupt void TIM6_UPD_OVF_TRG_IRQHandler(void)
 567                     ; 107 {
 569                     	switch	.text
 570  019f               f_TIM6_UPD_OVF_TRG_IRQHandler:
 572       00000004      OFST:	set	4
 573  019f 5204          	subw	sp,#4
 576                     ; 110 	TIM6->SR1 &= ~TIM6_SR1_UIF;			//Claer flag
 578  01a1 72115344      	bres	21316,#0
 579                     ; 113 	ADC_Buffer[x][y]=(ADC1->DRH<<8)+ADC1->DRL;
 581  01a5 c65404        	ld	a,21508
 582  01a8 5f            	clrw	x
 583  01a9 97            	ld	xl,a
 584  01aa 4f            	clr	a
 585  01ab 02            	rlwa	x,a
 586  01ac 01            	rrwa	x,a
 587  01ad cb5405        	add	a,21509
 588  01b0 2401          	jrnc	L22
 589  01b2 5c            	incw	x
 590  01b3               L22:
 591  01b3 02            	rlwa	x,a
 592  01b4 1f03          	ldw	(OFST-1,sp),x
 593  01b6 01            	rrwa	x,a
 594  01b7 b644          	ld	a,L361_y
 595  01b9 5f            	clrw	x
 596  01ba 97            	ld	xl,a
 597  01bb 58            	sllw	x
 598  01bc 1f01          	ldw	(OFST-3,sp),x
 599  01be b643          	ld	a,L161_x
 600  01c0 97            	ld	xl,a
 601  01c1 a614          	ld	a,#20
 602  01c3 42            	mul	x,a
 603  01c4 72fb01        	addw	x,(OFST-3,sp)
 604  01c7 1603          	ldw	y,(OFST-1,sp)
 605  01c9 ef06          	ldw	(_ADC_Buffer,x),y
 606                     ; 115 	y++;
 608  01cb 3c44          	inc	L361_y
 609                     ; 117 	if(y>9)
 611  01cd b644          	ld	a,L361_y
 612  01cf a10a          	cp	a,#10
 613  01d1 2516          	jrult	L702
 614                     ; 119 		y=0;
 616  01d3 3f44          	clr	L361_y
 617                     ; 120 		x++;
 619  01d5 3c43          	inc	L161_x
 620                     ; 121 		ADC1->CSR &= ~ADC1_CSR_CH;
 622  01d7 c65400        	ld	a,21504
 623  01da a4f0          	and	a,#240
 624  01dc c75400        	ld	21504,a
 625                     ; 122 		ADC1->CSR |= 0x04+x;			//¸ÄÍ¨µÀ
 627  01df b643          	ld	a,L161_x
 628  01e1 ab04          	add	a,#4
 629  01e3 ca5400        	or	a,21504
 630  01e6 c75400        	ld	21504,a
 631  01e9               L702:
 632                     ; 124 	if(x>2)
 634  01e9 b643          	ld	a,L161_x
 635  01eb a103          	cp	a,#3
 636  01ed 2514          	jrult	L112
 637                     ; 126 		x=0;
 639  01ef 3f43          	clr	L161_x
 640                     ; 127 		ADC1->CSR &= ~ADC1_CSR_CH;
 642  01f1 c65400        	ld	a,21504
 643  01f4 a4f0          	and	a,#240
 644  01f6 c75400        	ld	21504,a
 645                     ; 128 		ADC1->CSR |= 0x04+x;
 647  01f9 72145400      	bset	21504,#2
 648                     ; 129 		adc_finsh_flag=1;
 650  01fd 35010042      	mov	_adc_finsh_flag,#1
 652  0201 2008          	jra	L312
 653  0203               L112:
 654                     ; 133 		ADC1->CR1 |= ADC1_CR1_ADON;	
 656  0203 72105401      	bset	21505,#0
 657                     ; 134 		TIM6->CR1 |= TIM6_CR1_CEN;			//Counter enable
 659  0207 72105340      	bset	21312,#0
 660  020b               L312:
 661                     ; 136 }
 664  020b 5b04          	addw	sp,#4
 665  020d 80            	iret
 709                     	xdef	f_TIM6_UPD_OVF_TRG_IRQHandler
 710                     	xdef	_Tim6_Init
 711                     	xdef	_ADC_Buffer
 712                     	xdef	_ADCDataProcess
 713                     	xdef	_ADC_Init
 714                     	xdef	_adc_finsh_flag
 715                     	xdef	_ADC_Data
 734                     	end
