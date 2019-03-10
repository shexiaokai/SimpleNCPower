   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
   4                     	bsct
   5  0000               _set_v:
   6  0000 32            	dc.b	50
   7  0001               _set_i:
   8  0001 32            	dc.b	50
   9  0002               _limit_v:
  10  0002 96            	dc.b	150
  11  0003               _limit_i:
  12  0003 96            	dc.b	150
  13  0004               L3_ui_adc:
  14  0004 0000          	dc.w	0
  15  0006               L5_uo_adc:
  16  0006 0000          	dc.w	0
  17  0008               L7_io_adc:
  18  0008 0000          	dc.w	0
  19  000a               L11_ui:
  20  000a 00            	dc.b	0
  21  000b               L31_uo:
  22  000b 00            	dc.b	0
  23  000c               L51_io:
  24  000c 00            	dc.b	0
  57                     ; 35 void Menu_Init(void)
  57                     ; 36 {
  59                     	switch	.text
  60  0000               _Menu_Init:
  64                     ; 37 	ui_adc=ADC_Data;
  66  0000 ae0000        	ldw	x,#_ADC_Data
  67  0003 bf04          	ldw	L3_ui_adc,x
  68                     ; 38 	uo_adc=ADC_Data+2;
  70  0005 ae0004        	ldw	x,#_ADC_Data+4
  71  0008 bf06          	ldw	L5_uo_adc,x
  72                     ; 39 	io_adc=ADC_Data+1;
  74  000a ae0002        	ldw	x,#_ADC_Data+2
  75  000d bf08          	ldw	L7_io_adc,x
  76                     ; 40 }
  79  000f 81            	ret
 108                     ; 42 void MenuDataProcess(void)
 108                     ; 43 {
 109                     	switch	.text
 110  0010               _MenuDataProcess:
 114                     ; 44 	ui=(*ui_adc)*0.296+0.5;
 116  0010 92ce04        	ldw	x,[L3_ui_adc.w]
 117  0013 cd0000        	call	c_uitof
 119  0016 ae003b        	ldw	x,#L15
 120  0019 cd0000        	call	c_fmul
 122  001c ae0037        	ldw	x,#L16
 123  001f cd0000        	call	c_fadd
 125  0022 cd0000        	call	c_ftol
 127  0025 b603          	ld	a,c_lreg+3
 128  0027 b70a          	ld	L11_ui,a
 129                     ; 45 	uo=(*uo_adc)*0.182+0.5;
 131  0029 92ce06        	ldw	x,[L5_uo_adc.w]
 132  002c cd0000        	call	c_uitof
 134  002f ae0033        	ldw	x,#L17
 135  0032 cd0000        	call	c_fmul
 137  0035 ae0037        	ldw	x,#L16
 138  0038 cd0000        	call	c_fadd
 140  003b cd0000        	call	c_ftol
 142  003e b603          	ld	a,c_lreg+3
 143  0040 b70b          	ld	L31_uo,a
 144                     ; 46 	io=(*io_adc)*0.144+0.5;
 146  0042 92ce08        	ldw	x,[L7_io_adc.w]
 147  0045 cd0000        	call	c_uitof
 149  0048 ae002f        	ldw	x,#L101
 150  004b cd0000        	call	c_fmul
 152  004e ae0037        	ldw	x,#L16
 153  0051 cd0000        	call	c_fadd
 155  0054 cd0000        	call	c_ftol
 157  0057 b603          	ld	a,c_lreg+3
 158  0059 b70c          	ld	L51_io,a
 159                     ; 47 }
 162  005b 81            	ret
 165                     .const:	section	.text
 166  0000               L501_str:
 167  0000 00            	dc.b	0
 168  0001 000000000000  	ds.b	9
 229                     ; 51 void DispalyMenu(u8 x,u8 y)
 229                     ; 52 {
 230                     	switch	.text
 231  005c               _DispalyMenu:
 233  005c 89            	pushw	x
 234  005d 520a          	subw	sp,#10
 235       0000000a      OFST:	set	10
 238                     ; 53 	char str[10] ={0};
 240  005f 96            	ldw	x,sp
 241  0060 1c0001        	addw	x,#OFST-9
 242  0063 90ae0000      	ldw	y,#L501_str
 243  0067 a60a          	ld	a,#10
 244  0069 cd0000        	call	c_xymvx
 246                     ; 54 	WrtCmd(0x0C);			//blinking and cursor off
 248  006c a60c          	ld	a,#12
 249  006e cd0000        	call	_WrtCmd
 251                     ; 55 	LCD_DELAY_5ms;
 253  0071 cd0000        	call	_Delay5ms
 255                     ; 56 	switch(x)
 257  0074 7b0b          	ld	a,(OFST+1,sp)
 259                     ; 84 		case 4:break;
 260  0076 4a            	dec	a
 261  0077 270d          	jreq	L701
 262  0079 4a            	dec	a
 263  007a 2775          	jreq	L111
 264  007c 4a            	dec	a
 265  007d 2603          	jrne	L21
 266  007f cc015a        	jp	L311
 267  0082               L21:
 268  0082 acbc01bc      	jpf	L161
 269  0086               L701:
 270                     ; 58 		case 1:
 270                     ; 59 			sprintf(str,"U:%02d.%1dV ",set_v/10,set_v%10);
 272  0086 b600          	ld	a,_set_v
 273  0088 5f            	clrw	x
 274  0089 97            	ld	xl,a
 275  008a a60a          	ld	a,#10
 276  008c cd0000        	call	c_smodx
 278  008f 89            	pushw	x
 279  0090 b600          	ld	a,_set_v
 280  0092 5f            	clrw	x
 281  0093 97            	ld	xl,a
 282  0094 a60a          	ld	a,#10
 283  0096 cd0000        	call	c_sdivx
 285  0099 89            	pushw	x
 286  009a ae0022        	ldw	x,#L361
 287  009d 89            	pushw	x
 288  009e 96            	ldw	x,sp
 289  009f 1c0007        	addw	x,#OFST-3
 290  00a2 cd0000        	call	_sprintf
 292  00a5 5b06          	addw	sp,#6
 293                     ; 60 			WrtStr(1,0,str);
 295  00a7 96            	ldw	x,sp
 296  00a8 1c0001        	addw	x,#OFST-9
 297  00ab 89            	pushw	x
 298  00ac 5f            	clrw	x
 299  00ad a601          	ld	a,#1
 300  00af 95            	ld	xh,a
 301  00b0 cd0000        	call	_WrtStr
 303  00b3 85            	popw	x
 304                     ; 61 			Delay5ms();
 306  00b4 cd0000        	call	_Delay5ms
 308                     ; 62 			sprintf(str,"I:%2d.%1dA ",set_i/100,set_i/10%10);
 310  00b7 b601          	ld	a,_set_i
 311  00b9 5f            	clrw	x
 312  00ba 97            	ld	xl,a
 313  00bb a60a          	ld	a,#10
 314  00bd cd0000        	call	c_sdivx
 316  00c0 a60a          	ld	a,#10
 317  00c2 cd0000        	call	c_smodx
 319  00c5 89            	pushw	x
 320  00c6 b601          	ld	a,_set_i
 321  00c8 5f            	clrw	x
 322  00c9 97            	ld	xl,a
 323  00ca a664          	ld	a,#100
 324  00cc cd0000        	call	c_sdivx
 326  00cf 89            	pushw	x
 327  00d0 ae0016        	ldw	x,#L561
 328  00d3 89            	pushw	x
 329  00d4 96            	ldw	x,sp
 330  00d5 1c0007        	addw	x,#OFST-3
 331  00d8 cd0000        	call	_sprintf
 333  00db 5b06          	addw	sp,#6
 334                     ; 63 			WrtStr(2,0,str);
 336  00dd 96            	ldw	x,sp
 337  00de 1c0001        	addw	x,#OFST-9
 338  00e1 89            	pushw	x
 339  00e2 5f            	clrw	x
 340  00e3 a602          	ld	a,#2
 341  00e5 95            	ld	xh,a
 342  00e6 cd0000        	call	_WrtStr
 344  00e9 85            	popw	x
 345                     ; 64 			Delay5ms();
 347  00ea cd0000        	call	_Delay5ms
 349                     ; 65 		break;
 351  00ed acbc01bc      	jpf	L161
 352  00f1               L111:
 353                     ; 67 		case 2:
 353                     ; 68 			sprintf(str,"U:%02d.%1dV ",limit_v/10,limit_v%10);
 355  00f1 b602          	ld	a,_limit_v
 356  00f3 5f            	clrw	x
 357  00f4 97            	ld	xl,a
 358  00f5 a60a          	ld	a,#10
 359  00f7 cd0000        	call	c_smodx
 361  00fa 89            	pushw	x
 362  00fb b602          	ld	a,_limit_v
 363  00fd 5f            	clrw	x
 364  00fe 97            	ld	xl,a
 365  00ff a60a          	ld	a,#10
 366  0101 cd0000        	call	c_sdivx
 368  0104 89            	pushw	x
 369  0105 ae0022        	ldw	x,#L361
 370  0108 89            	pushw	x
 371  0109 96            	ldw	x,sp
 372  010a 1c0007        	addw	x,#OFST-3
 373  010d cd0000        	call	_sprintf
 375  0110 5b06          	addw	sp,#6
 376                     ; 69 			WrtStr(1,0,str);
 378  0112 96            	ldw	x,sp
 379  0113 1c0001        	addw	x,#OFST-9
 380  0116 89            	pushw	x
 381  0117 5f            	clrw	x
 382  0118 a601          	ld	a,#1
 383  011a 95            	ld	xh,a
 384  011b cd0000        	call	_WrtStr
 386  011e 85            	popw	x
 387                     ; 70 			Delay5ms();
 389  011f cd0000        	call	_Delay5ms
 391                     ; 71 			sprintf(str,"I:%2d.%1dA ",limit_i/100,limit_i/10%10);
 393  0122 b603          	ld	a,_limit_i
 394  0124 5f            	clrw	x
 395  0125 97            	ld	xl,a
 396  0126 a60a          	ld	a,#10
 397  0128 cd0000        	call	c_sdivx
 399  012b a60a          	ld	a,#10
 400  012d cd0000        	call	c_smodx
 402  0130 89            	pushw	x
 403  0131 b603          	ld	a,_limit_i
 404  0133 5f            	clrw	x
 405  0134 97            	ld	xl,a
 406  0135 a664          	ld	a,#100
 407  0137 cd0000        	call	c_sdivx
 409  013a 89            	pushw	x
 410  013b ae0016        	ldw	x,#L561
 411  013e 89            	pushw	x
 412  013f 96            	ldw	x,sp
 413  0140 1c0007        	addw	x,#OFST-3
 414  0143 cd0000        	call	_sprintf
 416  0146 5b06          	addw	sp,#6
 417                     ; 72 			WrtStr(2,0,str);
 419  0148 96            	ldw	x,sp
 420  0149 1c0001        	addw	x,#OFST-9
 421  014c 89            	pushw	x
 422  014d 5f            	clrw	x
 423  014e a602          	ld	a,#2
 424  0150 95            	ld	xh,a
 425  0151 cd0000        	call	_WrtStr
 427  0154 85            	popw	x
 428                     ; 73 			Delay5ms();
 430  0155 cd0000        	call	_Delay5ms
 432                     ; 74 		break;
 434  0158 2062          	jra	L161
 435  015a               L311:
 436                     ; 76 		case 3:
 436                     ; 77 			sprintf(str,"U:%02d.%1dV ",uo/10,uo%10);
 438  015a b60b          	ld	a,L31_uo
 439  015c 5f            	clrw	x
 440  015d 97            	ld	xl,a
 441  015e a60a          	ld	a,#10
 442  0160 cd0000        	call	c_smodx
 444  0163 89            	pushw	x
 445  0164 b60b          	ld	a,L31_uo
 446  0166 5f            	clrw	x
 447  0167 97            	ld	xl,a
 448  0168 a60a          	ld	a,#10
 449  016a cd0000        	call	c_sdivx
 451  016d 89            	pushw	x
 452  016e ae0022        	ldw	x,#L361
 453  0171 89            	pushw	x
 454  0172 96            	ldw	x,sp
 455  0173 1c0007        	addw	x,#OFST-3
 456  0176 cd0000        	call	_sprintf
 458  0179 5b06          	addw	sp,#6
 459                     ; 78 			WrtStr(1,0,str);
 461  017b 96            	ldw	x,sp
 462  017c 1c0001        	addw	x,#OFST-9
 463  017f 89            	pushw	x
 464  0180 5f            	clrw	x
 465  0181 a601          	ld	a,#1
 466  0183 95            	ld	xh,a
 467  0184 cd0000        	call	_WrtStr
 469  0187 85            	popw	x
 470                     ; 79 			Delay5ms();
 472  0188 cd0000        	call	_Delay5ms
 474                     ; 80 			sprintf(str,"I:%d.%02dA ",io/100,io%100);
 476  018b b60c          	ld	a,L51_io
 477  018d 5f            	clrw	x
 478  018e 97            	ld	xl,a
 479  018f a664          	ld	a,#100
 480  0191 cd0000        	call	c_smodx
 482  0194 89            	pushw	x
 483  0195 b60c          	ld	a,L51_io
 484  0197 5f            	clrw	x
 485  0198 97            	ld	xl,a
 486  0199 a664          	ld	a,#100
 487  019b cd0000        	call	c_sdivx
 489  019e 89            	pushw	x
 490  019f ae000a        	ldw	x,#L761
 491  01a2 89            	pushw	x
 492  01a3 96            	ldw	x,sp
 493  01a4 1c0007        	addw	x,#OFST-3
 494  01a7 cd0000        	call	_sprintf
 496  01aa 5b06          	addw	sp,#6
 497                     ; 81 			WrtStr(2,0,str);
 499  01ac 96            	ldw	x,sp
 500  01ad 1c0001        	addw	x,#OFST-9
 501  01b0 89            	pushw	x
 502  01b1 5f            	clrw	x
 503  01b2 a602          	ld	a,#2
 504  01b4 95            	ld	xh,a
 505  01b5 cd0000        	call	_WrtStr
 507  01b8 85            	popw	x
 508                     ; 82 			Delay5ms();
 510  01b9 cd0000        	call	_Delay5ms
 512                     ; 83 		break;
 514  01bc               L511:
 515                     ; 84 		case 4:break;
 517  01bc               L161:
 518                     ; 86 	switch(y)
 520  01bc 7b0c          	ld	a,(OFST+2,sp)
 522                     ; 121 		break;
 523  01be 4a            	dec	a
 524  01bf 2732          	jreq	L321
 525  01c1 4a            	dec	a
 526  01c2 271d          	jreq	L121
 527  01c4 4a            	dec	a
 528  01c5 2708          	jreq	L711
 529  01c7 4a            	dec	a
 530  01c8 274d          	jreq	L721
 531  01ca 4a            	dec	a
 532  01cb 2738          	jreq	L521
 533  01cd 2058          	jra	L371
 534  01cf               L711:
 535                     ; 88 		case 3:
 535                     ; 89 			WrtCmd(0x80+2);
 537  01cf a682          	ld	a,#130
 538  01d1 cd0000        	call	_WrtCmd
 540                     ; 90 			Delay5ms();
 542  01d4 cd0000        	call	_Delay5ms
 544                     ; 91 			WrtCmd(0x0E);
 546  01d7 a60e          	ld	a,#14
 547  01d9 cd0000        	call	_WrtCmd
 549                     ; 92 			Delay5ms();
 551  01dc cd0000        	call	_Delay5ms
 553                     ; 93 		break;
 555  01df 2046          	jra	L371
 556  01e1               L121:
 557                     ; 95 		case 2:
 557                     ; 96 			WrtCmd(0x80+3);
 559  01e1 a683          	ld	a,#131
 560  01e3 cd0000        	call	_WrtCmd
 562                     ; 97 			Delay5ms();
 564  01e6 cd0000        	call	_Delay5ms
 566                     ; 98 			WrtCmd(0x0E);
 568  01e9 a60e          	ld	a,#14
 569  01eb cd0000        	call	_WrtCmd
 571                     ; 99 			Delay5ms();
 573  01ee cd0000        	call	_Delay5ms
 575                     ; 100 		break;
 577  01f1 2034          	jra	L371
 578  01f3               L321:
 579                     ; 102 		case 1:
 579                     ; 103 			WrtCmd(0x80+5);
 581  01f3 a685          	ld	a,#133
 582  01f5 cd0000        	call	_WrtCmd
 584                     ; 104 			Delay5ms();
 586  01f8 cd0000        	call	_Delay5ms
 588                     ; 105 			WrtCmd(0x0E);
 590  01fb a60e          	ld	a,#14
 591  01fd cd0000        	call	_WrtCmd
 593                     ; 106 			Delay5ms();
 595  0200 cd0000        	call	_Delay5ms
 597                     ; 107 		break;
 599  0203 2022          	jra	L371
 600  0205               L521:
 601                     ; 109 		case 5:
 601                     ; 110 			WrtCmd(0xC0+3);
 603  0205 a6c3          	ld	a,#195
 604  0207 cd0000        	call	_WrtCmd
 606                     ; 111 			Delay5ms();
 608  020a cd0000        	call	_Delay5ms
 610                     ; 112 			WrtCmd(0x0E);
 612  020d a60e          	ld	a,#14
 613  020f cd0000        	call	_WrtCmd
 615                     ; 113 			Delay5ms();
 617  0212 cd0000        	call	_Delay5ms
 619                     ; 114 		break;
 621  0215 2010          	jra	L371
 622  0217               L721:
 623                     ; 116 		case 4:
 623                     ; 117 			WrtCmd(0xC0+5);
 625  0217 a6c5          	ld	a,#197
 626  0219 cd0000        	call	_WrtCmd
 628                     ; 118 			Delay5ms();
 630  021c cd0000        	call	_Delay5ms
 632                     ; 119 			WrtCmd(0x0E);
 634  021f a60e          	ld	a,#14
 635  0221 cd0000        	call	_WrtCmd
 637                     ; 120 			Delay5ms();
 639  0224 cd0000        	call	_Delay5ms
 641                     ; 121 		break;
 643  0227               L371:
 644                     ; 123 }
 647  0227 5b0c          	addw	sp,#12
 648  0229 81            	ret
 756                     	xdef	_MenuDataProcess
 757                     	xdef	_DispalyMenu
 758                     	xdef	_Menu_Init
 759                     	xdef	_limit_i
 760                     	xdef	_limit_v
 761                     	xdef	_set_i
 762                     	xdef	_set_v
 763                     	xref.b	_ADC_Data
 764                     	xref	_WrtStr
 765                     	xref	_WrtCmd
 766                     	xref	_Delay5ms
 767                     	xref	_sprintf
 768                     	switch	.const
 769  000a               L761:
 770  000a 493a25642e25  	dc.b	"I:%d.%02dA ",0
 771  0016               L561:
 772  0016 493a2532642e  	dc.b	"I:%2d.%1dA ",0
 773  0022               L361:
 774  0022 553a25303264  	dc.b	"U:%02d.%1dV ",0
 775  002f               L101:
 776  002f 3e1374bc      	dc.w	15891,29884
 777  0033               L17:
 778  0033 3e3a5e35      	dc.w	15930,24117
 779  0037               L16:
 780  0037 3f000000      	dc.w	16128,0
 781  003b               L15:
 782  003b 3e978d4f      	dc.w	16023,-29361
 783                     	xref.b	c_lreg
 784                     	xref.b	c_x
 804                     	xref	c_sdivx
 805                     	xref	c_smodx
 806                     	xref	c_xymvx
 807                     	xref	c_ftol
 808                     	xref	c_fadd
 809                     	xref	c_fmul
 810                     	xref	c_uitof
 811                     	end
