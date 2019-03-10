   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
   4                     	bsct
   5  0000               _set_mode:
   6  0000 01            	dc.b	1
   7  0001               _output_flag:
   8  0001 00            	dc.b	0
   9  0002               _set_flag:
  10  0002 00            	dc.b	0
  11  0003               _curcor_place:
  12  0003 01            	dc.b	1
  13                     .const:	section	.text
  14  0000               L3_str:
  15  0000 00            	dc.b	0
  16  0001 000000000000  	ds.b	9
  17                     	xref	_Init
  86                     ; 12 main()
  86                     ; 13 {
  88                     	switch	.text
  89  0000               _main:
  91  0000 520b          	subw	sp,#11
  92       0000000b      OFST:	set	11
  95                     ; 16 	u8 i = 0;
  97  0002 0f0b          	clr	(OFST+0,sp)
  98                     ; 17 	char str[10] ={0};
 100  0004 96            	ldw	x,sp
 101  0005 1c0001        	addw	x,#OFST-10
 102  0008 90ae0000      	ldw	y,#L3_str
 103  000c a60a          	ld	a,#10
 104  000e cd0000        	call	c_xymvx
 106                     ; 18 	Delay100ms();
 108  0011 cd0000        	call	_Delay100ms
 110                     ; 19 	rim();
 113  0014 9a            rim
 115                     ; 20 	Init();
 118  0015 cd027a        	call	_Init
 120                     ; 21 	Delay100ms();
 122  0018 cd0000        	call	_Delay100ms
 124                     ; 23 	DispalyMenu(1,0);
 126  001b 5f            	clrw	x
 127  001c a601          	ld	a,#1
 128  001e 95            	ld	xh,a
 129  001f cd0000        	call	_DispalyMenu
 131                     ; 24 	GPIOA->ODR &= ~0x02;	//blue led on
 133  0022 72135000      	bres	20480,#1
 134                     ; 25 	GPIOD->ODR &= ~(0x01<<7);
 136  0026 721f500f      	bres	20495,#7
 137  002a               L16:
 138                     ; 29 		if(!output_flag)
 140  002a 3d01          	tnz	_output_flag
 141  002c 2703          	jreq	L6
 142  002e cc01f7        	jp	L56
 143  0031               L6:
 144                     ; 31 			if(set_mode)		//设定值设置模式
 146  0031 3d00          	tnz	_set_mode
 147  0033 2603          	jrne	L01
 148  0035 cc0124        	jp	L76
 149  0038               L01:
 150                     ; 33 				if(set_flag)
 152  0038 3d02          	tnz	_set_flag
 153  003a 2603          	jrne	L21
 154  003c cc00ed        	jp	L17
 155  003f               L21:
 156                     ; 35 					if(touch_d[1])			//完成设置
 158  003f 3d01          	tnz	_touch_d+1
 159  0041 2714          	jreq	L37
 160                     ; 37 						set_flag=0;
 162  0043 3f02          	clr	_set_flag
 163                     ; 38 						DispalyMenu(1,0);
 165  0045 5f            	clrw	x
 166  0046 a601          	ld	a,#1
 167  0048 95            	ld	xh,a
 168  0049 cd0000        	call	_DispalyMenu
 170                     ; 39 						curcor_place=1;
 172  004c 35010003      	mov	_curcor_place,#1
 174  0050               L101:
 175                     ; 40 						while(touch_d[1]);
 177  0050 3d01          	tnz	_touch_d+1
 178  0052 26fc          	jrne	L101
 179                     ; 41 						Delay15ms();
 181  0054 cd0000        	call	_Delay15ms
 183  0057               L37:
 184                     ; 43 					if(touch_d[0])			//切换按键
 186  0057 3d00          	tnz	_touch_d
 187  0059 271c          	jreq	L501
 188                     ; 45 						curcor_place++;		//改变光标位置
 190  005b 3c03          	inc	_curcor_place
 191                     ; 46 						if(curcor_place>5)		
 193  005d b603          	ld	a,_curcor_place
 194  005f a106          	cp	a,#6
 195  0061 2504          	jrult	L701
 196                     ; 47 							curcor_place=1;
 198  0063 35010003      	mov	_curcor_place,#1
 199  0067               L701:
 200                     ; 49 						DispalyMenu(1,curcor_place);
 202  0067 b603          	ld	a,_curcor_place
 203  0069 97            	ld	xl,a
 204  006a a601          	ld	a,#1
 205  006c 95            	ld	xh,a
 206  006d cd0000        	call	_DispalyMenu
 209  0070               L311:
 210                     ; 50 						while(touch_d[0]);
 212  0070 3d00          	tnz	_touch_d
 213  0072 26fc          	jrne	L311
 214                     ; 51 						Delay15ms();
 216  0074 cd0000        	call	_Delay15ms
 218  0077               L501:
 219                     ; 54 					if(touch_d[3])			//更改按键
 221  0077 3d03          	tnz	_touch_d+3
 222  0079 2603          	jrne	L41
 223  007b cc01f7        	jp	L56
 224  007e               L41:
 225                     ; 56 						switch(curcor_place)
 227  007e b603          	ld	a,_curcor_place
 229                     ; 62 							case 5:set_i+=100;break;
 230  0080 4a            	dec	a
 231  0081 270e          	jreq	L5
 232  0083 4a            	dec	a
 233  0084 270f          	jreq	L7
 234  0086 4a            	dec	a
 235  0087 2714          	jreq	L11
 236  0089 4a            	dec	a
 237  008a 2719          	jreq	L31
 238  008c 4a            	dec	a
 239  008d 271e          	jreq	L51
 240  008f 2022          	jra	L321
 241  0091               L5:
 242                     ; 58 							case 1:set_v++;break;
 244  0091 3c00          	inc	_set_v
 247  0093 201e          	jra	L321
 248  0095               L7:
 249                     ; 59 							case 2:set_v+=10;break;
 251  0095 b600          	ld	a,_set_v
 252  0097 ab0a          	add	a,#10
 253  0099 b700          	ld	_set_v,a
 256  009b 2016          	jra	L321
 257  009d               L11:
 258                     ; 60 							case 3:set_v+=100;break;
 260  009d b600          	ld	a,_set_v
 261  009f ab64          	add	a,#100
 262  00a1 b700          	ld	_set_v,a
 265  00a3 200e          	jra	L321
 266  00a5               L31:
 267                     ; 61 							case 4:set_i+=10;break;
 269  00a5 b600          	ld	a,_set_i
 270  00a7 ab0a          	add	a,#10
 271  00a9 b700          	ld	_set_i,a
 274  00ab 2006          	jra	L321
 275  00ad               L51:
 276                     ; 62 							case 5:set_i+=100;break;
 278  00ad b600          	ld	a,_set_i
 279  00af ab64          	add	a,#100
 280  00b1 b700          	ld	_set_i,a
 283  00b3               L321:
 284                     ; 64 						if(set_v>150)
 286  00b3 b600          	ld	a,_set_v
 287  00b5 a197          	cp	a,#151
 288  00b7 2506          	jrult	L521
 289                     ; 65 							set_v=30;
 291  00b9 351e0000      	mov	_set_v,#30
 293  00bd 201a          	jra	L721
 294  00bf               L521:
 295                     ; 68 							if(set_v<50)
 297  00bf b600          	ld	a,_set_v
 298  00c1 a132          	cp	a,#50
 299  00c3 240a          	jruge	L131
 300                     ; 69 								if(set_i>50)
 302  00c5 b600          	ld	a,_set_i
 303  00c7 a133          	cp	a,#51
 304  00c9 2504          	jrult	L131
 305                     ; 70 									set_i=10;
 307  00cb 350a0000      	mov	_set_i,#10
 308  00cf               L131:
 309                     ; 71 							if(set_i>150)
 311  00cf b600          	ld	a,_set_i
 312  00d1 a197          	cp	a,#151
 313  00d3 2504          	jrult	L721
 314                     ; 72 									set_i=10;
 316  00d5 350a0000      	mov	_set_i,#10
 317  00d9               L721:
 318                     ; 74 						DispalyMenu(1,curcor_place);
 320  00d9 b603          	ld	a,_curcor_place
 321  00db 97            	ld	xl,a
 322  00dc a601          	ld	a,#1
 323  00de 95            	ld	xh,a
 324  00df cd0000        	call	_DispalyMenu
 327  00e2               L141:
 328                     ; 75 						while(touch_d[3]);
 330  00e2 3d03          	tnz	_touch_d+3
 331  00e4 26fc          	jrne	L141
 332                     ; 76 						Delay15ms();
 334  00e6 cd0000        	call	_Delay15ms
 336  00e9 acf701f7      	jpf	L56
 337  00ed               L17:
 338                     ; 81 					if(touch_d[1])	
 340  00ed 3d01          	tnz	_touch_d+1
 341  00ef 2714          	jreq	L741
 342                     ; 83 						set_mode=0;
 344  00f1 3f00          	clr	_set_mode
 345                     ; 84 						DispalyMenu(2,0);
 347  00f3 5f            	clrw	x
 348  00f4 a602          	ld	a,#2
 349  00f6 95            	ld	xh,a
 350  00f7 cd0000        	call	_DispalyMenu
 352                     ; 85 						GPIOA->ODR |= 0x02;	//blue led off
 354  00fa 72125000      	bset	20480,#1
 356  00fe               L351:
 357                     ; 86 						while(touch_d[1]);
 359  00fe 3d01          	tnz	_touch_d+1
 360  0100 26fc          	jrne	L351
 361                     ; 87 						Delay15ms();
 363  0102 cd0000        	call	_Delay15ms
 365  0105               L741:
 366                     ; 89 					if(touch_d[3])		
 368  0105 3d03          	tnz	_touch_d+3
 369  0107 2603          	jrne	L61
 370  0109 cc01f7        	jp	L56
 371  010c               L61:
 372                     ; 91 						set_flag=1;
 374  010c 35010002      	mov	_set_flag,#1
 375                     ; 92 						DispalyMenu(1,1);
 377  0110 ae0001        	ldw	x,#1
 378  0113 a601          	ld	a,#1
 379  0115 95            	ld	xh,a
 380  0116 cd0000        	call	_DispalyMenu
 383  0119               L361:
 384                     ; 93 						while(touch_d[3]);
 386  0119 3d03          	tnz	_touch_d+3
 387  011b 26fc          	jrne	L361
 388                     ; 94 						Delay15ms();
 390  011d cd0000        	call	_Delay15ms
 392  0120 acf701f7      	jpf	L56
 393  0124               L76:
 394                     ; 101 				if(set_flag)	//设置模式
 396  0124 3d02          	tnz	_set_flag
 397  0126 2603          	jrne	L02
 398  0128 cc01c5        	jp	L171
 399  012b               L02:
 400                     ; 103 					if(touch_d[1])			//完成设置
 402  012b 3d01          	tnz	_touch_d+1
 403  012d 2714          	jreq	L371
 404                     ; 105 						set_flag=0;
 406  012f 3f02          	clr	_set_flag
 407                     ; 106 						DispalyMenu(2,0);
 409  0131 5f            	clrw	x
 410  0132 a602          	ld	a,#2
 411  0134 95            	ld	xh,a
 412  0135 cd0000        	call	_DispalyMenu
 414                     ; 107 						curcor_place=1;
 416  0138 35010003      	mov	_curcor_place,#1
 418  013c               L102:
 419                     ; 108 						while(touch_d[1]);
 421  013c 3d01          	tnz	_touch_d+1
 422  013e 26fc          	jrne	L102
 423                     ; 109 						Delay15ms();
 425  0140 cd0000        	call	_Delay15ms
 427  0143               L371:
 428                     ; 111 					if(touch_d[0])		
 430  0143 3d00          	tnz	_touch_d
 431  0145 271c          	jreq	L502
 432                     ; 113 						curcor_place++;		//改变光标位置
 434  0147 3c03          	inc	_curcor_place
 435                     ; 114 						if(curcor_place>5)		
 437  0149 b603          	ld	a,_curcor_place
 438  014b a106          	cp	a,#6
 439  014d 2504          	jrult	L702
 440                     ; 115 							curcor_place=1;
 442  014f 35010003      	mov	_curcor_place,#1
 443  0153               L702:
 444                     ; 117 						DispalyMenu(2,curcor_place);
 446  0153 b603          	ld	a,_curcor_place
 447  0155 97            	ld	xl,a
 448  0156 a602          	ld	a,#2
 449  0158 95            	ld	xh,a
 450  0159 cd0000        	call	_DispalyMenu
 453  015c               L312:
 454                     ; 118 						while(touch_d[0]);
 456  015c 3d00          	tnz	_touch_d
 457  015e 26fc          	jrne	L312
 458                     ; 119 						Delay15ms();
 460  0160 cd0000        	call	_Delay15ms
 462  0163               L502:
 463                     ; 122 					if(touch_d[3])		
 465  0163 3d03          	tnz	_touch_d+3
 466  0165 2603          	jrne	L22
 467  0167 cc01f7        	jp	L56
 468  016a               L22:
 469                     ; 124 						switch(curcor_place)
 471  016a b603          	ld	a,_curcor_place
 473                     ; 130 							case 5:limit_i+=100;break;
 474  016c 4a            	dec	a
 475  016d 270e          	jreq	L71
 476  016f 4a            	dec	a
 477  0170 270f          	jreq	L12
 478  0172 4a            	dec	a
 479  0173 2714          	jreq	L32
 480  0175 4a            	dec	a
 481  0176 2719          	jreq	L52
 482  0178 4a            	dec	a
 483  0179 271e          	jreq	L72
 484  017b 2022          	jra	L322
 485  017d               L71:
 486                     ; 126 							case 1:limit_v++;break;
 488  017d 3c00          	inc	_limit_v
 491  017f 201e          	jra	L322
 492  0181               L12:
 493                     ; 127 							case 2:limit_v+=10;break;
 495  0181 b600          	ld	a,_limit_v
 496  0183 ab0a          	add	a,#10
 497  0185 b700          	ld	_limit_v,a
 500  0187 2016          	jra	L322
 501  0189               L32:
 502                     ; 128 							case 3:limit_v+=100;break;
 504  0189 b600          	ld	a,_limit_v
 505  018b ab64          	add	a,#100
 506  018d b700          	ld	_limit_v,a
 509  018f 200e          	jra	L322
 510  0191               L52:
 511                     ; 129 							case 4:limit_i+=10;break;
 513  0191 b600          	ld	a,_limit_i
 514  0193 ab0a          	add	a,#10
 515  0195 b700          	ld	_limit_i,a
 518  0197 2006          	jra	L322
 519  0199               L72:
 520                     ; 130 							case 5:limit_i+=100;break;
 522  0199 b600          	ld	a,_limit_i
 523  019b ab64          	add	a,#100
 524  019d b700          	ld	_limit_i,a
 527  019f               L322:
 528                     ; 132 						if(limit_v>150)
 530  019f b600          	ld	a,_limit_v
 531  01a1 a197          	cp	a,#151
 532  01a3 2504          	jrult	L522
 533                     ; 133 							limit_v=30;
 535  01a5 351e0000      	mov	_limit_v,#30
 536  01a9               L522:
 537                     ; 134 						if(limit_i>150)
 539  01a9 b600          	ld	a,_limit_i
 540  01ab a197          	cp	a,#151
 541  01ad 2504          	jrult	L722
 542                     ; 135 							limit_i=10;
 544  01af 350a0000      	mov	_limit_i,#10
 545  01b3               L722:
 546                     ; 136 						DispalyMenu(2,curcor_place);
 548  01b3 b603          	ld	a,_curcor_place
 549  01b5 97            	ld	xl,a
 550  01b6 a602          	ld	a,#2
 551  01b8 95            	ld	xh,a
 552  01b9 cd0000        	call	_DispalyMenu
 555  01bc               L332:
 556                     ; 137 						while(touch_d[3]);
 558  01bc 3d03          	tnz	_touch_d+3
 559  01be 26fc          	jrne	L332
 560                     ; 138 						Delay15ms();
 562  01c0 cd0000        	call	_Delay15ms
 564  01c3 2032          	jra	L56
 565  01c5               L171:
 566                     ; 143 					if(touch_d[1])	
 568  01c5 3d01          	tnz	_touch_d+1
 569  01c7 2716          	jreq	L142
 570                     ; 145 						set_mode=1;
 572  01c9 35010000      	mov	_set_mode,#1
 573                     ; 146 						DispalyMenu(1,0);
 575  01cd 5f            	clrw	x
 576  01ce a601          	ld	a,#1
 577  01d0 95            	ld	xh,a
 578  01d1 cd0000        	call	_DispalyMenu
 580                     ; 147 						GPIOA->ODR &= ~0x02;	//blue led on
 582  01d4 72135000      	bres	20480,#1
 584  01d8               L542:
 585                     ; 148 						while(touch_d[1]);
 587  01d8 3d01          	tnz	_touch_d+1
 588  01da 26fc          	jrne	L542
 589                     ; 149 						Delay15ms();
 591  01dc cd0000        	call	_Delay15ms
 593  01df               L142:
 594                     ; 151 					if(touch_d[3])		
 596  01df 3d03          	tnz	_touch_d+3
 597  01e1 2714          	jreq	L56
 598                     ; 153 						set_flag=1;
 600  01e3 35010002      	mov	_set_flag,#1
 601                     ; 154 						DispalyMenu(2,1);
 603  01e7 ae0001        	ldw	x,#1
 604  01ea a602          	ld	a,#2
 605  01ec 95            	ld	xh,a
 606  01ed cd0000        	call	_DispalyMenu
 609  01f0               L552:
 610                     ; 155 						while(touch_d[3]);
 612  01f0 3d03          	tnz	_touch_d+3
 613  01f2 26fc          	jrne	L552
 614                     ; 156 						Delay15ms();
 616  01f4 cd0000        	call	_Delay15ms
 618  01f7               L56:
 619                     ; 162 		if(output_flag==0&&set_flag==0)
 621  01f7 3d01          	tnz	_output_flag
 622  01f9 262f          	jrne	L162
 624  01fb 3d02          	tnz	_set_flag
 625  01fd 262b          	jrne	L162
 626                     ; 163 			if(touch_d[2])		
 628  01ff 3d02          	tnz	_touch_d+2
 629  0201 2727          	jreq	L162
 630                     ; 165 				output_flag=1;
 632  0203 35010001      	mov	_output_flag,#1
 633                     ; 167 				GPIOD->ODR &= ~(0x01<<7);		//切换恒压模式
 635  0207 721f500f      	bres	20495,#7
 636                     ; 169 				SetPWM(set_v,set_i);			//设置PWM
 638  020b b600          	ld	a,_set_i
 639  020d 97            	ld	xl,a
 640  020e b600          	ld	a,_set_v
 641  0210 95            	ld	xh,a
 642  0211 cd0000        	call	_SetPWM
 644                     ; 170 				GPIOD->ODR |= 0x01;		//打开输出口
 646  0214 7210500f      	bset	20495,#0
 647                     ; 171 				GPIOA->ODR |= 0x02;		//blue led off
 649  0218 72125000      	bset	20480,#1
 650                     ; 172 				DispalyMenu(3,0);
 652  021c 5f            	clrw	x
 653  021d a603          	ld	a,#3
 654  021f 95            	ld	xh,a
 655  0220 cd0000        	call	_DispalyMenu
 658  0223               L762:
 659                     ; 173 				while(touch_d[2]);
 661  0223 3d02          	tnz	_touch_d+2
 662  0225 26fc          	jrne	L762
 663                     ; 174 				Delay15ms();
 665  0227 cd0000        	call	_Delay15ms
 667  022a               L162:
 668                     ; 176 		if(output_flag)
 670  022a 3d01          	tnz	_output_flag
 671  022c 2731          	jreq	L372
 672                     ; 178 			i++;
 674  022e 0c0b          	inc	(OFST+0,sp)
 675                     ; 179 			if(i>99)
 677  0230 7b0b          	ld	a,(OFST+0,sp)
 678  0232 a164          	cp	a,#100
 679  0234 2509          	jrult	L572
 680                     ; 181 				i=0;
 682  0236 0f0b          	clr	(OFST+0,sp)
 683                     ; 182 				DispalyMenu(3,0);
 685  0238 5f            	clrw	x
 686  0239 a603          	ld	a,#3
 687  023b 95            	ld	xh,a
 688  023c cd0000        	call	_DispalyMenu
 690  023f               L572:
 691                     ; 184 			if(touch_d[2])		
 693  023f 3d02          	tnz	_touch_d+2
 694  0241 271c          	jreq	L372
 695                     ; 186 				output_flag=0;
 697  0243 3f01          	clr	_output_flag
 698                     ; 189 				GPIOD->ODR &= ~0x01;		//关输出口
 700  0245 7211500f      	bres	20495,#0
 701                     ; 191 				set_mode=1;				//设定模式
 703  0249 35010000      	mov	_set_mode,#1
 704                     ; 192 				DispalyMenu(1,0);		
 706  024d 5f            	clrw	x
 707  024e a601          	ld	a,#1
 708  0250 95            	ld	xh,a
 709  0251 cd0000        	call	_DispalyMenu
 711                     ; 193 				GPIOA->ODR &= ~0x02;	//blue led on
 713  0254 72135000      	bres	20480,#1
 715  0258               L303:
 716                     ; 196 				while(touch_d[2]);
 718  0258 3d02          	tnz	_touch_d+2
 719  025a 26fc          	jrne	L303
 720                     ; 197 				Delay15ms();
 722  025c cd0000        	call	_Delay15ms
 724  025f               L372:
 725                     ; 202 		if(adc_finsh_flag)
 727  025f 3d00          	tnz	_adc_finsh_flag
 728  0261 2710          	jreq	L703
 729                     ; 204 			adc_finsh_flag=0;
 731  0263 3f00          	clr	_adc_finsh_flag
 732                     ; 205 			ADCDataProcess();		//滤波
 734  0265 cd0000        	call	_ADCDataProcess
 736                     ; 206 			MenuDataProcess();		//换算
 738  0268 cd0000        	call	_MenuDataProcess
 740                     ; 207 			ADC1->CR1 |= ADC1_CR1_ADON;	
 742  026b 72105401      	bset	21505,#0
 743                     ; 208 			TIM6->CR1 |= TIM6_CR1_CEN;			//Counter enable
 745  026f 72105340      	bset	21312,#0
 746  0273               L703:
 747                     ; 212 		Delay5ms();
 749  0273 cd0000        	call	_Delay5ms
 752  0276 ac2a002a      	jpf	L16
 755                     	xref	_ClockInit
 782                     ; 218 void Init(void)
 782                     ; 219 {
 783                     	switch	.text
 784  027a               _Init:
 788                     ; 222 	GPIOA->ODR|= 0x02;
 790  027a 72125000      	bset	20480,#1
 791                     ; 223 	GPIOA->DDR|= 0x01<<1;
 793  027e 72125002      	bset	20482,#1
 794                     ; 224 	GPIOA->CR1|= 0x01<<1;
 796  0282 72125003      	bset	20483,#1
 797                     ; 227 	GPIOD->DDR |= 0x01;		//Output mode
 799  0286 72105011      	bset	20497,#0
 800                     ; 228 	GPIOD->CR1 |= 0x01;		//Push-pull mode
 802  028a 72105012      	bset	20498,#0
 803                     ; 232 	GPIOD->DDR |= (0x01<<7);		//Output mode
 805  028e 721e5011      	bset	20497,#7
 806                     ; 233 	GPIOD->CR1 |= (0x01<<7);		//Push-pull mode
 808  0292 721e5012      	bset	20498,#7
 809                     ; 236 	ClockInit();
 811  0296 ad10          	call	_ClockInit
 813                     ; 238 	LcdInit();
 815  0298 cd0000        	call	_LcdInit
 817                     ; 239 	Touch_Init();
 819  029b cd0000        	call	_Touch_Init
 821                     ; 241 	ADC_Init();
 823  029e cd0000        	call	_ADC_Init
 825                     ; 242 	Menu_Init();
 827  02a1 cd0000        	call	_Menu_Init
 829                     ; 243 	PWM_Init();
 831  02a4 cd0000        	call	_PWM_Init
 833                     ; 244 }
 836  02a7 81            	ret
 860                     ; 253 void ClockInit(void)
 860                     ; 254 {
 861                     	switch	.text
 862  02a8               _ClockInit:
 866                     ; 255 	CLK->CKDIVR = 0x00;		//HSI clock source/1 
 868  02a8 725f50c6      	clr	20678
 869                     ; 256 	Delay15ms();			//Wait clock stabilization
 871  02ac cd0000        	call	_Delay15ms
 873                     ; 257 	CLK->PCKENR1 = 0x00;
 875  02af 725f50c7      	clr	20679
 876                     ; 258 	CLK->PCKENR2 = 0x00;	
 878  02b3 725f50ca      	clr	20682
 879                     ; 259 	CLK->PCKENR1 |= CLK_PCKENR1_TIM1;//Enable Tim1 Clock
 881  02b7 721e50c7      	bset	20679,#7
 882                     ; 260 	CLK->PCKENR1 |= CLK_PCKENR1_TIM5;
 884  02bb 721a50c7      	bset	20679,#5
 885                     ; 261 	CLK->PCKENR1 |= CLK_PCKENR1_TIM6;
 887  02bf 721850c7      	bset	20679,#4
 888                     ; 262 	CLK->PCKENR2 |= CLK_PCKENR2_ADC;
 890  02c3 721650ca      	bset	20682,#3
 891                     ; 263 }
 894  02c7 81            	ret
 929                     ; 276 void assert_failed(u8* file, u32 line)
 929                     ; 277 { 
 930                     	switch	.text
 931  02c8               _assert_failed:
 935  02c8               L743:
 936  02c8 20fe          	jra	L743
 987                     	xdef	_ClockInit
 988                     	xdef	_Init
 989                     	xdef	_main
 990                     	xdef	_curcor_place
 991                     	xdef	_set_flag
 992                     	xdef	_output_flag
 993                     	xdef	_set_mode
 994                     	xref	_SetPWM
 995                     	xref	_PWM_Init
 996                     	xref	_MenuDataProcess
 997                     	xref	_DispalyMenu
 998                     	xref	_Menu_Init
 999                     	xref.b	_limit_i
1000                     	xref.b	_limit_v
1001                     	xref.b	_set_i
1002                     	xref.b	_set_v
1003                     	xref	_ADCDataProcess
1004                     	xref	_ADC_Init
1005                     	xref.b	_adc_finsh_flag
1006                     	xref	_Touch_Init
1007                     	xref.b	_touch_d
1008                     	xref	_LcdInit
1009                     	xref	_Delay100ms
1010                     	xref	_Delay15ms
1011                     	xref	_Delay5ms
1012                     	xdef	_assert_failed
1013                     	xref.b	c_x
1032                     	xref	c_xymvx
1033                     	end
