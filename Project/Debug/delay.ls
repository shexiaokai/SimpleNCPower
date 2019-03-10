   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
  52                     ; 5 void Delay20us(void)   //Îó²î 0us
  52                     ; 6 {
  54                     	switch	.text
  55  0000               _Delay20us:
  57  0000 89            	pushw	x
  58       00000002      OFST:	set	2
  61                     ; 8     for(b=1;b>0;b--)
  63  0001 a601          	ld	a,#1
  64  0003 6b01          	ld	(OFST-1,sp),a
  65  0005               L33:
  66                     ; 9         for(a=77;a>0;a--);
  68  0005 a64d          	ld	a,#77
  69  0007 6b02          	ld	(OFST+0,sp),a
  70  0009               L14:
  74  0009 0a02          	dec	(OFST+0,sp)
  77  000b 0d02          	tnz	(OFST+0,sp)
  78  000d 26fa          	jrne	L14
  79                     ; 8     for(b=1;b>0;b--)
  81  000f 0a01          	dec	(OFST-1,sp)
  84  0011 0d01          	tnz	(OFST-1,sp)
  85  0013 26f0          	jrne	L33
  86                     ; 10 }
  89  0015 85            	popw	x
  90  0016 81            	ret
 133                     ; 12 void Delay5ms(void)   //Îó²î 0us
 133                     ; 13 {
 134                     	switch	.text
 135  0017               _Delay5ms:
 137  0017 89            	pushw	x
 138       00000002      OFST:	set	2
 141                     ; 15     for(b=95;b>0;b--)
 143  0018 a65f          	ld	a,#95
 144  001a 6b01          	ld	(OFST-1,sp),a
 145  001c               L17:
 146                     ; 16         for(a=209;a>0;a--);
 148  001c a6d1          	ld	a,#209
 149  001e 6b02          	ld	(OFST+0,sp),a
 150  0020               L77:
 154  0020 0a02          	dec	(OFST+0,sp)
 157  0022 0d02          	tnz	(OFST+0,sp)
 158  0024 26fa          	jrne	L77
 159                     ; 15     for(b=95;b>0;b--)
 161  0026 0a01          	dec	(OFST-1,sp)
 164  0028 0d01          	tnz	(OFST-1,sp)
 165  002a 26f0          	jrne	L17
 166                     ; 17 }
 169  002c 85            	popw	x
 170  002d 81            	ret
 222                     ; 21 void Delay15ms(void)   //Îó²î 0us
 222                     ; 22 {
 223                     	switch	.text
 224  002e               _Delay15ms:
 226  002e 5203          	subw	sp,#3
 227       00000003      OFST:	set	3
 230                     ; 24     for(c=103;c>0;c--)
 232  0030 a667          	ld	a,#103
 233  0032 6b01          	ld	(OFST-2,sp),a
 234  0034               L331:
 235                     ; 25         for(b=166;b>0;b--)
 237  0034 a6a6          	ld	a,#166
 238  0036 6b02          	ld	(OFST-1,sp),a
 239  0038               L141:
 240                     ; 26             for(a=2;a>0;a--);
 242  0038 a602          	ld	a,#2
 243  003a 6b03          	ld	(OFST+0,sp),a
 244  003c               L741:
 248  003c 0a03          	dec	(OFST+0,sp)
 251  003e 0d03          	tnz	(OFST+0,sp)
 252  0040 26fa          	jrne	L741
 253                     ; 25         for(b=166;b>0;b--)
 255  0042 0a02          	dec	(OFST-1,sp)
 258  0044 0d02          	tnz	(OFST-1,sp)
 259  0046 26f0          	jrne	L141
 260                     ; 24     for(c=103;c>0;c--)
 262  0048 0a01          	dec	(OFST-2,sp)
 265  004a 0d01          	tnz	(OFST-2,sp)
 266  004c 26e6          	jrne	L331
 267                     ; 27 }
 270  004e 5b03          	addw	sp,#3
 271  0050 81            	ret
 323                     ; 30 void Delay100ms(void)   //Îó²î 0us
 323                     ; 31 {
 324                     	switch	.text
 325  0051               _Delay100ms:
 327  0051 5203          	subw	sp,#3
 328       00000003      OFST:	set	3
 331                     ; 33     for(c=95;c>0;c--)
 333  0053 a65f          	ld	a,#95
 334  0055 6b01          	ld	(OFST-2,sp),a
 335  0057               L302:
 336                     ; 34         for(b=138;b>0;b--)
 338  0057 a68a          	ld	a,#138
 339  0059 6b02          	ld	(OFST-1,sp),a
 340  005b               L112:
 341                     ; 35             for(a=29;a>0;a--);
 343  005b a61d          	ld	a,#29
 344  005d 6b03          	ld	(OFST+0,sp),a
 345  005f               L712:
 349  005f 0a03          	dec	(OFST+0,sp)
 352  0061 0d03          	tnz	(OFST+0,sp)
 353  0063 26fa          	jrne	L712
 354                     ; 34         for(b=138;b>0;b--)
 356  0065 0a02          	dec	(OFST-1,sp)
 359  0067 0d02          	tnz	(OFST-1,sp)
 360  0069 26f0          	jrne	L112
 361                     ; 33     for(c=95;c>0;c--)
 363  006b 0a01          	dec	(OFST-2,sp)
 366  006d 0d01          	tnz	(OFST-2,sp)
 367  006f 26e6          	jrne	L302
 368                     ; 36 }
 371  0071 5b03          	addw	sp,#3
 372  0073 81            	ret
 385                     	xdef	_Delay100ms
 386                     	xdef	_Delay15ms
 387                     	xdef	_Delay5ms
 388                     	xdef	_Delay20us
 407                     	end
