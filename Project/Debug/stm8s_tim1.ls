   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
  32                     ; 58 void TIM1_DeInit(void)
  32                     ; 59 {
  34                     	switch	.text
  35  0000               _TIM1_DeInit:
  39                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  41  0000 725f5250      	clr	21072
  42                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  44  0004 725f5251      	clr	21073
  45                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  47  0008 725f5252      	clr	21074
  48                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  50  000c 725f5253      	clr	21075
  51                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  53  0010 725f5254      	clr	21076
  54                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  56  0014 725f5256      	clr	21078
  57                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  59  0018 725f525c      	clr	21084
  60                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  62  001c 725f525d      	clr	21085
  63                     ; 70   TIM1->CCMR1 = 0x01;
  65  0020 35015258      	mov	21080,#1
  66                     ; 71   TIM1->CCMR2 = 0x01;
  68  0024 35015259      	mov	21081,#1
  69                     ; 72   TIM1->CCMR3 = 0x01;
  71  0028 3501525a      	mov	21082,#1
  72                     ; 73   TIM1->CCMR4 = 0x01;
  74  002c 3501525b      	mov	21083,#1
  75                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  77  0030 725f525c      	clr	21084
  78                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  80  0034 725f525d      	clr	21085
  81                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  83  0038 725f5258      	clr	21080
  84                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  86  003c 725f5259      	clr	21081
  87                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
  89  0040 725f525a      	clr	21082
  90                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
  92  0044 725f525b      	clr	21083
  93                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
  95  0048 725f525e      	clr	21086
  96                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
  98  004c 725f525f      	clr	21087
  99                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 101  0050 725f5260      	clr	21088
 102                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 104  0054 725f5261      	clr	21089
 105                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 107  0058 35ff5262      	mov	21090,#255
 108                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 110  005c 35ff5263      	mov	21091,#255
 111                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 113  0060 725f5265      	clr	21093
 114                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 116  0064 725f5266      	clr	21094
 117                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 119  0068 725f5267      	clr	21095
 120                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 122  006c 725f5268      	clr	21096
 123                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 125  0070 725f5269      	clr	21097
 126                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 128  0074 725f526a      	clr	21098
 129                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 131  0078 725f526b      	clr	21099
 132                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 134  007c 725f526c      	clr	21100
 135                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 137  0080 725f526f      	clr	21103
 138                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 140  0084 35015257      	mov	21079,#1
 141                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 143  0088 725f526e      	clr	21102
 144                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 146  008c 725f526d      	clr	21101
 147                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 149  0090 725f5264      	clr	21092
 150                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 152  0094 725f5255      	clr	21077
 153                     ; 101 }
 156  0098 81            	ret
 266                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 266                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 266                     ; 113                        uint16_t TIM1_Period,
 266                     ; 114                        uint8_t TIM1_RepetitionCounter)
 266                     ; 115 {
 267                     	switch	.text
 268  0099               _TIM1_TimeBaseInit:
 270  0099 89            	pushw	x
 271       00000000      OFST:	set	0
 274                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 276  009a 0d05          	tnz	(OFST+5,sp)
 277  009c 2718          	jreq	L21
 278  009e 7b05          	ld	a,(OFST+5,sp)
 279  00a0 a110          	cp	a,#16
 280  00a2 2712          	jreq	L21
 281  00a4 7b05          	ld	a,(OFST+5,sp)
 282  00a6 a120          	cp	a,#32
 283  00a8 270c          	jreq	L21
 284  00aa 7b05          	ld	a,(OFST+5,sp)
 285  00ac a140          	cp	a,#64
 286  00ae 2706          	jreq	L21
 287  00b0 7b05          	ld	a,(OFST+5,sp)
 288  00b2 a160          	cp	a,#96
 289  00b4 2603          	jrne	L01
 290  00b6               L21:
 291  00b6 4f            	clr	a
 292  00b7 2010          	jra	L41
 293  00b9               L01:
 294  00b9 ae0075        	ldw	x,#117
 295  00bc 89            	pushw	x
 296  00bd ae0000        	ldw	x,#0
 297  00c0 89            	pushw	x
 298  00c1 ae0000        	ldw	x,#L101
 299  00c4 cd0000        	call	_assert_failed
 301  00c7 5b04          	addw	sp,#4
 302  00c9               L41:
 303                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 305  00c9 7b06          	ld	a,(OFST+6,sp)
 306  00cb c75262        	ld	21090,a
 307                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 309  00ce 7b07          	ld	a,(OFST+7,sp)
 310  00d0 c75263        	ld	21091,a
 311                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 313  00d3 7b01          	ld	a,(OFST+1,sp)
 314  00d5 c75260        	ld	21088,a
 315                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 317  00d8 7b02          	ld	a,(OFST+2,sp)
 318  00da c75261        	ld	21089,a
 319                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 319                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 321  00dd c65250        	ld	a,21072
 322  00e0 a48f          	and	a,#143
 323  00e2 1a05          	or	a,(OFST+5,sp)
 324  00e4 c75250        	ld	21072,a
 325                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 327  00e7 7b08          	ld	a,(OFST+8,sp)
 328  00e9 c75264        	ld	21092,a
 329                     ; 133 }
 332  00ec 85            	popw	x
 333  00ed 81            	ret
 619                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 619                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 619                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 619                     ; 157                   uint16_t TIM1_Pulse,
 619                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 619                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 619                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 619                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 619                     ; 162 {
 620                     	switch	.text
 621  00ee               _TIM1_OC1Init:
 623  00ee 89            	pushw	x
 624  00ef 5203          	subw	sp,#3
 625       00000003      OFST:	set	3
 628                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 630  00f1 9e            	ld	a,xh
 631  00f2 4d            	tnz	a
 632  00f3 2719          	jreq	L22
 633  00f5 9e            	ld	a,xh
 634  00f6 a110          	cp	a,#16
 635  00f8 2714          	jreq	L22
 636  00fa 9e            	ld	a,xh
 637  00fb a120          	cp	a,#32
 638  00fd 270f          	jreq	L22
 639  00ff 9e            	ld	a,xh
 640  0100 a130          	cp	a,#48
 641  0102 270a          	jreq	L22
 642  0104 9e            	ld	a,xh
 643  0105 a160          	cp	a,#96
 644  0107 2705          	jreq	L22
 645  0109 9e            	ld	a,xh
 646  010a a170          	cp	a,#112
 647  010c 2603          	jrne	L02
 648  010e               L22:
 649  010e 4f            	clr	a
 650  010f 2010          	jra	L42
 651  0111               L02:
 652  0111 ae00a4        	ldw	x,#164
 653  0114 89            	pushw	x
 654  0115 ae0000        	ldw	x,#0
 655  0118 89            	pushw	x
 656  0119 ae0000        	ldw	x,#L101
 657  011c cd0000        	call	_assert_failed
 659  011f 5b04          	addw	sp,#4
 660  0121               L42:
 661                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 663  0121 0d05          	tnz	(OFST+2,sp)
 664  0123 2706          	jreq	L03
 665  0125 7b05          	ld	a,(OFST+2,sp)
 666  0127 a111          	cp	a,#17
 667  0129 2603          	jrne	L62
 668  012b               L03:
 669  012b 4f            	clr	a
 670  012c 2010          	jra	L23
 671  012e               L62:
 672  012e ae00a5        	ldw	x,#165
 673  0131 89            	pushw	x
 674  0132 ae0000        	ldw	x,#0
 675  0135 89            	pushw	x
 676  0136 ae0000        	ldw	x,#L101
 677  0139 cd0000        	call	_assert_failed
 679  013c 5b04          	addw	sp,#4
 680  013e               L23:
 681                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 683  013e 0d08          	tnz	(OFST+5,sp)
 684  0140 2706          	jreq	L63
 685  0142 7b08          	ld	a,(OFST+5,sp)
 686  0144 a144          	cp	a,#68
 687  0146 2603          	jrne	L43
 688  0148               L63:
 689  0148 4f            	clr	a
 690  0149 2010          	jra	L04
 691  014b               L43:
 692  014b ae00a6        	ldw	x,#166
 693  014e 89            	pushw	x
 694  014f ae0000        	ldw	x,#0
 695  0152 89            	pushw	x
 696  0153 ae0000        	ldw	x,#L101
 697  0156 cd0000        	call	_assert_failed
 699  0159 5b04          	addw	sp,#4
 700  015b               L04:
 701                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 703  015b 0d0b          	tnz	(OFST+8,sp)
 704  015d 2706          	jreq	L44
 705  015f 7b0b          	ld	a,(OFST+8,sp)
 706  0161 a122          	cp	a,#34
 707  0163 2603          	jrne	L24
 708  0165               L44:
 709  0165 4f            	clr	a
 710  0166 2010          	jra	L64
 711  0168               L24:
 712  0168 ae00a7        	ldw	x,#167
 713  016b 89            	pushw	x
 714  016c ae0000        	ldw	x,#0
 715  016f 89            	pushw	x
 716  0170 ae0000        	ldw	x,#L101
 717  0173 cd0000        	call	_assert_failed
 719  0176 5b04          	addw	sp,#4
 720  0178               L64:
 721                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 723  0178 0d0c          	tnz	(OFST+9,sp)
 724  017a 2706          	jreq	L25
 725  017c 7b0c          	ld	a,(OFST+9,sp)
 726  017e a188          	cp	a,#136
 727  0180 2603          	jrne	L05
 728  0182               L25:
 729  0182 4f            	clr	a
 730  0183 2010          	jra	L45
 731  0185               L05:
 732  0185 ae00a8        	ldw	x,#168
 733  0188 89            	pushw	x
 734  0189 ae0000        	ldw	x,#0
 735  018c 89            	pushw	x
 736  018d ae0000        	ldw	x,#L101
 737  0190 cd0000        	call	_assert_failed
 739  0193 5b04          	addw	sp,#4
 740  0195               L45:
 741                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 743  0195 7b0d          	ld	a,(OFST+10,sp)
 744  0197 a155          	cp	a,#85
 745  0199 2704          	jreq	L06
 746  019b 0d0d          	tnz	(OFST+10,sp)
 747  019d 2603          	jrne	L65
 748  019f               L06:
 749  019f 4f            	clr	a
 750  01a0 2010          	jra	L26
 751  01a2               L65:
 752  01a2 ae00a9        	ldw	x,#169
 753  01a5 89            	pushw	x
 754  01a6 ae0000        	ldw	x,#0
 755  01a9 89            	pushw	x
 756  01aa ae0000        	ldw	x,#L101
 757  01ad cd0000        	call	_assert_failed
 759  01b0 5b04          	addw	sp,#4
 760  01b2               L26:
 761                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 763  01b2 7b0e          	ld	a,(OFST+11,sp)
 764  01b4 a12a          	cp	a,#42
 765  01b6 2704          	jreq	L66
 766  01b8 0d0e          	tnz	(OFST+11,sp)
 767  01ba 2603          	jrne	L46
 768  01bc               L66:
 769  01bc 4f            	clr	a
 770  01bd 2010          	jra	L07
 771  01bf               L46:
 772  01bf ae00aa        	ldw	x,#170
 773  01c2 89            	pushw	x
 774  01c3 ae0000        	ldw	x,#0
 775  01c6 89            	pushw	x
 776  01c7 ae0000        	ldw	x,#L101
 777  01ca cd0000        	call	_assert_failed
 779  01cd 5b04          	addw	sp,#4
 780  01cf               L07:
 781                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 781                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 783  01cf c6525c        	ld	a,21084
 784  01d2 a4f0          	and	a,#240
 785  01d4 c7525c        	ld	21084,a
 786                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 786                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 786                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 786                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 788  01d7 7b0c          	ld	a,(OFST+9,sp)
 789  01d9 a408          	and	a,#8
 790  01db 6b03          	ld	(OFST+0,sp),a
 791  01dd 7b0b          	ld	a,(OFST+8,sp)
 792  01df a402          	and	a,#2
 793  01e1 1a03          	or	a,(OFST+0,sp)
 794  01e3 6b02          	ld	(OFST-1,sp),a
 795  01e5 7b08          	ld	a,(OFST+5,sp)
 796  01e7 a404          	and	a,#4
 797  01e9 6b01          	ld	(OFST-2,sp),a
 798  01eb 7b05          	ld	a,(OFST+2,sp)
 799  01ed a401          	and	a,#1
 800  01ef 1a01          	or	a,(OFST-2,sp)
 801  01f1 1a02          	or	a,(OFST-1,sp)
 802  01f3 ca525c        	or	a,21084
 803  01f6 c7525c        	ld	21084,a
 804                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 804                     ; 185                           (uint8_t)TIM1_OCMode);
 806  01f9 c65258        	ld	a,21080
 807  01fc a48f          	and	a,#143
 808  01fe 1a04          	or	a,(OFST+1,sp)
 809  0200 c75258        	ld	21080,a
 810                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 812  0203 c6526f        	ld	a,21103
 813  0206 a4fc          	and	a,#252
 814  0208 c7526f        	ld	21103,a
 815                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 815                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 817  020b 7b0e          	ld	a,(OFST+11,sp)
 818  020d a402          	and	a,#2
 819  020f 6b03          	ld	(OFST+0,sp),a
 820  0211 7b0d          	ld	a,(OFST+10,sp)
 821  0213 a401          	and	a,#1
 822  0215 1a03          	or	a,(OFST+0,sp)
 823  0217 ca526f        	or	a,21103
 824  021a c7526f        	ld	21103,a
 825                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 827  021d 7b09          	ld	a,(OFST+6,sp)
 828  021f c75265        	ld	21093,a
 829                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 831  0222 7b0a          	ld	a,(OFST+7,sp)
 832  0224 c75266        	ld	21094,a
 833                     ; 196 }
 836  0227 5b05          	addw	sp,#5
 837  0229 81            	ret
 942                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 942                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 942                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 942                     ; 220                   uint16_t TIM1_Pulse,
 942                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 942                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 942                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 942                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 942                     ; 225 {
 943                     	switch	.text
 944  022a               _TIM1_OC2Init:
 946  022a 89            	pushw	x
 947  022b 5203          	subw	sp,#3
 948       00000003      OFST:	set	3
 951                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 953  022d 9e            	ld	a,xh
 954  022e 4d            	tnz	a
 955  022f 2719          	jreq	L67
 956  0231 9e            	ld	a,xh
 957  0232 a110          	cp	a,#16
 958  0234 2714          	jreq	L67
 959  0236 9e            	ld	a,xh
 960  0237 a120          	cp	a,#32
 961  0239 270f          	jreq	L67
 962  023b 9e            	ld	a,xh
 963  023c a130          	cp	a,#48
 964  023e 270a          	jreq	L67
 965  0240 9e            	ld	a,xh
 966  0241 a160          	cp	a,#96
 967  0243 2705          	jreq	L67
 968  0245 9e            	ld	a,xh
 969  0246 a170          	cp	a,#112
 970  0248 2603          	jrne	L47
 971  024a               L67:
 972  024a 4f            	clr	a
 973  024b 2010          	jra	L001
 974  024d               L47:
 975  024d ae00e3        	ldw	x,#227
 976  0250 89            	pushw	x
 977  0251 ae0000        	ldw	x,#0
 978  0254 89            	pushw	x
 979  0255 ae0000        	ldw	x,#L101
 980  0258 cd0000        	call	_assert_failed
 982  025b 5b04          	addw	sp,#4
 983  025d               L001:
 984                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 986  025d 0d05          	tnz	(OFST+2,sp)
 987  025f 2706          	jreq	L401
 988  0261 7b05          	ld	a,(OFST+2,sp)
 989  0263 a111          	cp	a,#17
 990  0265 2603          	jrne	L201
 991  0267               L401:
 992  0267 4f            	clr	a
 993  0268 2010          	jra	L601
 994  026a               L201:
 995  026a ae00e4        	ldw	x,#228
 996  026d 89            	pushw	x
 997  026e ae0000        	ldw	x,#0
 998  0271 89            	pushw	x
 999  0272 ae0000        	ldw	x,#L101
1000  0275 cd0000        	call	_assert_failed
1002  0278 5b04          	addw	sp,#4
1003  027a               L601:
1004                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1006  027a 0d08          	tnz	(OFST+5,sp)
1007  027c 2706          	jreq	L211
1008  027e 7b08          	ld	a,(OFST+5,sp)
1009  0280 a144          	cp	a,#68
1010  0282 2603          	jrne	L011
1011  0284               L211:
1012  0284 4f            	clr	a
1013  0285 2010          	jra	L411
1014  0287               L011:
1015  0287 ae00e5        	ldw	x,#229
1016  028a 89            	pushw	x
1017  028b ae0000        	ldw	x,#0
1018  028e 89            	pushw	x
1019  028f ae0000        	ldw	x,#L101
1020  0292 cd0000        	call	_assert_failed
1022  0295 5b04          	addw	sp,#4
1023  0297               L411:
1024                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1026  0297 0d0b          	tnz	(OFST+8,sp)
1027  0299 2706          	jreq	L021
1028  029b 7b0b          	ld	a,(OFST+8,sp)
1029  029d a122          	cp	a,#34
1030  029f 2603          	jrne	L611
1031  02a1               L021:
1032  02a1 4f            	clr	a
1033  02a2 2010          	jra	L221
1034  02a4               L611:
1035  02a4 ae00e6        	ldw	x,#230
1036  02a7 89            	pushw	x
1037  02a8 ae0000        	ldw	x,#0
1038  02ab 89            	pushw	x
1039  02ac ae0000        	ldw	x,#L101
1040  02af cd0000        	call	_assert_failed
1042  02b2 5b04          	addw	sp,#4
1043  02b4               L221:
1044                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1046  02b4 0d0c          	tnz	(OFST+9,sp)
1047  02b6 2706          	jreq	L621
1048  02b8 7b0c          	ld	a,(OFST+9,sp)
1049  02ba a188          	cp	a,#136
1050  02bc 2603          	jrne	L421
1051  02be               L621:
1052  02be 4f            	clr	a
1053  02bf 2010          	jra	L031
1054  02c1               L421:
1055  02c1 ae00e7        	ldw	x,#231
1056  02c4 89            	pushw	x
1057  02c5 ae0000        	ldw	x,#0
1058  02c8 89            	pushw	x
1059  02c9 ae0000        	ldw	x,#L101
1060  02cc cd0000        	call	_assert_failed
1062  02cf 5b04          	addw	sp,#4
1063  02d1               L031:
1064                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1066  02d1 7b0d          	ld	a,(OFST+10,sp)
1067  02d3 a155          	cp	a,#85
1068  02d5 2704          	jreq	L431
1069  02d7 0d0d          	tnz	(OFST+10,sp)
1070  02d9 2603          	jrne	L231
1071  02db               L431:
1072  02db 4f            	clr	a
1073  02dc 2010          	jra	L631
1074  02de               L231:
1075  02de ae00e8        	ldw	x,#232
1076  02e1 89            	pushw	x
1077  02e2 ae0000        	ldw	x,#0
1078  02e5 89            	pushw	x
1079  02e6 ae0000        	ldw	x,#L101
1080  02e9 cd0000        	call	_assert_failed
1082  02ec 5b04          	addw	sp,#4
1083  02ee               L631:
1084                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1086  02ee 7b0e          	ld	a,(OFST+11,sp)
1087  02f0 a12a          	cp	a,#42
1088  02f2 2704          	jreq	L241
1089  02f4 0d0e          	tnz	(OFST+11,sp)
1090  02f6 2603          	jrne	L041
1091  02f8               L241:
1092  02f8 4f            	clr	a
1093  02f9 2010          	jra	L441
1094  02fb               L041:
1095  02fb ae00e9        	ldw	x,#233
1096  02fe 89            	pushw	x
1097  02ff ae0000        	ldw	x,#0
1098  0302 89            	pushw	x
1099  0303 ae0000        	ldw	x,#L101
1100  0306 cd0000        	call	_assert_failed
1102  0309 5b04          	addw	sp,#4
1103  030b               L441:
1104                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
1104                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
1106  030b c6525c        	ld	a,21084
1107  030e a40f          	and	a,#15
1108  0310 c7525c        	ld	21084,a
1109                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
1109                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
1109                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
1109                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
1111  0313 7b0c          	ld	a,(OFST+9,sp)
1112  0315 a480          	and	a,#128
1113  0317 6b03          	ld	(OFST+0,sp),a
1114  0319 7b0b          	ld	a,(OFST+8,sp)
1115  031b a420          	and	a,#32
1116  031d 1a03          	or	a,(OFST+0,sp)
1117  031f 6b02          	ld	(OFST-1,sp),a
1118  0321 7b08          	ld	a,(OFST+5,sp)
1119  0323 a440          	and	a,#64
1120  0325 6b01          	ld	(OFST-2,sp),a
1121  0327 7b05          	ld	a,(OFST+2,sp)
1122  0329 a410          	and	a,#16
1123  032b 1a01          	or	a,(OFST-2,sp)
1124  032d 1a02          	or	a,(OFST-1,sp)
1125  032f ca525c        	or	a,21084
1126  0332 c7525c        	ld	21084,a
1127                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1127                     ; 249                           (uint8_t)TIM1_OCMode);
1129  0335 c65259        	ld	a,21081
1130  0338 a48f          	and	a,#143
1131  033a 1a04          	or	a,(OFST+1,sp)
1132  033c c75259        	ld	21081,a
1133                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
1135  033f c6526f        	ld	a,21103
1136  0342 a4f3          	and	a,#243
1137  0344 c7526f        	ld	21103,a
1138                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
1138                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
1140  0347 7b0e          	ld	a,(OFST+11,sp)
1141  0349 a408          	and	a,#8
1142  034b 6b03          	ld	(OFST+0,sp),a
1143  034d 7b0d          	ld	a,(OFST+10,sp)
1144  034f a404          	and	a,#4
1145  0351 1a03          	or	a,(OFST+0,sp)
1146  0353 ca526f        	or	a,21103
1147  0356 c7526f        	ld	21103,a
1148                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1150  0359 7b09          	ld	a,(OFST+6,sp)
1151  035b c75267        	ld	21095,a
1152                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1154  035e 7b0a          	ld	a,(OFST+7,sp)
1155  0360 c75268        	ld	21096,a
1156                     ; 260 }
1159  0363 5b05          	addw	sp,#5
1160  0365 81            	ret
1265                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1265                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
1265                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1265                     ; 284                   uint16_t TIM1_Pulse,
1265                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1265                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1265                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1265                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1265                     ; 289 {
1266                     	switch	.text
1267  0366               _TIM1_OC3Init:
1269  0366 89            	pushw	x
1270  0367 5203          	subw	sp,#3
1271       00000003      OFST:	set	3
1274                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1276  0369 9e            	ld	a,xh
1277  036a 4d            	tnz	a
1278  036b 2719          	jreq	L251
1279  036d 9e            	ld	a,xh
1280  036e a110          	cp	a,#16
1281  0370 2714          	jreq	L251
1282  0372 9e            	ld	a,xh
1283  0373 a120          	cp	a,#32
1284  0375 270f          	jreq	L251
1285  0377 9e            	ld	a,xh
1286  0378 a130          	cp	a,#48
1287  037a 270a          	jreq	L251
1288  037c 9e            	ld	a,xh
1289  037d a160          	cp	a,#96
1290  037f 2705          	jreq	L251
1291  0381 9e            	ld	a,xh
1292  0382 a170          	cp	a,#112
1293  0384 2603          	jrne	L051
1294  0386               L251:
1295  0386 4f            	clr	a
1296  0387 2010          	jra	L451
1297  0389               L051:
1298  0389 ae0123        	ldw	x,#291
1299  038c 89            	pushw	x
1300  038d ae0000        	ldw	x,#0
1301  0390 89            	pushw	x
1302  0391 ae0000        	ldw	x,#L101
1303  0394 cd0000        	call	_assert_failed
1305  0397 5b04          	addw	sp,#4
1306  0399               L451:
1307                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1309  0399 0d05          	tnz	(OFST+2,sp)
1310  039b 2706          	jreq	L061
1311  039d 7b05          	ld	a,(OFST+2,sp)
1312  039f a111          	cp	a,#17
1313  03a1 2603          	jrne	L651
1314  03a3               L061:
1315  03a3 4f            	clr	a
1316  03a4 2010          	jra	L261
1317  03a6               L651:
1318  03a6 ae0124        	ldw	x,#292
1319  03a9 89            	pushw	x
1320  03aa ae0000        	ldw	x,#0
1321  03ad 89            	pushw	x
1322  03ae ae0000        	ldw	x,#L101
1323  03b1 cd0000        	call	_assert_failed
1325  03b4 5b04          	addw	sp,#4
1326  03b6               L261:
1327                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1329  03b6 0d08          	tnz	(OFST+5,sp)
1330  03b8 2706          	jreq	L661
1331  03ba 7b08          	ld	a,(OFST+5,sp)
1332  03bc a144          	cp	a,#68
1333  03be 2603          	jrne	L461
1334  03c0               L661:
1335  03c0 4f            	clr	a
1336  03c1 2010          	jra	L071
1337  03c3               L461:
1338  03c3 ae0125        	ldw	x,#293
1339  03c6 89            	pushw	x
1340  03c7 ae0000        	ldw	x,#0
1341  03ca 89            	pushw	x
1342  03cb ae0000        	ldw	x,#L101
1343  03ce cd0000        	call	_assert_failed
1345  03d1 5b04          	addw	sp,#4
1346  03d3               L071:
1347                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1349  03d3 0d0b          	tnz	(OFST+8,sp)
1350  03d5 2706          	jreq	L471
1351  03d7 7b0b          	ld	a,(OFST+8,sp)
1352  03d9 a122          	cp	a,#34
1353  03db 2603          	jrne	L271
1354  03dd               L471:
1355  03dd 4f            	clr	a
1356  03de 2010          	jra	L671
1357  03e0               L271:
1358  03e0 ae0126        	ldw	x,#294
1359  03e3 89            	pushw	x
1360  03e4 ae0000        	ldw	x,#0
1361  03e7 89            	pushw	x
1362  03e8 ae0000        	ldw	x,#L101
1363  03eb cd0000        	call	_assert_failed
1365  03ee 5b04          	addw	sp,#4
1366  03f0               L671:
1367                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1369  03f0 0d0c          	tnz	(OFST+9,sp)
1370  03f2 2706          	jreq	L202
1371  03f4 7b0c          	ld	a,(OFST+9,sp)
1372  03f6 a188          	cp	a,#136
1373  03f8 2603          	jrne	L002
1374  03fa               L202:
1375  03fa 4f            	clr	a
1376  03fb 2010          	jra	L402
1377  03fd               L002:
1378  03fd ae0127        	ldw	x,#295
1379  0400 89            	pushw	x
1380  0401 ae0000        	ldw	x,#0
1381  0404 89            	pushw	x
1382  0405 ae0000        	ldw	x,#L101
1383  0408 cd0000        	call	_assert_failed
1385  040b 5b04          	addw	sp,#4
1386  040d               L402:
1387                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1389  040d 7b0d          	ld	a,(OFST+10,sp)
1390  040f a155          	cp	a,#85
1391  0411 2704          	jreq	L012
1392  0413 0d0d          	tnz	(OFST+10,sp)
1393  0415 2603          	jrne	L602
1394  0417               L012:
1395  0417 4f            	clr	a
1396  0418 2010          	jra	L212
1397  041a               L602:
1398  041a ae0128        	ldw	x,#296
1399  041d 89            	pushw	x
1400  041e ae0000        	ldw	x,#0
1401  0421 89            	pushw	x
1402  0422 ae0000        	ldw	x,#L101
1403  0425 cd0000        	call	_assert_failed
1405  0428 5b04          	addw	sp,#4
1406  042a               L212:
1407                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1409  042a 7b0e          	ld	a,(OFST+11,sp)
1410  042c a12a          	cp	a,#42
1411  042e 2704          	jreq	L612
1412  0430 0d0e          	tnz	(OFST+11,sp)
1413  0432 2603          	jrne	L412
1414  0434               L612:
1415  0434 4f            	clr	a
1416  0435 2010          	jra	L022
1417  0437               L412:
1418  0437 ae0129        	ldw	x,#297
1419  043a 89            	pushw	x
1420  043b ae0000        	ldw	x,#0
1421  043e 89            	pushw	x
1422  043f ae0000        	ldw	x,#L101
1423  0442 cd0000        	call	_assert_failed
1425  0445 5b04          	addw	sp,#4
1426  0447               L022:
1427                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1427                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1429  0447 c6525d        	ld	a,21085
1430  044a a4f0          	and	a,#240
1431  044c c7525d        	ld	21085,a
1432                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1432                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1432                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1432                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1434  044f 7b0c          	ld	a,(OFST+9,sp)
1435  0451 a408          	and	a,#8
1436  0453 6b03          	ld	(OFST+0,sp),a
1437  0455 7b0b          	ld	a,(OFST+8,sp)
1438  0457 a402          	and	a,#2
1439  0459 1a03          	or	a,(OFST+0,sp)
1440  045b 6b02          	ld	(OFST-1,sp),a
1441  045d 7b08          	ld	a,(OFST+5,sp)
1442  045f a404          	and	a,#4
1443  0461 6b01          	ld	(OFST-2,sp),a
1444  0463 7b05          	ld	a,(OFST+2,sp)
1445  0465 a401          	and	a,#1
1446  0467 1a01          	or	a,(OFST-2,sp)
1447  0469 1a02          	or	a,(OFST-1,sp)
1448  046b ca525d        	or	a,21085
1449  046e c7525d        	ld	21085,a
1450                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1450                     ; 312                           (uint8_t)TIM1_OCMode);
1452  0471 c6525a        	ld	a,21082
1453  0474 a48f          	and	a,#143
1454  0476 1a04          	or	a,(OFST+1,sp)
1455  0478 c7525a        	ld	21082,a
1456                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1458  047b c6526f        	ld	a,21103
1459  047e a4cf          	and	a,#207
1460  0480 c7526f        	ld	21103,a
1461                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1461                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1463  0483 7b0e          	ld	a,(OFST+11,sp)
1464  0485 a420          	and	a,#32
1465  0487 6b03          	ld	(OFST+0,sp),a
1466  0489 7b0d          	ld	a,(OFST+10,sp)
1467  048b a410          	and	a,#16
1468  048d 1a03          	or	a,(OFST+0,sp)
1469  048f ca526f        	or	a,21103
1470  0492 c7526f        	ld	21103,a
1471                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1473  0495 7b09          	ld	a,(OFST+6,sp)
1474  0497 c75269        	ld	21097,a
1475                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1477  049a 7b0a          	ld	a,(OFST+7,sp)
1478  049c c7526a        	ld	21098,a
1479                     ; 323 }
1482  049f 5b05          	addw	sp,#5
1483  04a1 81            	ret
1558                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1558                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1558                     ; 340                   uint16_t TIM1_Pulse,
1558                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1558                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1558                     ; 343 {
1559                     	switch	.text
1560  04a2               _TIM1_OC4Init:
1562  04a2 89            	pushw	x
1563  04a3 88            	push	a
1564       00000001      OFST:	set	1
1567                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1569  04a4 9e            	ld	a,xh
1570  04a5 4d            	tnz	a
1571  04a6 2719          	jreq	L622
1572  04a8 9e            	ld	a,xh
1573  04a9 a110          	cp	a,#16
1574  04ab 2714          	jreq	L622
1575  04ad 9e            	ld	a,xh
1576  04ae a120          	cp	a,#32
1577  04b0 270f          	jreq	L622
1578  04b2 9e            	ld	a,xh
1579  04b3 a130          	cp	a,#48
1580  04b5 270a          	jreq	L622
1581  04b7 9e            	ld	a,xh
1582  04b8 a160          	cp	a,#96
1583  04ba 2705          	jreq	L622
1584  04bc 9e            	ld	a,xh
1585  04bd a170          	cp	a,#112
1586  04bf 2603          	jrne	L422
1587  04c1               L622:
1588  04c1 4f            	clr	a
1589  04c2 2010          	jra	L032
1590  04c4               L422:
1591  04c4 ae0159        	ldw	x,#345
1592  04c7 89            	pushw	x
1593  04c8 ae0000        	ldw	x,#0
1594  04cb 89            	pushw	x
1595  04cc ae0000        	ldw	x,#L101
1596  04cf cd0000        	call	_assert_failed
1598  04d2 5b04          	addw	sp,#4
1599  04d4               L032:
1600                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1602  04d4 0d03          	tnz	(OFST+2,sp)
1603  04d6 2706          	jreq	L432
1604  04d8 7b03          	ld	a,(OFST+2,sp)
1605  04da a111          	cp	a,#17
1606  04dc 2603          	jrne	L232
1607  04de               L432:
1608  04de 4f            	clr	a
1609  04df 2010          	jra	L632
1610  04e1               L232:
1611  04e1 ae015a        	ldw	x,#346
1612  04e4 89            	pushw	x
1613  04e5 ae0000        	ldw	x,#0
1614  04e8 89            	pushw	x
1615  04e9 ae0000        	ldw	x,#L101
1616  04ec cd0000        	call	_assert_failed
1618  04ef 5b04          	addw	sp,#4
1619  04f1               L632:
1620                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1622  04f1 0d08          	tnz	(OFST+7,sp)
1623  04f3 2706          	jreq	L242
1624  04f5 7b08          	ld	a,(OFST+7,sp)
1625  04f7 a122          	cp	a,#34
1626  04f9 2603          	jrne	L042
1627  04fb               L242:
1628  04fb 4f            	clr	a
1629  04fc 2010          	jra	L442
1630  04fe               L042:
1631  04fe ae015b        	ldw	x,#347
1632  0501 89            	pushw	x
1633  0502 ae0000        	ldw	x,#0
1634  0505 89            	pushw	x
1635  0506 ae0000        	ldw	x,#L101
1636  0509 cd0000        	call	_assert_failed
1638  050c 5b04          	addw	sp,#4
1639  050e               L442:
1640                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1642  050e 7b09          	ld	a,(OFST+8,sp)
1643  0510 a155          	cp	a,#85
1644  0512 2704          	jreq	L052
1645  0514 0d09          	tnz	(OFST+8,sp)
1646  0516 2603          	jrne	L642
1647  0518               L052:
1648  0518 4f            	clr	a
1649  0519 2010          	jra	L252
1650  051b               L642:
1651  051b ae015c        	ldw	x,#348
1652  051e 89            	pushw	x
1653  051f ae0000        	ldw	x,#0
1654  0522 89            	pushw	x
1655  0523 ae0000        	ldw	x,#L101
1656  0526 cd0000        	call	_assert_failed
1658  0529 5b04          	addw	sp,#4
1659  052b               L252:
1660                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1662  052b c6525d        	ld	a,21085
1663  052e a4cf          	and	a,#207
1664  0530 c7525d        	ld	21085,a
1665                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1665                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1667  0533 7b08          	ld	a,(OFST+7,sp)
1668  0535 a420          	and	a,#32
1669  0537 6b01          	ld	(OFST+0,sp),a
1670  0539 7b03          	ld	a,(OFST+2,sp)
1671  053b a410          	and	a,#16
1672  053d 1a01          	or	a,(OFST+0,sp)
1673  053f ca525d        	or	a,21085
1674  0542 c7525d        	ld	21085,a
1675                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1675                     ; 358                           TIM1_OCMode);
1677  0545 c6525b        	ld	a,21083
1678  0548 a48f          	and	a,#143
1679  054a 1a02          	or	a,(OFST+1,sp)
1680  054c c7525b        	ld	21083,a
1681                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1683  054f 0d09          	tnz	(OFST+8,sp)
1684  0551 270a          	jreq	L734
1685                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1687  0553 c6526f        	ld	a,21103
1688  0556 aadf          	or	a,#223
1689  0558 c7526f        	ld	21103,a
1691  055b 2004          	jra	L144
1692  055d               L734:
1693                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1695  055d 721d526f      	bres	21103,#6
1696  0561               L144:
1697                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1699  0561 7b06          	ld	a,(OFST+5,sp)
1700  0563 c7526b        	ld	21099,a
1701                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1703  0566 7b07          	ld	a,(OFST+6,sp)
1704  0568 c7526c        	ld	21100,a
1705                     ; 373 }
1708  056b 5b03          	addw	sp,#3
1709  056d 81            	ret
1915                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1915                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1915                     ; 390                      uint8_t TIM1_DeadTime,
1915                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1915                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1915                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1915                     ; 394 {
1916                     	switch	.text
1917  056e               _TIM1_BDTRConfig:
1919  056e 89            	pushw	x
1920  056f 88            	push	a
1921       00000001      OFST:	set	1
1924                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1926  0570 9e            	ld	a,xh
1927  0571 a104          	cp	a,#4
1928  0573 2704          	jreq	L062
1929  0575 9e            	ld	a,xh
1930  0576 4d            	tnz	a
1931  0577 2603          	jrne	L652
1932  0579               L062:
1933  0579 4f            	clr	a
1934  057a 2010          	jra	L262
1935  057c               L652:
1936  057c ae018c        	ldw	x,#396
1937  057f 89            	pushw	x
1938  0580 ae0000        	ldw	x,#0
1939  0583 89            	pushw	x
1940  0584 ae0000        	ldw	x,#L101
1941  0587 cd0000        	call	_assert_failed
1943  058a 5b04          	addw	sp,#4
1944  058c               L262:
1945                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1947  058c 0d03          	tnz	(OFST+2,sp)
1948  058e 2712          	jreq	L662
1949  0590 7b03          	ld	a,(OFST+2,sp)
1950  0592 a101          	cp	a,#1
1951  0594 270c          	jreq	L662
1952  0596 7b03          	ld	a,(OFST+2,sp)
1953  0598 a102          	cp	a,#2
1954  059a 2706          	jreq	L662
1955  059c 7b03          	ld	a,(OFST+2,sp)
1956  059e a103          	cp	a,#3
1957  05a0 2603          	jrne	L462
1958  05a2               L662:
1959  05a2 4f            	clr	a
1960  05a3 2010          	jra	L072
1961  05a5               L462:
1962  05a5 ae018d        	ldw	x,#397
1963  05a8 89            	pushw	x
1964  05a9 ae0000        	ldw	x,#0
1965  05ac 89            	pushw	x
1966  05ad ae0000        	ldw	x,#L101
1967  05b0 cd0000        	call	_assert_failed
1969  05b3 5b04          	addw	sp,#4
1970  05b5               L072:
1971                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1973  05b5 7b07          	ld	a,(OFST+6,sp)
1974  05b7 a110          	cp	a,#16
1975  05b9 2704          	jreq	L472
1976  05bb 0d07          	tnz	(OFST+6,sp)
1977  05bd 2603          	jrne	L272
1978  05bf               L472:
1979  05bf 4f            	clr	a
1980  05c0 2010          	jra	L672
1981  05c2               L272:
1982  05c2 ae018e        	ldw	x,#398
1983  05c5 89            	pushw	x
1984  05c6 ae0000        	ldw	x,#0
1985  05c9 89            	pushw	x
1986  05ca ae0000        	ldw	x,#L101
1987  05cd cd0000        	call	_assert_failed
1989  05d0 5b04          	addw	sp,#4
1990  05d2               L672:
1991                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1993  05d2 0d08          	tnz	(OFST+7,sp)
1994  05d4 2706          	jreq	L203
1995  05d6 7b08          	ld	a,(OFST+7,sp)
1996  05d8 a120          	cp	a,#32
1997  05da 2603          	jrne	L003
1998  05dc               L203:
1999  05dc 4f            	clr	a
2000  05dd 2010          	jra	L403
2001  05df               L003:
2002  05df ae018f        	ldw	x,#399
2003  05e2 89            	pushw	x
2004  05e3 ae0000        	ldw	x,#0
2005  05e6 89            	pushw	x
2006  05e7 ae0000        	ldw	x,#L101
2007  05ea cd0000        	call	_assert_failed
2009  05ed 5b04          	addw	sp,#4
2010  05ef               L403:
2011                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
2013  05ef 7b09          	ld	a,(OFST+8,sp)
2014  05f1 a140          	cp	a,#64
2015  05f3 2704          	jreq	L013
2016  05f5 0d09          	tnz	(OFST+8,sp)
2017  05f7 2603          	jrne	L603
2018  05f9               L013:
2019  05f9 4f            	clr	a
2020  05fa 2010          	jra	L213
2021  05fc               L603:
2022  05fc ae0190        	ldw	x,#400
2023  05ff 89            	pushw	x
2024  0600 ae0000        	ldw	x,#0
2025  0603 89            	pushw	x
2026  0604 ae0000        	ldw	x,#L101
2027  0607 cd0000        	call	_assert_failed
2029  060a 5b04          	addw	sp,#4
2030  060c               L213:
2031                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
2033  060c 7b06          	ld	a,(OFST+5,sp)
2034  060e c7526e        	ld	21102,a
2035                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
2035                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
2035                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
2037  0611 7b07          	ld	a,(OFST+6,sp)
2038  0613 1a08          	or	a,(OFST+7,sp)
2039  0615 1a09          	or	a,(OFST+8,sp)
2040  0617 6b01          	ld	(OFST+0,sp),a
2041  0619 7b02          	ld	a,(OFST+1,sp)
2042  061b 1a03          	or	a,(OFST+2,sp)
2043  061d 1a01          	or	a,(OFST+0,sp)
2044  061f c7526d        	ld	21101,a
2045                     ; 409 }
2048  0622 5b03          	addw	sp,#3
2049  0624 81            	ret
2252                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
2252                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2252                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
2252                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2252                     ; 427                  uint8_t TIM1_ICFilter)
2252                     ; 428 {
2253                     	switch	.text
2254  0625               _TIM1_ICInit:
2256  0625 89            	pushw	x
2257       00000000      OFST:	set	0
2260                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
2262  0626 9e            	ld	a,xh
2263  0627 4d            	tnz	a
2264  0628 270f          	jreq	L023
2265  062a 9e            	ld	a,xh
2266  062b a101          	cp	a,#1
2267  062d 270a          	jreq	L023
2268  062f 9e            	ld	a,xh
2269  0630 a102          	cp	a,#2
2270  0632 2705          	jreq	L023
2271  0634 9e            	ld	a,xh
2272  0635 a103          	cp	a,#3
2273  0637 2603          	jrne	L613
2274  0639               L023:
2275  0639 4f            	clr	a
2276  063a 2010          	jra	L223
2277  063c               L613:
2278  063c ae01ae        	ldw	x,#430
2279  063f 89            	pushw	x
2280  0640 ae0000        	ldw	x,#0
2281  0643 89            	pushw	x
2282  0644 ae0000        	ldw	x,#L101
2283  0647 cd0000        	call	_assert_failed
2285  064a 5b04          	addw	sp,#4
2286  064c               L223:
2287                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2289  064c 0d02          	tnz	(OFST+2,sp)
2290  064e 2706          	jreq	L623
2291  0650 7b02          	ld	a,(OFST+2,sp)
2292  0652 a101          	cp	a,#1
2293  0654 2603          	jrne	L423
2294  0656               L623:
2295  0656 4f            	clr	a
2296  0657 2010          	jra	L033
2297  0659               L423:
2298  0659 ae01af        	ldw	x,#431
2299  065c 89            	pushw	x
2300  065d ae0000        	ldw	x,#0
2301  0660 89            	pushw	x
2302  0661 ae0000        	ldw	x,#L101
2303  0664 cd0000        	call	_assert_failed
2305  0667 5b04          	addw	sp,#4
2306  0669               L033:
2307                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2309  0669 7b05          	ld	a,(OFST+5,sp)
2310  066b a101          	cp	a,#1
2311  066d 270c          	jreq	L433
2312  066f 7b05          	ld	a,(OFST+5,sp)
2313  0671 a102          	cp	a,#2
2314  0673 2706          	jreq	L433
2315  0675 7b05          	ld	a,(OFST+5,sp)
2316  0677 a103          	cp	a,#3
2317  0679 2603          	jrne	L233
2318  067b               L433:
2319  067b 4f            	clr	a
2320  067c 2010          	jra	L633
2321  067e               L233:
2322  067e ae01b0        	ldw	x,#432
2323  0681 89            	pushw	x
2324  0682 ae0000        	ldw	x,#0
2325  0685 89            	pushw	x
2326  0686 ae0000        	ldw	x,#L101
2327  0689 cd0000        	call	_assert_failed
2329  068c 5b04          	addw	sp,#4
2330  068e               L633:
2331                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2333  068e 0d06          	tnz	(OFST+6,sp)
2334  0690 2712          	jreq	L243
2335  0692 7b06          	ld	a,(OFST+6,sp)
2336  0694 a104          	cp	a,#4
2337  0696 270c          	jreq	L243
2338  0698 7b06          	ld	a,(OFST+6,sp)
2339  069a a108          	cp	a,#8
2340  069c 2706          	jreq	L243
2341  069e 7b06          	ld	a,(OFST+6,sp)
2342  06a0 a10c          	cp	a,#12
2343  06a2 2603          	jrne	L043
2344  06a4               L243:
2345  06a4 4f            	clr	a
2346  06a5 2010          	jra	L443
2347  06a7               L043:
2348  06a7 ae01b1        	ldw	x,#433
2349  06aa 89            	pushw	x
2350  06ab ae0000        	ldw	x,#0
2351  06ae 89            	pushw	x
2352  06af ae0000        	ldw	x,#L101
2353  06b2 cd0000        	call	_assert_failed
2355  06b5 5b04          	addw	sp,#4
2356  06b7               L443:
2357                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2359  06b7 7b07          	ld	a,(OFST+7,sp)
2360  06b9 a110          	cp	a,#16
2361  06bb 2403          	jruge	L643
2362  06bd 4f            	clr	a
2363  06be 2010          	jra	L053
2364  06c0               L643:
2365  06c0 ae01b2        	ldw	x,#434
2366  06c3 89            	pushw	x
2367  06c4 ae0000        	ldw	x,#0
2368  06c7 89            	pushw	x
2369  06c8 ae0000        	ldw	x,#L101
2370  06cb cd0000        	call	_assert_failed
2372  06ce 5b04          	addw	sp,#4
2373  06d0               L053:
2374                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
2376  06d0 0d01          	tnz	(OFST+1,sp)
2377  06d2 2614          	jrne	L176
2378                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
2378                     ; 440                (uint8_t)TIM1_ICSelection,
2378                     ; 441                (uint8_t)TIM1_ICFilter);
2380  06d4 7b07          	ld	a,(OFST+7,sp)
2381  06d6 88            	push	a
2382  06d7 7b06          	ld	a,(OFST+6,sp)
2383  06d9 97            	ld	xl,a
2384  06da 7b03          	ld	a,(OFST+3,sp)
2385  06dc 95            	ld	xh,a
2386  06dd cd1573        	call	L3_TI1_Config
2388  06e0 84            	pop	a
2389                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2391  06e1 7b06          	ld	a,(OFST+6,sp)
2392  06e3 cd1272        	call	_TIM1_SetIC1Prescaler
2395  06e6 2046          	jra	L376
2396  06e8               L176:
2397                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
2399  06e8 7b01          	ld	a,(OFST+1,sp)
2400  06ea a101          	cp	a,#1
2401  06ec 2614          	jrne	L576
2402                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
2402                     ; 449                (uint8_t)TIM1_ICSelection,
2402                     ; 450                (uint8_t)TIM1_ICFilter);
2404  06ee 7b07          	ld	a,(OFST+7,sp)
2405  06f0 88            	push	a
2406  06f1 7b06          	ld	a,(OFST+6,sp)
2407  06f3 97            	ld	xl,a
2408  06f4 7b03          	ld	a,(OFST+3,sp)
2409  06f6 95            	ld	xh,a
2410  06f7 cd15a3        	call	L5_TI2_Config
2412  06fa 84            	pop	a
2413                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2415  06fb 7b06          	ld	a,(OFST+6,sp)
2416  06fd cd12a1        	call	_TIM1_SetIC2Prescaler
2419  0700 202c          	jra	L376
2420  0702               L576:
2421                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
2423  0702 7b01          	ld	a,(OFST+1,sp)
2424  0704 a102          	cp	a,#2
2425  0706 2614          	jrne	L107
2426                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
2426                     ; 458                (uint8_t)TIM1_ICSelection,
2426                     ; 459                (uint8_t)TIM1_ICFilter);
2428  0708 7b07          	ld	a,(OFST+7,sp)
2429  070a 88            	push	a
2430  070b 7b06          	ld	a,(OFST+6,sp)
2431  070d 97            	ld	xl,a
2432  070e 7b03          	ld	a,(OFST+3,sp)
2433  0710 95            	ld	xh,a
2434  0711 cd15d3        	call	L7_TI3_Config
2436  0714 84            	pop	a
2437                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2439  0715 7b06          	ld	a,(OFST+6,sp)
2440  0717 cd12d0        	call	_TIM1_SetIC3Prescaler
2443  071a 2012          	jra	L376
2444  071c               L107:
2445                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
2445                     ; 467                (uint8_t)TIM1_ICSelection,
2445                     ; 468                (uint8_t)TIM1_ICFilter);
2447  071c 7b07          	ld	a,(OFST+7,sp)
2448  071e 88            	push	a
2449  071f 7b06          	ld	a,(OFST+6,sp)
2450  0721 97            	ld	xl,a
2451  0722 7b03          	ld	a,(OFST+3,sp)
2452  0724 95            	ld	xh,a
2453  0725 cd1603        	call	L11_TI4_Config
2455  0728 84            	pop	a
2456                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2458  0729 7b06          	ld	a,(OFST+6,sp)
2459  072b cd12ff        	call	_TIM1_SetIC4Prescaler
2461  072e               L376:
2462                     ; 472 }
2465  072e 85            	popw	x
2466  072f 81            	ret
2563                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2563                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2563                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2563                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2563                     ; 492                      uint8_t TIM1_ICFilter)
2563                     ; 493 {
2564                     	switch	.text
2565  0730               _TIM1_PWMIConfig:
2567  0730 89            	pushw	x
2568  0731 89            	pushw	x
2569       00000002      OFST:	set	2
2572                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2574  0732 7b01          	ld	a,(OFST-1,sp)
2575  0734 97            	ld	xl,a
2576                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2578  0735 7b02          	ld	a,(OFST+0,sp)
2579  0737 97            	ld	xl,a
2580                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2582  0738 0d03          	tnz	(OFST+1,sp)
2583  073a 2706          	jreq	L653
2584  073c 7b03          	ld	a,(OFST+1,sp)
2585  073e a101          	cp	a,#1
2586  0740 2603          	jrne	L453
2587  0742               L653:
2588  0742 4f            	clr	a
2589  0743 2010          	jra	L063
2590  0745               L453:
2591  0745 ae01f2        	ldw	x,#498
2592  0748 89            	pushw	x
2593  0749 ae0000        	ldw	x,#0
2594  074c 89            	pushw	x
2595  074d ae0000        	ldw	x,#L101
2596  0750 cd0000        	call	_assert_failed
2598  0753 5b04          	addw	sp,#4
2599  0755               L063:
2600                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2602  0755 0d04          	tnz	(OFST+2,sp)
2603  0757 2706          	jreq	L463
2604  0759 7b04          	ld	a,(OFST+2,sp)
2605  075b a101          	cp	a,#1
2606  075d 2603          	jrne	L263
2607  075f               L463:
2608  075f 4f            	clr	a
2609  0760 2010          	jra	L663
2610  0762               L263:
2611  0762 ae01f3        	ldw	x,#499
2612  0765 89            	pushw	x
2613  0766 ae0000        	ldw	x,#0
2614  0769 89            	pushw	x
2615  076a ae0000        	ldw	x,#L101
2616  076d cd0000        	call	_assert_failed
2618  0770 5b04          	addw	sp,#4
2619  0772               L663:
2620                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2622  0772 7b07          	ld	a,(OFST+5,sp)
2623  0774 a101          	cp	a,#1
2624  0776 270c          	jreq	L273
2625  0778 7b07          	ld	a,(OFST+5,sp)
2626  077a a102          	cp	a,#2
2627  077c 2706          	jreq	L273
2628  077e 7b07          	ld	a,(OFST+5,sp)
2629  0780 a103          	cp	a,#3
2630  0782 2603          	jrne	L073
2631  0784               L273:
2632  0784 4f            	clr	a
2633  0785 2010          	jra	L473
2634  0787               L073:
2635  0787 ae01f4        	ldw	x,#500
2636  078a 89            	pushw	x
2637  078b ae0000        	ldw	x,#0
2638  078e 89            	pushw	x
2639  078f ae0000        	ldw	x,#L101
2640  0792 cd0000        	call	_assert_failed
2642  0795 5b04          	addw	sp,#4
2643  0797               L473:
2644                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2646  0797 0d08          	tnz	(OFST+6,sp)
2647  0799 2712          	jreq	L004
2648  079b 7b08          	ld	a,(OFST+6,sp)
2649  079d a104          	cp	a,#4
2650  079f 270c          	jreq	L004
2651  07a1 7b08          	ld	a,(OFST+6,sp)
2652  07a3 a108          	cp	a,#8
2653  07a5 2706          	jreq	L004
2654  07a7 7b08          	ld	a,(OFST+6,sp)
2655  07a9 a10c          	cp	a,#12
2656  07ab 2603          	jrne	L673
2657  07ad               L004:
2658  07ad 4f            	clr	a
2659  07ae 2010          	jra	L204
2660  07b0               L673:
2661  07b0 ae01f5        	ldw	x,#501
2662  07b3 89            	pushw	x
2663  07b4 ae0000        	ldw	x,#0
2664  07b7 89            	pushw	x
2665  07b8 ae0000        	ldw	x,#L101
2666  07bb cd0000        	call	_assert_failed
2668  07be 5b04          	addw	sp,#4
2669  07c0               L204:
2670                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2672  07c0 7b04          	ld	a,(OFST+2,sp)
2673  07c2 a101          	cp	a,#1
2674  07c4 2706          	jreq	L357
2675                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
2677  07c6 a601          	ld	a,#1
2678  07c8 6b01          	ld	(OFST-1,sp),a
2680  07ca 2002          	jra	L557
2681  07cc               L357:
2682                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
2684  07cc 0f01          	clr	(OFST-1,sp)
2685  07ce               L557:
2686                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2688  07ce 7b07          	ld	a,(OFST+5,sp)
2689  07d0 a101          	cp	a,#1
2690  07d2 2606          	jrne	L757
2691                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
2693  07d4 a602          	ld	a,#2
2694  07d6 6b02          	ld	(OFST+0,sp),a
2696  07d8 2004          	jra	L167
2697  07da               L757:
2698                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
2700  07da a601          	ld	a,#1
2701  07dc 6b02          	ld	(OFST+0,sp),a
2702  07de               L167:
2703                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
2705  07de 0d03          	tnz	(OFST+1,sp)
2706  07e0 2626          	jrne	L367
2707                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2707                     ; 527                (uint8_t)TIM1_ICFilter);
2709  07e2 7b09          	ld	a,(OFST+7,sp)
2710  07e4 88            	push	a
2711  07e5 7b08          	ld	a,(OFST+6,sp)
2712  07e7 97            	ld	xl,a
2713  07e8 7b05          	ld	a,(OFST+3,sp)
2714  07ea 95            	ld	xh,a
2715  07eb cd1573        	call	L3_TI1_Config
2717  07ee 84            	pop	a
2718                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2720  07ef 7b08          	ld	a,(OFST+6,sp)
2721  07f1 cd1272        	call	_TIM1_SetIC1Prescaler
2723                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2725  07f4 7b09          	ld	a,(OFST+7,sp)
2726  07f6 88            	push	a
2727  07f7 7b03          	ld	a,(OFST+1,sp)
2728  07f9 97            	ld	xl,a
2729  07fa 7b02          	ld	a,(OFST+0,sp)
2730  07fc 95            	ld	xh,a
2731  07fd cd15a3        	call	L5_TI2_Config
2733  0800 84            	pop	a
2734                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2736  0801 7b08          	ld	a,(OFST+6,sp)
2737  0803 cd12a1        	call	_TIM1_SetIC2Prescaler
2740  0806 2024          	jra	L567
2741  0808               L367:
2742                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2742                     ; 542                (uint8_t)TIM1_ICFilter);
2744  0808 7b09          	ld	a,(OFST+7,sp)
2745  080a 88            	push	a
2746  080b 7b08          	ld	a,(OFST+6,sp)
2747  080d 97            	ld	xl,a
2748  080e 7b05          	ld	a,(OFST+3,sp)
2749  0810 95            	ld	xh,a
2750  0811 cd15a3        	call	L5_TI2_Config
2752  0814 84            	pop	a
2753                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2755  0815 7b08          	ld	a,(OFST+6,sp)
2756  0817 cd12a1        	call	_TIM1_SetIC2Prescaler
2758                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2760  081a 7b09          	ld	a,(OFST+7,sp)
2761  081c 88            	push	a
2762  081d 7b03          	ld	a,(OFST+1,sp)
2763  081f 97            	ld	xl,a
2764  0820 7b02          	ld	a,(OFST+0,sp)
2765  0822 95            	ld	xh,a
2766  0823 cd1573        	call	L3_TI1_Config
2768  0826 84            	pop	a
2769                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2771  0827 7b08          	ld	a,(OFST+6,sp)
2772  0829 cd1272        	call	_TIM1_SetIC1Prescaler
2774  082c               L567:
2775                     ; 553 }
2778  082c 5b04          	addw	sp,#4
2779  082e 81            	ret
2835                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2835                     ; 562 {
2836                     	switch	.text
2837  082f               _TIM1_Cmd:
2839  082f 88            	push	a
2840       00000000      OFST:	set	0
2843                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2845  0830 4d            	tnz	a
2846  0831 2704          	jreq	L014
2847  0833 a101          	cp	a,#1
2848  0835 2603          	jrne	L604
2849  0837               L014:
2850  0837 4f            	clr	a
2851  0838 2010          	jra	L214
2852  083a               L604:
2853  083a ae0234        	ldw	x,#564
2854  083d 89            	pushw	x
2855  083e ae0000        	ldw	x,#0
2856  0841 89            	pushw	x
2857  0842 ae0000        	ldw	x,#L101
2858  0845 cd0000        	call	_assert_failed
2860  0848 5b04          	addw	sp,#4
2861  084a               L214:
2862                     ; 567   if (NewState != DISABLE)
2864  084a 0d01          	tnz	(OFST+1,sp)
2865  084c 2706          	jreq	L5101
2866                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2868  084e 72105250      	bset	21072,#0
2870  0852 2004          	jra	L7101
2871  0854               L5101:
2872                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2874  0854 72115250      	bres	21072,#0
2875  0858               L7101:
2876                     ; 575 }
2879  0858 84            	pop	a
2880  0859 81            	ret
2917                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2917                     ; 584 {
2918                     	switch	.text
2919  085a               _TIM1_CtrlPWMOutputs:
2921  085a 88            	push	a
2922       00000000      OFST:	set	0
2925                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2927  085b 4d            	tnz	a
2928  085c 2704          	jreq	L024
2929  085e a101          	cp	a,#1
2930  0860 2603          	jrne	L614
2931  0862               L024:
2932  0862 4f            	clr	a
2933  0863 2010          	jra	L224
2934  0865               L614:
2935  0865 ae024a        	ldw	x,#586
2936  0868 89            	pushw	x
2937  0869 ae0000        	ldw	x,#0
2938  086c 89            	pushw	x
2939  086d ae0000        	ldw	x,#L101
2940  0870 cd0000        	call	_assert_failed
2942  0873 5b04          	addw	sp,#4
2943  0875               L224:
2944                     ; 590   if (NewState != DISABLE)
2946  0875 0d01          	tnz	(OFST+1,sp)
2947  0877 2706          	jreq	L7301
2948                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2950  0879 721e526d      	bset	21101,#7
2952  087d 2004          	jra	L1401
2953  087f               L7301:
2954                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2956  087f 721f526d      	bres	21101,#7
2957  0883               L1401:
2958                     ; 598 }
2961  0883 84            	pop	a
2962  0884 81            	ret
3070                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
3070                     ; 618 {
3071                     	switch	.text
3072  0885               _TIM1_ITConfig:
3074  0885 89            	pushw	x
3075       00000000      OFST:	set	0
3078                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
3080  0886 9e            	ld	a,xh
3081  0887 4d            	tnz	a
3082  0888 2703          	jreq	L624
3083  088a 4f            	clr	a
3084  088b 2010          	jra	L034
3085  088d               L624:
3086  088d ae026c        	ldw	x,#620
3087  0890 89            	pushw	x
3088  0891 ae0000        	ldw	x,#0
3089  0894 89            	pushw	x
3090  0895 ae0000        	ldw	x,#L101
3091  0898 cd0000        	call	_assert_failed
3093  089b 5b04          	addw	sp,#4
3094  089d               L034:
3095                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3097  089d 0d02          	tnz	(OFST+2,sp)
3098  089f 2706          	jreq	L434
3099  08a1 7b02          	ld	a,(OFST+2,sp)
3100  08a3 a101          	cp	a,#1
3101  08a5 2603          	jrne	L234
3102  08a7               L434:
3103  08a7 4f            	clr	a
3104  08a8 2010          	jra	L634
3105  08aa               L234:
3106  08aa ae026d        	ldw	x,#621
3107  08ad 89            	pushw	x
3108  08ae ae0000        	ldw	x,#0
3109  08b1 89            	pushw	x
3110  08b2 ae0000        	ldw	x,#L101
3111  08b5 cd0000        	call	_assert_failed
3113  08b8 5b04          	addw	sp,#4
3114  08ba               L634:
3115                     ; 623   if (NewState != DISABLE)
3117  08ba 0d02          	tnz	(OFST+2,sp)
3118  08bc 270a          	jreq	L1111
3119                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
3121  08be c65254        	ld	a,21076
3122  08c1 1a01          	or	a,(OFST+1,sp)
3123  08c3 c75254        	ld	21076,a
3125  08c6 2009          	jra	L3111
3126  08c8               L1111:
3127                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
3129  08c8 7b01          	ld	a,(OFST+1,sp)
3130  08ca 43            	cpl	a
3131  08cb c45254        	and	a,21076
3132  08ce c75254        	ld	21076,a
3133  08d1               L3111:
3134                     ; 633 }
3137  08d1 85            	popw	x
3138  08d2 81            	ret
3162                     ; 640 void TIM1_InternalClockConfig(void)
3162                     ; 641 {
3163                     	switch	.text
3164  08d3               _TIM1_InternalClockConfig:
3168                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
3170  08d3 c65252        	ld	a,21074
3171  08d6 a4f8          	and	a,#248
3172  08d8 c75252        	ld	21074,a
3173                     ; 644 }
3176  08db 81            	ret
3294                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3294                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3294                     ; 664                               uint8_t ExtTRGFilter)
3294                     ; 665 {
3295                     	switch	.text
3296  08dc               _TIM1_ETRClockMode1Config:
3298  08dc 89            	pushw	x
3299       00000000      OFST:	set	0
3302                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3304  08dd 9e            	ld	a,xh
3305  08de 4d            	tnz	a
3306  08df 270f          	jreq	L644
3307  08e1 9e            	ld	a,xh
3308  08e2 a110          	cp	a,#16
3309  08e4 270a          	jreq	L644
3310  08e6 9e            	ld	a,xh
3311  08e7 a120          	cp	a,#32
3312  08e9 2705          	jreq	L644
3313  08eb 9e            	ld	a,xh
3314  08ec a130          	cp	a,#48
3315  08ee 2603          	jrne	L444
3316  08f0               L644:
3317  08f0 4f            	clr	a
3318  08f1 2010          	jra	L054
3319  08f3               L444:
3320  08f3 ae029b        	ldw	x,#667
3321  08f6 89            	pushw	x
3322  08f7 ae0000        	ldw	x,#0
3323  08fa 89            	pushw	x
3324  08fb ae0000        	ldw	x,#L101
3325  08fe cd0000        	call	_assert_failed
3327  0901 5b04          	addw	sp,#4
3328  0903               L054:
3329                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3331  0903 7b02          	ld	a,(OFST+2,sp)
3332  0905 a180          	cp	a,#128
3333  0907 2704          	jreq	L454
3334  0909 0d02          	tnz	(OFST+2,sp)
3335  090b 2603          	jrne	L254
3336  090d               L454:
3337  090d 4f            	clr	a
3338  090e 2010          	jra	L654
3339  0910               L254:
3340  0910 ae029c        	ldw	x,#668
3341  0913 89            	pushw	x
3342  0914 ae0000        	ldw	x,#0
3343  0917 89            	pushw	x
3344  0918 ae0000        	ldw	x,#L101
3345  091b cd0000        	call	_assert_failed
3347  091e 5b04          	addw	sp,#4
3348  0920               L654:
3349                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3351  0920 7b05          	ld	a,(OFST+5,sp)
3352  0922 88            	push	a
3353  0923 7b03          	ld	a,(OFST+3,sp)
3354  0925 97            	ld	xl,a
3355  0926 7b02          	ld	a,(OFST+2,sp)
3356  0928 95            	ld	xh,a
3357  0929 ad63          	call	_TIM1_ETRConfig
3359  092b 84            	pop	a
3360                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
3360                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
3362  092c c65252        	ld	a,21074
3363  092f a488          	and	a,#136
3364  0931 aa77          	or	a,#119
3365  0933 c75252        	ld	21074,a
3366                     ; 676 }
3369  0936 85            	popw	x
3370  0937 81            	ret
3429                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3429                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3429                     ; 696                               uint8_t ExtTRGFilter)
3429                     ; 697 {
3430                     	switch	.text
3431  0938               _TIM1_ETRClockMode2Config:
3433  0938 89            	pushw	x
3434       00000000      OFST:	set	0
3437                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3439  0939 9e            	ld	a,xh
3440  093a 4d            	tnz	a
3441  093b 270f          	jreq	L464
3442  093d 9e            	ld	a,xh
3443  093e a110          	cp	a,#16
3444  0940 270a          	jreq	L464
3445  0942 9e            	ld	a,xh
3446  0943 a120          	cp	a,#32
3447  0945 2705          	jreq	L464
3448  0947 9e            	ld	a,xh
3449  0948 a130          	cp	a,#48
3450  094a 2603          	jrne	L264
3451  094c               L464:
3452  094c 4f            	clr	a
3453  094d 2010          	jra	L664
3454  094f               L264:
3455  094f ae02bb        	ldw	x,#699
3456  0952 89            	pushw	x
3457  0953 ae0000        	ldw	x,#0
3458  0956 89            	pushw	x
3459  0957 ae0000        	ldw	x,#L101
3460  095a cd0000        	call	_assert_failed
3462  095d 5b04          	addw	sp,#4
3463  095f               L664:
3464                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3466  095f 7b02          	ld	a,(OFST+2,sp)
3467  0961 a180          	cp	a,#128
3468  0963 2704          	jreq	L274
3469  0965 0d02          	tnz	(OFST+2,sp)
3470  0967 2603          	jrne	L074
3471  0969               L274:
3472  0969 4f            	clr	a
3473  096a 2010          	jra	L474
3474  096c               L074:
3475  096c ae02bc        	ldw	x,#700
3476  096f 89            	pushw	x
3477  0970 ae0000        	ldw	x,#0
3478  0973 89            	pushw	x
3479  0974 ae0000        	ldw	x,#L101
3480  0977 cd0000        	call	_assert_failed
3482  097a 5b04          	addw	sp,#4
3483  097c               L474:
3484                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3486  097c 7b05          	ld	a,(OFST+5,sp)
3487  097e 88            	push	a
3488  097f 7b03          	ld	a,(OFST+3,sp)
3489  0981 97            	ld	xl,a
3490  0982 7b02          	ld	a,(OFST+2,sp)
3491  0984 95            	ld	xh,a
3492  0985 ad07          	call	_TIM1_ETRConfig
3494  0987 84            	pop	a
3495                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
3497  0988 721c5253      	bset	21075,#6
3498                     ; 707 }
3501  098c 85            	popw	x
3502  098d 81            	ret
3559                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3559                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3559                     ; 727                     uint8_t ExtTRGFilter)
3559                     ; 728 {
3560                     	switch	.text
3561  098e               _TIM1_ETRConfig:
3563  098e 89            	pushw	x
3564       00000000      OFST:	set	0
3567                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3569  098f 7b05          	ld	a,(OFST+5,sp)
3570  0991 a110          	cp	a,#16
3571  0993 2403          	jruge	L005
3572  0995 4f            	clr	a
3573  0996 2010          	jra	L205
3574  0998               L005:
3575  0998 ae02da        	ldw	x,#730
3576  099b 89            	pushw	x
3577  099c ae0000        	ldw	x,#0
3578  099f 89            	pushw	x
3579  09a0 ae0000        	ldw	x,#L101
3580  09a3 cd0000        	call	_assert_failed
3582  09a6 5b04          	addw	sp,#4
3583  09a8               L205:
3584                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3584                     ; 733                          (uint8_t)ExtTRGFilter );
3586  09a8 7b01          	ld	a,(OFST+1,sp)
3587  09aa 1a02          	or	a,(OFST+2,sp)
3588  09ac 1a05          	or	a,(OFST+5,sp)
3589  09ae ca5253        	or	a,21075
3590  09b1 c75253        	ld	21075,a
3591                     ; 734 }
3594  09b4 85            	popw	x
3595  09b5 81            	ret
3685                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3685                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3685                     ; 753                                  uint8_t ICFilter)
3685                     ; 754 {
3686                     	switch	.text
3687  09b6               _TIM1_TIxExternalClockConfig:
3689  09b6 89            	pushw	x
3690       00000000      OFST:	set	0
3693                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3695  09b7 9e            	ld	a,xh
3696  09b8 a140          	cp	a,#64
3697  09ba 270a          	jreq	L015
3698  09bc 9e            	ld	a,xh
3699  09bd a160          	cp	a,#96
3700  09bf 2705          	jreq	L015
3701  09c1 9e            	ld	a,xh
3702  09c2 a150          	cp	a,#80
3703  09c4 2603          	jrne	L605
3704  09c6               L015:
3705  09c6 4f            	clr	a
3706  09c7 2010          	jra	L215
3707  09c9               L605:
3708  09c9 ae02f4        	ldw	x,#756
3709  09cc 89            	pushw	x
3710  09cd ae0000        	ldw	x,#0
3711  09d0 89            	pushw	x
3712  09d1 ae0000        	ldw	x,#L101
3713  09d4 cd0000        	call	_assert_failed
3715  09d7 5b04          	addw	sp,#4
3716  09d9               L215:
3717                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3719  09d9 0d02          	tnz	(OFST+2,sp)
3720  09db 2706          	jreq	L615
3721  09dd 7b02          	ld	a,(OFST+2,sp)
3722  09df a101          	cp	a,#1
3723  09e1 2603          	jrne	L415
3724  09e3               L615:
3725  09e3 4f            	clr	a
3726  09e4 2010          	jra	L025
3727  09e6               L415:
3728  09e6 ae02f5        	ldw	x,#757
3729  09e9 89            	pushw	x
3730  09ea ae0000        	ldw	x,#0
3731  09ed 89            	pushw	x
3732  09ee ae0000        	ldw	x,#L101
3733  09f1 cd0000        	call	_assert_failed
3735  09f4 5b04          	addw	sp,#4
3736  09f6               L025:
3737                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3739  09f6 7b05          	ld	a,(OFST+5,sp)
3740  09f8 a110          	cp	a,#16
3741  09fa 2403          	jruge	L225
3742  09fc 4f            	clr	a
3743  09fd 2010          	jra	L425
3744  09ff               L225:
3745  09ff ae02f6        	ldw	x,#758
3746  0a02 89            	pushw	x
3747  0a03 ae0000        	ldw	x,#0
3748  0a06 89            	pushw	x
3749  0a07 ae0000        	ldw	x,#L101
3750  0a0a cd0000        	call	_assert_failed
3752  0a0d 5b04          	addw	sp,#4
3753  0a0f               L425:
3754                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3756  0a0f 7b01          	ld	a,(OFST+1,sp)
3757  0a11 a160          	cp	a,#96
3758  0a13 260f          	jrne	L3131
3759                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3761  0a15 7b05          	ld	a,(OFST+5,sp)
3762  0a17 88            	push	a
3763  0a18 ae0001        	ldw	x,#1
3764  0a1b 7b03          	ld	a,(OFST+3,sp)
3765  0a1d 95            	ld	xh,a
3766  0a1e cd15a3        	call	L5_TI2_Config
3768  0a21 84            	pop	a
3770  0a22 200d          	jra	L5131
3771  0a24               L3131:
3772                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3774  0a24 7b05          	ld	a,(OFST+5,sp)
3775  0a26 88            	push	a
3776  0a27 ae0001        	ldw	x,#1
3777  0a2a 7b03          	ld	a,(OFST+3,sp)
3778  0a2c 95            	ld	xh,a
3779  0a2d cd1573        	call	L3_TI1_Config
3781  0a30 84            	pop	a
3782  0a31               L5131:
3783                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3785  0a31 7b01          	ld	a,(OFST+1,sp)
3786  0a33 ad0a          	call	_TIM1_SelectInputTrigger
3788                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3790  0a35 c65252        	ld	a,21074
3791  0a38 aa07          	or	a,#7
3792  0a3a c75252        	ld	21074,a
3793                     ; 775 }
3796  0a3d 85            	popw	x
3797  0a3e 81            	ret
3883                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3883                     ; 788 {
3884                     	switch	.text
3885  0a3f               _TIM1_SelectInputTrigger:
3887  0a3f 88            	push	a
3888       00000000      OFST:	set	0
3891                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3893  0a40 a140          	cp	a,#64
3894  0a42 2713          	jreq	L235
3895  0a44 a150          	cp	a,#80
3896  0a46 270f          	jreq	L235
3897  0a48 a160          	cp	a,#96
3898  0a4a 270b          	jreq	L235
3899  0a4c a170          	cp	a,#112
3900  0a4e 2707          	jreq	L235
3901  0a50 a130          	cp	a,#48
3902  0a52 2703          	jreq	L235
3903  0a54 4d            	tnz	a
3904  0a55 2603          	jrne	L035
3905  0a57               L235:
3906  0a57 4f            	clr	a
3907  0a58 2010          	jra	L435
3908  0a5a               L035:
3909  0a5a ae0316        	ldw	x,#790
3910  0a5d 89            	pushw	x
3911  0a5e ae0000        	ldw	x,#0
3912  0a61 89            	pushw	x
3913  0a62 ae0000        	ldw	x,#L101
3914  0a65 cd0000        	call	_assert_failed
3916  0a68 5b04          	addw	sp,#4
3917  0a6a               L435:
3918                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3920  0a6a c65252        	ld	a,21074
3921  0a6d a48f          	and	a,#143
3922  0a6f 1a01          	or	a,(OFST+1,sp)
3923  0a71 c75252        	ld	21074,a
3924                     ; 794 }
3927  0a74 84            	pop	a
3928  0a75 81            	ret
3965                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3965                     ; 804 {
3966                     	switch	.text
3967  0a76               _TIM1_UpdateDisableConfig:
3969  0a76 88            	push	a
3970       00000000      OFST:	set	0
3973                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3975  0a77 4d            	tnz	a
3976  0a78 2704          	jreq	L245
3977  0a7a a101          	cp	a,#1
3978  0a7c 2603          	jrne	L045
3979  0a7e               L245:
3980  0a7e 4f            	clr	a
3981  0a7f 2010          	jra	L445
3982  0a81               L045:
3983  0a81 ae0326        	ldw	x,#806
3984  0a84 89            	pushw	x
3985  0a85 ae0000        	ldw	x,#0
3986  0a88 89            	pushw	x
3987  0a89 ae0000        	ldw	x,#L101
3988  0a8c cd0000        	call	_assert_failed
3990  0a8f 5b04          	addw	sp,#4
3991  0a91               L445:
3992                     ; 809   if (NewState != DISABLE)
3994  0a91 0d01          	tnz	(OFST+1,sp)
3995  0a93 2706          	jreq	L3731
3996                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
3998  0a95 72125250      	bset	21072,#1
4000  0a99 2004          	jra	L5731
4001  0a9b               L3731:
4002                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
4004  0a9b 72135250      	bres	21072,#1
4005  0a9f               L5731:
4006                     ; 817 }
4009  0a9f 84            	pop	a
4010  0aa0 81            	ret
4069                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
4069                     ; 828 {
4070                     	switch	.text
4071  0aa1               _TIM1_UpdateRequestConfig:
4073  0aa1 88            	push	a
4074       00000000      OFST:	set	0
4077                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
4079  0aa2 4d            	tnz	a
4080  0aa3 2704          	jreq	L255
4081  0aa5 a101          	cp	a,#1
4082  0aa7 2603          	jrne	L055
4083  0aa9               L255:
4084  0aa9 4f            	clr	a
4085  0aaa 2010          	jra	L455
4086  0aac               L055:
4087  0aac ae033e        	ldw	x,#830
4088  0aaf 89            	pushw	x
4089  0ab0 ae0000        	ldw	x,#0
4090  0ab3 89            	pushw	x
4091  0ab4 ae0000        	ldw	x,#L101
4092  0ab7 cd0000        	call	_assert_failed
4094  0aba 5b04          	addw	sp,#4
4095  0abc               L455:
4096                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
4098  0abc 0d01          	tnz	(OFST+1,sp)
4099  0abe 2706          	jreq	L5241
4100                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
4102  0ac0 72145250      	bset	21072,#2
4104  0ac4 2004          	jra	L7241
4105  0ac6               L5241:
4106                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
4108  0ac6 72155250      	bres	21072,#2
4109  0aca               L7241:
4110                     ; 841 }
4113  0aca 84            	pop	a
4114  0acb 81            	ret
4151                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
4151                     ; 850 {
4152                     	switch	.text
4153  0acc               _TIM1_SelectHallSensor:
4155  0acc 88            	push	a
4156       00000000      OFST:	set	0
4159                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4161  0acd 4d            	tnz	a
4162  0ace 2704          	jreq	L265
4163  0ad0 a101          	cp	a,#1
4164  0ad2 2603          	jrne	L065
4165  0ad4               L265:
4166  0ad4 4f            	clr	a
4167  0ad5 2010          	jra	L465
4168  0ad7               L065:
4169  0ad7 ae0354        	ldw	x,#852
4170  0ada 89            	pushw	x
4171  0adb ae0000        	ldw	x,#0
4172  0ade 89            	pushw	x
4173  0adf ae0000        	ldw	x,#L101
4174  0ae2 cd0000        	call	_assert_failed
4176  0ae5 5b04          	addw	sp,#4
4177  0ae7               L465:
4178                     ; 855   if (NewState != DISABLE)
4180  0ae7 0d01          	tnz	(OFST+1,sp)
4181  0ae9 2706          	jreq	L7441
4182                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
4184  0aeb 721e5251      	bset	21073,#7
4186  0aef 2004          	jra	L1541
4187  0af1               L7441:
4188                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
4190  0af1 721f5251      	bres	21073,#7
4191  0af5               L1541:
4192                     ; 863 }
4195  0af5 84            	pop	a
4196  0af6 81            	ret
4254                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
4254                     ; 874 {
4255                     	switch	.text
4256  0af7               _TIM1_SelectOnePulseMode:
4258  0af7 88            	push	a
4259       00000000      OFST:	set	0
4262                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
4264  0af8 a101          	cp	a,#1
4265  0afa 2703          	jreq	L275
4266  0afc 4d            	tnz	a
4267  0afd 2603          	jrne	L075
4268  0aff               L275:
4269  0aff 4f            	clr	a
4270  0b00 2010          	jra	L475
4271  0b02               L075:
4272  0b02 ae036c        	ldw	x,#876
4273  0b05 89            	pushw	x
4274  0b06 ae0000        	ldw	x,#0
4275  0b09 89            	pushw	x
4276  0b0a ae0000        	ldw	x,#L101
4277  0b0d cd0000        	call	_assert_failed
4279  0b10 5b04          	addw	sp,#4
4280  0b12               L475:
4281                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
4283  0b12 0d01          	tnz	(OFST+1,sp)
4284  0b14 2706          	jreq	L1051
4285                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
4287  0b16 72165250      	bset	21072,#3
4289  0b1a 2004          	jra	L3051
4290  0b1c               L1051:
4291                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
4293  0b1c 72175250      	bres	21072,#3
4294  0b20               L3051:
4295                     ; 888 }
4298  0b20 84            	pop	a
4299  0b21 81            	ret
4398                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
4398                     ; 904 {
4399                     	switch	.text
4400  0b22               _TIM1_SelectOutputTrigger:
4402  0b22 88            	push	a
4403       00000000      OFST:	set	0
4406                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
4408  0b23 4d            	tnz	a
4409  0b24 2718          	jreq	L206
4410  0b26 a110          	cp	a,#16
4411  0b28 2714          	jreq	L206
4412  0b2a a120          	cp	a,#32
4413  0b2c 2710          	jreq	L206
4414  0b2e a130          	cp	a,#48
4415  0b30 270c          	jreq	L206
4416  0b32 a140          	cp	a,#64
4417  0b34 2708          	jreq	L206
4418  0b36 a150          	cp	a,#80
4419  0b38 2704          	jreq	L206
4420  0b3a a160          	cp	a,#96
4421  0b3c 2603          	jrne	L006
4422  0b3e               L206:
4423  0b3e 4f            	clr	a
4424  0b3f 2010          	jra	L406
4425  0b41               L006:
4426  0b41 ae038a        	ldw	x,#906
4427  0b44 89            	pushw	x
4428  0b45 ae0000        	ldw	x,#0
4429  0b48 89            	pushw	x
4430  0b49 ae0000        	ldw	x,#L101
4431  0b4c cd0000        	call	_assert_failed
4433  0b4f 5b04          	addw	sp,#4
4434  0b51               L406:
4435                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
4435                     ; 910                         (uint8_t) TIM1_TRGOSource);
4437  0b51 c65251        	ld	a,21073
4438  0b54 a48f          	and	a,#143
4439  0b56 1a01          	or	a,(OFST+1,sp)
4440  0b58 c75251        	ld	21073,a
4441                     ; 911 }
4444  0b5b 84            	pop	a
4445  0b5c 81            	ret
4520                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4520                     ; 924 {
4521                     	switch	.text
4522  0b5d               _TIM1_SelectSlaveMode:
4524  0b5d 88            	push	a
4525       00000000      OFST:	set	0
4528                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4530  0b5e a104          	cp	a,#4
4531  0b60 270c          	jreq	L216
4532  0b62 a105          	cp	a,#5
4533  0b64 2708          	jreq	L216
4534  0b66 a106          	cp	a,#6
4535  0b68 2704          	jreq	L216
4536  0b6a a107          	cp	a,#7
4537  0b6c 2603          	jrne	L016
4538  0b6e               L216:
4539  0b6e 4f            	clr	a
4540  0b6f 2010          	jra	L416
4541  0b71               L016:
4542  0b71 ae039e        	ldw	x,#926
4543  0b74 89            	pushw	x
4544  0b75 ae0000        	ldw	x,#0
4545  0b78 89            	pushw	x
4546  0b79 ae0000        	ldw	x,#L101
4547  0b7c cd0000        	call	_assert_failed
4549  0b7f 5b04          	addw	sp,#4
4550  0b81               L416:
4551                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4551                     ; 930                          (uint8_t)TIM1_SlaveMode);
4553  0b81 c65252        	ld	a,21074
4554  0b84 a4f8          	and	a,#248
4555  0b86 1a01          	or	a,(OFST+1,sp)
4556  0b88 c75252        	ld	21074,a
4557                     ; 931 }
4560  0b8b 84            	pop	a
4561  0b8c 81            	ret
4598                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4598                     ; 940 {
4599                     	switch	.text
4600  0b8d               _TIM1_SelectMasterSlaveMode:
4602  0b8d 88            	push	a
4603       00000000      OFST:	set	0
4606                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4608  0b8e 4d            	tnz	a
4609  0b8f 2704          	jreq	L226
4610  0b91 a101          	cp	a,#1
4611  0b93 2603          	jrne	L026
4612  0b95               L226:
4613  0b95 4f            	clr	a
4614  0b96 2010          	jra	L426
4615  0b98               L026:
4616  0b98 ae03ae        	ldw	x,#942
4617  0b9b 89            	pushw	x
4618  0b9c ae0000        	ldw	x,#0
4619  0b9f 89            	pushw	x
4620  0ba0 ae0000        	ldw	x,#L101
4621  0ba3 cd0000        	call	_assert_failed
4623  0ba6 5b04          	addw	sp,#4
4624  0ba8               L426:
4625                     ; 945   if (NewState != DISABLE)
4627  0ba8 0d01          	tnz	(OFST+1,sp)
4628  0baa 2706          	jreq	L5161
4629                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
4631  0bac 721e5252      	bset	21074,#7
4633  0bb0 2004          	jra	L7161
4634  0bb2               L5161:
4635                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4637  0bb2 721f5252      	bres	21074,#7
4638  0bb6               L7161:
4639                     ; 953 }
4642  0bb6 84            	pop	a
4643  0bb7 81            	ret
4730                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4730                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4730                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4730                     ; 978 {
4731                     	switch	.text
4732  0bb8               _TIM1_EncoderInterfaceConfig:
4734  0bb8 89            	pushw	x
4735       00000000      OFST:	set	0
4738                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4740  0bb9 9e            	ld	a,xh
4741  0bba a101          	cp	a,#1
4742  0bbc 270a          	jreq	L236
4743  0bbe 9e            	ld	a,xh
4744  0bbf a102          	cp	a,#2
4745  0bc1 2705          	jreq	L236
4746  0bc3 9e            	ld	a,xh
4747  0bc4 a103          	cp	a,#3
4748  0bc6 2603          	jrne	L036
4749  0bc8               L236:
4750  0bc8 4f            	clr	a
4751  0bc9 2010          	jra	L436
4752  0bcb               L036:
4753  0bcb ae03d4        	ldw	x,#980
4754  0bce 89            	pushw	x
4755  0bcf ae0000        	ldw	x,#0
4756  0bd2 89            	pushw	x
4757  0bd3 ae0000        	ldw	x,#L101
4758  0bd6 cd0000        	call	_assert_failed
4760  0bd9 5b04          	addw	sp,#4
4761  0bdb               L436:
4762                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4764  0bdb 0d02          	tnz	(OFST+2,sp)
4765  0bdd 2706          	jreq	L046
4766  0bdf 7b02          	ld	a,(OFST+2,sp)
4767  0be1 a101          	cp	a,#1
4768  0be3 2603          	jrne	L636
4769  0be5               L046:
4770  0be5 4f            	clr	a
4771  0be6 2010          	jra	L246
4772  0be8               L636:
4773  0be8 ae03d5        	ldw	x,#981
4774  0beb 89            	pushw	x
4775  0bec ae0000        	ldw	x,#0
4776  0bef 89            	pushw	x
4777  0bf0 ae0000        	ldw	x,#L101
4778  0bf3 cd0000        	call	_assert_failed
4780  0bf6 5b04          	addw	sp,#4
4781  0bf8               L246:
4782                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4784  0bf8 0d05          	tnz	(OFST+5,sp)
4785  0bfa 2706          	jreq	L646
4786  0bfc 7b05          	ld	a,(OFST+5,sp)
4787  0bfe a101          	cp	a,#1
4788  0c00 2603          	jrne	L446
4789  0c02               L646:
4790  0c02 4f            	clr	a
4791  0c03 2010          	jra	L056
4792  0c05               L446:
4793  0c05 ae03d6        	ldw	x,#982
4794  0c08 89            	pushw	x
4795  0c09 ae0000        	ldw	x,#0
4796  0c0c 89            	pushw	x
4797  0c0d ae0000        	ldw	x,#L101
4798  0c10 cd0000        	call	_assert_failed
4800  0c13 5b04          	addw	sp,#4
4801  0c15               L056:
4802                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4804  0c15 0d02          	tnz	(OFST+2,sp)
4805  0c17 2706          	jreq	L1661
4806                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4808  0c19 7212525c      	bset	21084,#1
4810  0c1d 2004          	jra	L3661
4811  0c1f               L1661:
4812                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4814  0c1f 7213525c      	bres	21084,#1
4815  0c23               L3661:
4816                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4818  0c23 0d05          	tnz	(OFST+5,sp)
4819  0c25 2706          	jreq	L5661
4820                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4822  0c27 721a525c      	bset	21084,#5
4824  0c2b 2004          	jra	L7661
4825  0c2d               L5661:
4826                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4828  0c2d 721b525c      	bres	21084,#5
4829  0c31               L7661:
4830                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4830                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
4832  0c31 c65252        	ld	a,21074
4833  0c34 a4f0          	and	a,#240
4834  0c36 1a01          	or	a,(OFST+1,sp)
4835  0c38 c75252        	ld	21074,a
4836                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4836                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
4838  0c3b c65258        	ld	a,21080
4839  0c3e a4fc          	and	a,#252
4840  0c40 aa01          	or	a,#1
4841  0c42 c75258        	ld	21080,a
4842                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4842                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
4844  0c45 c65259        	ld	a,21081
4845  0c48 a4fc          	and	a,#252
4846  0c4a aa01          	or	a,#1
4847  0c4c c75259        	ld	21081,a
4848                     ; 1011 }
4851  0c4f 85            	popw	x
4852  0c50 81            	ret
4920                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
4920                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4920                     ; 1025 {
4921                     	switch	.text
4922  0c51               _TIM1_PrescalerConfig:
4924  0c51 89            	pushw	x
4925       00000000      OFST:	set	0
4928                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4930  0c52 0d05          	tnz	(OFST+5,sp)
4931  0c54 2706          	jreq	L656
4932  0c56 7b05          	ld	a,(OFST+5,sp)
4933  0c58 a101          	cp	a,#1
4934  0c5a 2603          	jrne	L456
4935  0c5c               L656:
4936  0c5c 4f            	clr	a
4937  0c5d 2010          	jra	L066
4938  0c5f               L456:
4939  0c5f ae0403        	ldw	x,#1027
4940  0c62 89            	pushw	x
4941  0c63 ae0000        	ldw	x,#0
4942  0c66 89            	pushw	x
4943  0c67 ae0000        	ldw	x,#L101
4944  0c6a cd0000        	call	_assert_failed
4946  0c6d 5b04          	addw	sp,#4
4947  0c6f               L066:
4948                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4950  0c6f 7b01          	ld	a,(OFST+1,sp)
4951  0c71 c75260        	ld	21088,a
4952                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
4954  0c74 7b02          	ld	a,(OFST+2,sp)
4955  0c76 c75261        	ld	21089,a
4956                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4958  0c79 7b05          	ld	a,(OFST+5,sp)
4959  0c7b c75257        	ld	21079,a
4960                     ; 1035 }
4963  0c7e 85            	popw	x
4964  0c7f 81            	ret
5001                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
5001                     ; 1049 {
5002                     	switch	.text
5003  0c80               _TIM1_CounterModeConfig:
5005  0c80 88            	push	a
5006       00000000      OFST:	set	0
5009                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
5011  0c81 4d            	tnz	a
5012  0c82 2710          	jreq	L666
5013  0c84 a110          	cp	a,#16
5014  0c86 270c          	jreq	L666
5015  0c88 a120          	cp	a,#32
5016  0c8a 2708          	jreq	L666
5017  0c8c a140          	cp	a,#64
5018  0c8e 2704          	jreq	L666
5019  0c90 a160          	cp	a,#96
5020  0c92 2603          	jrne	L466
5021  0c94               L666:
5022  0c94 4f            	clr	a
5023  0c95 2010          	jra	L076
5024  0c97               L466:
5025  0c97 ae041b        	ldw	x,#1051
5026  0c9a 89            	pushw	x
5027  0c9b ae0000        	ldw	x,#0
5028  0c9e 89            	pushw	x
5029  0c9f ae0000        	ldw	x,#L101
5030  0ca2 cd0000        	call	_assert_failed
5032  0ca5 5b04          	addw	sp,#4
5033  0ca7               L076:
5034                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
5034                     ; 1056                         | (uint8_t)TIM1_CounterMode);
5036  0ca7 c65250        	ld	a,21072
5037  0caa a48f          	and	a,#143
5038  0cac 1a01          	or	a,(OFST+1,sp)
5039  0cae c75250        	ld	21072,a
5040                     ; 1057 }
5043  0cb1 84            	pop	a
5044  0cb2 81            	ret
5103                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5103                     ; 1068 {
5104                     	switch	.text
5105  0cb3               _TIM1_ForcedOC1Config:
5107  0cb3 88            	push	a
5108       00000000      OFST:	set	0
5111                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5113  0cb4 a150          	cp	a,#80
5114  0cb6 2704          	jreq	L676
5115  0cb8 a140          	cp	a,#64
5116  0cba 2603          	jrne	L476
5117  0cbc               L676:
5118  0cbc 4f            	clr	a
5119  0cbd 2010          	jra	L007
5120  0cbf               L476:
5121  0cbf ae042e        	ldw	x,#1070
5122  0cc2 89            	pushw	x
5123  0cc3 ae0000        	ldw	x,#0
5124  0cc6 89            	pushw	x
5125  0cc7 ae0000        	ldw	x,#L101
5126  0cca cd0000        	call	_assert_failed
5128  0ccd 5b04          	addw	sp,#4
5129  0ccf               L007:
5130                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
5130                     ; 1074                            (uint8_t)TIM1_ForcedAction);
5132  0ccf c65258        	ld	a,21080
5133  0cd2 a48f          	and	a,#143
5134  0cd4 1a01          	or	a,(OFST+1,sp)
5135  0cd6 c75258        	ld	21080,a
5136                     ; 1075 }
5139  0cd9 84            	pop	a
5140  0cda 81            	ret
5177                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5177                     ; 1086 {
5178                     	switch	.text
5179  0cdb               _TIM1_ForcedOC2Config:
5181  0cdb 88            	push	a
5182       00000000      OFST:	set	0
5185                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5187  0cdc a150          	cp	a,#80
5188  0cde 2704          	jreq	L607
5189  0ce0 a140          	cp	a,#64
5190  0ce2 2603          	jrne	L407
5191  0ce4               L607:
5192  0ce4 4f            	clr	a
5193  0ce5 2010          	jra	L017
5194  0ce7               L407:
5195  0ce7 ae0440        	ldw	x,#1088
5196  0cea 89            	pushw	x
5197  0ceb ae0000        	ldw	x,#0
5198  0cee 89            	pushw	x
5199  0cef ae0000        	ldw	x,#L101
5200  0cf2 cd0000        	call	_assert_failed
5202  0cf5 5b04          	addw	sp,#4
5203  0cf7               L017:
5204                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
5204                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
5206  0cf7 c65259        	ld	a,21081
5207  0cfa a48f          	and	a,#143
5208  0cfc 1a01          	or	a,(OFST+1,sp)
5209  0cfe c75259        	ld	21081,a
5210                     ; 1093 }
5213  0d01 84            	pop	a
5214  0d02 81            	ret
5251                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5251                     ; 1105 {
5252                     	switch	.text
5253  0d03               _TIM1_ForcedOC3Config:
5255  0d03 88            	push	a
5256       00000000      OFST:	set	0
5259                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5261  0d04 a150          	cp	a,#80
5262  0d06 2704          	jreq	L617
5263  0d08 a140          	cp	a,#64
5264  0d0a 2603          	jrne	L417
5265  0d0c               L617:
5266  0d0c 4f            	clr	a
5267  0d0d 2010          	jra	L027
5268  0d0f               L417:
5269  0d0f ae0453        	ldw	x,#1107
5270  0d12 89            	pushw	x
5271  0d13 ae0000        	ldw	x,#0
5272  0d16 89            	pushw	x
5273  0d17 ae0000        	ldw	x,#L101
5274  0d1a cd0000        	call	_assert_failed
5276  0d1d 5b04          	addw	sp,#4
5277  0d1f               L027:
5278                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
5278                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
5280  0d1f c6525a        	ld	a,21082
5281  0d22 a48f          	and	a,#143
5282  0d24 1a01          	or	a,(OFST+1,sp)
5283  0d26 c7525a        	ld	21082,a
5284                     ; 1112 }
5287  0d29 84            	pop	a
5288  0d2a 81            	ret
5325                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5325                     ; 1124 {
5326                     	switch	.text
5327  0d2b               _TIM1_ForcedOC4Config:
5329  0d2b 88            	push	a
5330       00000000      OFST:	set	0
5333                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5335  0d2c a150          	cp	a,#80
5336  0d2e 2704          	jreq	L627
5337  0d30 a140          	cp	a,#64
5338  0d32 2603          	jrne	L427
5339  0d34               L627:
5340  0d34 4f            	clr	a
5341  0d35 2010          	jra	L037
5342  0d37               L427:
5343  0d37 ae0466        	ldw	x,#1126
5344  0d3a 89            	pushw	x
5345  0d3b ae0000        	ldw	x,#0
5346  0d3e 89            	pushw	x
5347  0d3f ae0000        	ldw	x,#L101
5348  0d42 cd0000        	call	_assert_failed
5350  0d45 5b04          	addw	sp,#4
5351  0d47               L037:
5352                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
5352                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
5354  0d47 c6525b        	ld	a,21083
5355  0d4a a48f          	and	a,#143
5356  0d4c 1a01          	or	a,(OFST+1,sp)
5357  0d4e c7525b        	ld	21083,a
5358                     ; 1131 }
5361  0d51 84            	pop	a
5362  0d52 81            	ret
5399                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
5399                     ; 1140 {
5400                     	switch	.text
5401  0d53               _TIM1_ARRPreloadConfig:
5403  0d53 88            	push	a
5404       00000000      OFST:	set	0
5407                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5409  0d54 4d            	tnz	a
5410  0d55 2704          	jreq	L637
5411  0d57 a101          	cp	a,#1
5412  0d59 2603          	jrne	L437
5413  0d5b               L637:
5414  0d5b 4f            	clr	a
5415  0d5c 2010          	jra	L047
5416  0d5e               L437:
5417  0d5e ae0476        	ldw	x,#1142
5418  0d61 89            	pushw	x
5419  0d62 ae0000        	ldw	x,#0
5420  0d65 89            	pushw	x
5421  0d66 ae0000        	ldw	x,#L101
5422  0d69 cd0000        	call	_assert_failed
5424  0d6c 5b04          	addw	sp,#4
5425  0d6e               L047:
5426                     ; 1145   if (NewState != DISABLE)
5428  0d6e 0d01          	tnz	(OFST+1,sp)
5429  0d70 2706          	jreq	L7502
5430                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
5432  0d72 721e5250      	bset	21072,#7
5434  0d76 2004          	jra	L1602
5435  0d78               L7502:
5436                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
5438  0d78 721f5250      	bres	21072,#7
5439  0d7c               L1602:
5440                     ; 1153 }
5443  0d7c 84            	pop	a
5444  0d7d 81            	ret
5480                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
5480                     ; 1162 {
5481                     	switch	.text
5482  0d7e               _TIM1_SelectCOM:
5484  0d7e 88            	push	a
5485       00000000      OFST:	set	0
5488                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5490  0d7f 4d            	tnz	a
5491  0d80 2704          	jreq	L647
5492  0d82 a101          	cp	a,#1
5493  0d84 2603          	jrne	L447
5494  0d86               L647:
5495  0d86 4f            	clr	a
5496  0d87 2010          	jra	L057
5497  0d89               L447:
5498  0d89 ae048c        	ldw	x,#1164
5499  0d8c 89            	pushw	x
5500  0d8d ae0000        	ldw	x,#0
5501  0d90 89            	pushw	x
5502  0d91 ae0000        	ldw	x,#L101
5503  0d94 cd0000        	call	_assert_failed
5505  0d97 5b04          	addw	sp,#4
5506  0d99               L057:
5507                     ; 1167   if (NewState != DISABLE)
5509  0d99 0d01          	tnz	(OFST+1,sp)
5510  0d9b 2706          	jreq	L1012
5511                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
5513  0d9d 72145251      	bset	21073,#2
5515  0da1 2004          	jra	L3012
5516  0da3               L1012:
5517                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
5519  0da3 72155251      	bres	21073,#2
5520  0da7               L3012:
5521                     ; 1175 }
5524  0da7 84            	pop	a
5525  0da8 81            	ret
5562                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
5562                     ; 1184 {
5563                     	switch	.text
5564  0da9               _TIM1_CCPreloadControl:
5566  0da9 88            	push	a
5567       00000000      OFST:	set	0
5570                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5572  0daa 4d            	tnz	a
5573  0dab 2704          	jreq	L657
5574  0dad a101          	cp	a,#1
5575  0daf 2603          	jrne	L457
5576  0db1               L657:
5577  0db1 4f            	clr	a
5578  0db2 2010          	jra	L067
5579  0db4               L457:
5580  0db4 ae04a2        	ldw	x,#1186
5581  0db7 89            	pushw	x
5582  0db8 ae0000        	ldw	x,#0
5583  0dbb 89            	pushw	x
5584  0dbc ae0000        	ldw	x,#L101
5585  0dbf cd0000        	call	_assert_failed
5587  0dc2 5b04          	addw	sp,#4
5588  0dc4               L067:
5589                     ; 1189   if (NewState != DISABLE)
5591  0dc4 0d01          	tnz	(OFST+1,sp)
5592  0dc6 2706          	jreq	L3212
5593                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
5595  0dc8 72105251      	bset	21073,#0
5597  0dcc 2004          	jra	L5212
5598  0dce               L3212:
5599                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5601  0dce 72115251      	bres	21073,#0
5602  0dd2               L5212:
5603                     ; 1197 }
5606  0dd2 84            	pop	a
5607  0dd3 81            	ret
5644                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5644                     ; 1206 {
5645                     	switch	.text
5646  0dd4               _TIM1_OC1PreloadConfig:
5648  0dd4 88            	push	a
5649       00000000      OFST:	set	0
5652                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5654  0dd5 4d            	tnz	a
5655  0dd6 2704          	jreq	L667
5656  0dd8 a101          	cp	a,#1
5657  0dda 2603          	jrne	L467
5658  0ddc               L667:
5659  0ddc 4f            	clr	a
5660  0ddd 2010          	jra	L077
5661  0ddf               L467:
5662  0ddf ae04b8        	ldw	x,#1208
5663  0de2 89            	pushw	x
5664  0de3 ae0000        	ldw	x,#0
5665  0de6 89            	pushw	x
5666  0de7 ae0000        	ldw	x,#L101
5667  0dea cd0000        	call	_assert_failed
5669  0ded 5b04          	addw	sp,#4
5670  0def               L077:
5671                     ; 1211   if (NewState != DISABLE)
5673  0def 0d01          	tnz	(OFST+1,sp)
5674  0df1 2706          	jreq	L5412
5675                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5677  0df3 72165258      	bset	21080,#3
5679  0df7 2004          	jra	L7412
5680  0df9               L5412:
5681                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5683  0df9 72175258      	bres	21080,#3
5684  0dfd               L7412:
5685                     ; 1219 }
5688  0dfd 84            	pop	a
5689  0dfe 81            	ret
5726                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5726                     ; 1228 {
5727                     	switch	.text
5728  0dff               _TIM1_OC2PreloadConfig:
5730  0dff 88            	push	a
5731       00000000      OFST:	set	0
5734                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5736  0e00 4d            	tnz	a
5737  0e01 2704          	jreq	L677
5738  0e03 a101          	cp	a,#1
5739  0e05 2603          	jrne	L477
5740  0e07               L677:
5741  0e07 4f            	clr	a
5742  0e08 2010          	jra	L0001
5743  0e0a               L477:
5744  0e0a ae04ce        	ldw	x,#1230
5745  0e0d 89            	pushw	x
5746  0e0e ae0000        	ldw	x,#0
5747  0e11 89            	pushw	x
5748  0e12 ae0000        	ldw	x,#L101
5749  0e15 cd0000        	call	_assert_failed
5751  0e18 5b04          	addw	sp,#4
5752  0e1a               L0001:
5753                     ; 1233   if (NewState != DISABLE)
5755  0e1a 0d01          	tnz	(OFST+1,sp)
5756  0e1c 2706          	jreq	L7612
5757                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5759  0e1e 72165259      	bset	21081,#3
5761  0e22 2004          	jra	L1712
5762  0e24               L7612:
5763                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5765  0e24 72175259      	bres	21081,#3
5766  0e28               L1712:
5767                     ; 1241 }
5770  0e28 84            	pop	a
5771  0e29 81            	ret
5808                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5808                     ; 1250 {
5809                     	switch	.text
5810  0e2a               _TIM1_OC3PreloadConfig:
5812  0e2a 88            	push	a
5813       00000000      OFST:	set	0
5816                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5818  0e2b 4d            	tnz	a
5819  0e2c 2704          	jreq	L6001
5820  0e2e a101          	cp	a,#1
5821  0e30 2603          	jrne	L4001
5822  0e32               L6001:
5823  0e32 4f            	clr	a
5824  0e33 2010          	jra	L0101
5825  0e35               L4001:
5826  0e35 ae04e4        	ldw	x,#1252
5827  0e38 89            	pushw	x
5828  0e39 ae0000        	ldw	x,#0
5829  0e3c 89            	pushw	x
5830  0e3d ae0000        	ldw	x,#L101
5831  0e40 cd0000        	call	_assert_failed
5833  0e43 5b04          	addw	sp,#4
5834  0e45               L0101:
5835                     ; 1255   if (NewState != DISABLE)
5837  0e45 0d01          	tnz	(OFST+1,sp)
5838  0e47 2706          	jreq	L1122
5839                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5841  0e49 7216525a      	bset	21082,#3
5843  0e4d 2004          	jra	L3122
5844  0e4f               L1122:
5845                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5847  0e4f 7217525a      	bres	21082,#3
5848  0e53               L3122:
5849                     ; 1263 }
5852  0e53 84            	pop	a
5853  0e54 81            	ret
5890                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5890                     ; 1272 {
5891                     	switch	.text
5892  0e55               _TIM1_OC4PreloadConfig:
5894  0e55 88            	push	a
5895       00000000      OFST:	set	0
5898                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5900  0e56 4d            	tnz	a
5901  0e57 2704          	jreq	L6101
5902  0e59 a101          	cp	a,#1
5903  0e5b 2603          	jrne	L4101
5904  0e5d               L6101:
5905  0e5d 4f            	clr	a
5906  0e5e 2010          	jra	L0201
5907  0e60               L4101:
5908  0e60 ae04fa        	ldw	x,#1274
5909  0e63 89            	pushw	x
5910  0e64 ae0000        	ldw	x,#0
5911  0e67 89            	pushw	x
5912  0e68 ae0000        	ldw	x,#L101
5913  0e6b cd0000        	call	_assert_failed
5915  0e6e 5b04          	addw	sp,#4
5916  0e70               L0201:
5917                     ; 1277   if (NewState != DISABLE)
5919  0e70 0d01          	tnz	(OFST+1,sp)
5920  0e72 2706          	jreq	L3322
5921                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5923  0e74 7216525b      	bset	21083,#3
5925  0e78 2004          	jra	L5322
5926  0e7a               L3322:
5927                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5929  0e7a 7217525b      	bres	21083,#3
5930  0e7e               L5322:
5931                     ; 1285 }
5934  0e7e 84            	pop	a
5935  0e7f 81            	ret
5971                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
5971                     ; 1294 {
5972                     	switch	.text
5973  0e80               _TIM1_OC1FastConfig:
5975  0e80 88            	push	a
5976       00000000      OFST:	set	0
5979                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5981  0e81 4d            	tnz	a
5982  0e82 2704          	jreq	L6201
5983  0e84 a101          	cp	a,#1
5984  0e86 2603          	jrne	L4201
5985  0e88               L6201:
5986  0e88 4f            	clr	a
5987  0e89 2010          	jra	L0301
5988  0e8b               L4201:
5989  0e8b ae0510        	ldw	x,#1296
5990  0e8e 89            	pushw	x
5991  0e8f ae0000        	ldw	x,#0
5992  0e92 89            	pushw	x
5993  0e93 ae0000        	ldw	x,#L101
5994  0e96 cd0000        	call	_assert_failed
5996  0e99 5b04          	addw	sp,#4
5997  0e9b               L0301:
5998                     ; 1299   if (NewState != DISABLE)
6000  0e9b 0d01          	tnz	(OFST+1,sp)
6001  0e9d 2706          	jreq	L5522
6002                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
6004  0e9f 72145258      	bset	21080,#2
6006  0ea3 2004          	jra	L7522
6007  0ea5               L5522:
6008                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6010  0ea5 72155258      	bres	21080,#2
6011  0ea9               L7522:
6012                     ; 1307 }
6015  0ea9 84            	pop	a
6016  0eaa 81            	ret
6052                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
6052                     ; 1316 {
6053                     	switch	.text
6054  0eab               _TIM1_OC2FastConfig:
6056  0eab 88            	push	a
6057       00000000      OFST:	set	0
6060                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6062  0eac 4d            	tnz	a
6063  0ead 2704          	jreq	L6301
6064  0eaf a101          	cp	a,#1
6065  0eb1 2603          	jrne	L4301
6066  0eb3               L6301:
6067  0eb3 4f            	clr	a
6068  0eb4 2010          	jra	L0401
6069  0eb6               L4301:
6070  0eb6 ae0526        	ldw	x,#1318
6071  0eb9 89            	pushw	x
6072  0eba ae0000        	ldw	x,#0
6073  0ebd 89            	pushw	x
6074  0ebe ae0000        	ldw	x,#L101
6075  0ec1 cd0000        	call	_assert_failed
6077  0ec4 5b04          	addw	sp,#4
6078  0ec6               L0401:
6079                     ; 1321   if (NewState != DISABLE)
6081  0ec6 0d01          	tnz	(OFST+1,sp)
6082  0ec8 2706          	jreq	L7722
6083                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
6085  0eca 72145259      	bset	21081,#2
6087  0ece 2004          	jra	L1032
6088  0ed0               L7722:
6089                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6091  0ed0 72155259      	bres	21081,#2
6092  0ed4               L1032:
6093                     ; 1329 }
6096  0ed4 84            	pop	a
6097  0ed5 81            	ret
6133                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
6133                     ; 1338 {
6134                     	switch	.text
6135  0ed6               _TIM1_OC3FastConfig:
6137  0ed6 88            	push	a
6138       00000000      OFST:	set	0
6141                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6143  0ed7 4d            	tnz	a
6144  0ed8 2704          	jreq	L6401
6145  0eda a101          	cp	a,#1
6146  0edc 2603          	jrne	L4401
6147  0ede               L6401:
6148  0ede 4f            	clr	a
6149  0edf 2010          	jra	L0501
6150  0ee1               L4401:
6151  0ee1 ae053c        	ldw	x,#1340
6152  0ee4 89            	pushw	x
6153  0ee5 ae0000        	ldw	x,#0
6154  0ee8 89            	pushw	x
6155  0ee9 ae0000        	ldw	x,#L101
6156  0eec cd0000        	call	_assert_failed
6158  0eef 5b04          	addw	sp,#4
6159  0ef1               L0501:
6160                     ; 1343   if (NewState != DISABLE)
6162  0ef1 0d01          	tnz	(OFST+1,sp)
6163  0ef3 2706          	jreq	L1232
6164                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
6166  0ef5 7214525a      	bset	21082,#2
6168  0ef9 2004          	jra	L3232
6169  0efb               L1232:
6170                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6172  0efb 7215525a      	bres	21082,#2
6173  0eff               L3232:
6174                     ; 1351 }
6177  0eff 84            	pop	a
6178  0f00 81            	ret
6214                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
6214                     ; 1360 {
6215                     	switch	.text
6216  0f01               _TIM1_OC4FastConfig:
6218  0f01 88            	push	a
6219       00000000      OFST:	set	0
6222                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6224  0f02 4d            	tnz	a
6225  0f03 2704          	jreq	L6501
6226  0f05 a101          	cp	a,#1
6227  0f07 2603          	jrne	L4501
6228  0f09               L6501:
6229  0f09 4f            	clr	a
6230  0f0a 2010          	jra	L0601
6231  0f0c               L4501:
6232  0f0c ae0552        	ldw	x,#1362
6233  0f0f 89            	pushw	x
6234  0f10 ae0000        	ldw	x,#0
6235  0f13 89            	pushw	x
6236  0f14 ae0000        	ldw	x,#L101
6237  0f17 cd0000        	call	_assert_failed
6239  0f1a 5b04          	addw	sp,#4
6240  0f1c               L0601:
6241                     ; 1365   if (NewState != DISABLE)
6243  0f1c 0d01          	tnz	(OFST+1,sp)
6244  0f1e 2706          	jreq	L3432
6245                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
6247  0f20 7214525b      	bset	21083,#2
6249  0f24 2004          	jra	L5432
6250  0f26               L3432:
6251                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6253  0f26 7215525b      	bres	21083,#2
6254  0f2a               L5432:
6255                     ; 1373 }
6258  0f2a 84            	pop	a
6259  0f2b 81            	ret
6365                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
6365                     ; 1390 {
6366                     	switch	.text
6367  0f2c               _TIM1_GenerateEvent:
6369  0f2c 88            	push	a
6370       00000000      OFST:	set	0
6373                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
6375  0f2d 4d            	tnz	a
6376  0f2e 2703          	jreq	L4601
6377  0f30 4f            	clr	a
6378  0f31 2010          	jra	L6601
6379  0f33               L4601:
6380  0f33 ae0570        	ldw	x,#1392
6381  0f36 89            	pushw	x
6382  0f37 ae0000        	ldw	x,#0
6383  0f3a 89            	pushw	x
6384  0f3b ae0000        	ldw	x,#L101
6385  0f3e cd0000        	call	_assert_failed
6387  0f41 5b04          	addw	sp,#4
6388  0f43               L6601:
6389                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
6391  0f43 7b01          	ld	a,(OFST+1,sp)
6392  0f45 c75257        	ld	21079,a
6393                     ; 1396 }
6396  0f48 84            	pop	a
6397  0f49 81            	ret
6434                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6434                     ; 1407 {
6435                     	switch	.text
6436  0f4a               _TIM1_OC1PolarityConfig:
6438  0f4a 88            	push	a
6439       00000000      OFST:	set	0
6442                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6444  0f4b 4d            	tnz	a
6445  0f4c 2704          	jreq	L4701
6446  0f4e a122          	cp	a,#34
6447  0f50 2603          	jrne	L2701
6448  0f52               L4701:
6449  0f52 4f            	clr	a
6450  0f53 2010          	jra	L6701
6451  0f55               L2701:
6452  0f55 ae0581        	ldw	x,#1409
6453  0f58 89            	pushw	x
6454  0f59 ae0000        	ldw	x,#0
6455  0f5c 89            	pushw	x
6456  0f5d ae0000        	ldw	x,#L101
6457  0f60 cd0000        	call	_assert_failed
6459  0f63 5b04          	addw	sp,#4
6460  0f65               L6701:
6461                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6463  0f65 0d01          	tnz	(OFST+1,sp)
6464  0f67 2706          	jreq	L7242
6465                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
6467  0f69 7212525c      	bset	21084,#1
6469  0f6d 2004          	jra	L1342
6470  0f6f               L7242:
6471                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
6473  0f6f 7213525c      	bres	21084,#1
6474  0f73               L1342:
6475                     ; 1420 }
6478  0f73 84            	pop	a
6479  0f74 81            	ret
6516                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6516                     ; 1431 {
6517                     	switch	.text
6518  0f75               _TIM1_OC1NPolarityConfig:
6520  0f75 88            	push	a
6521       00000000      OFST:	set	0
6524                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6526  0f76 4d            	tnz	a
6527  0f77 2704          	jreq	L4011
6528  0f79 a188          	cp	a,#136
6529  0f7b 2603          	jrne	L2011
6530  0f7d               L4011:
6531  0f7d 4f            	clr	a
6532  0f7e 2010          	jra	L6011
6533  0f80               L2011:
6534  0f80 ae0599        	ldw	x,#1433
6535  0f83 89            	pushw	x
6536  0f84 ae0000        	ldw	x,#0
6537  0f87 89            	pushw	x
6538  0f88 ae0000        	ldw	x,#L101
6539  0f8b cd0000        	call	_assert_failed
6541  0f8e 5b04          	addw	sp,#4
6542  0f90               L6011:
6543                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6545  0f90 0d01          	tnz	(OFST+1,sp)
6546  0f92 2706          	jreq	L1542
6547                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
6549  0f94 7216525c      	bset	21084,#3
6551  0f98 2004          	jra	L3542
6552  0f9a               L1542:
6553                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
6555  0f9a 7217525c      	bres	21084,#3
6556  0f9e               L3542:
6557                     ; 1444 }
6560  0f9e 84            	pop	a
6561  0f9f 81            	ret
6598                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6598                     ; 1455 {
6599                     	switch	.text
6600  0fa0               _TIM1_OC2PolarityConfig:
6602  0fa0 88            	push	a
6603       00000000      OFST:	set	0
6606                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6608  0fa1 4d            	tnz	a
6609  0fa2 2704          	jreq	L4111
6610  0fa4 a122          	cp	a,#34
6611  0fa6 2603          	jrne	L2111
6612  0fa8               L4111:
6613  0fa8 4f            	clr	a
6614  0fa9 2010          	jra	L6111
6615  0fab               L2111:
6616  0fab ae05b1        	ldw	x,#1457
6617  0fae 89            	pushw	x
6618  0faf ae0000        	ldw	x,#0
6619  0fb2 89            	pushw	x
6620  0fb3 ae0000        	ldw	x,#L101
6621  0fb6 cd0000        	call	_assert_failed
6623  0fb9 5b04          	addw	sp,#4
6624  0fbb               L6111:
6625                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6627  0fbb 0d01          	tnz	(OFST+1,sp)
6628  0fbd 2706          	jreq	L3742
6629                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
6631  0fbf 721a525c      	bset	21084,#5
6633  0fc3 2004          	jra	L5742
6634  0fc5               L3742:
6635                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6637  0fc5 721b525c      	bres	21084,#5
6638  0fc9               L5742:
6639                     ; 1468 }
6642  0fc9 84            	pop	a
6643  0fca 81            	ret
6680                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6680                     ; 1479 {
6681                     	switch	.text
6682  0fcb               _TIM1_OC2NPolarityConfig:
6684  0fcb 88            	push	a
6685       00000000      OFST:	set	0
6688                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6690  0fcc 4d            	tnz	a
6691  0fcd 2704          	jreq	L4211
6692  0fcf a188          	cp	a,#136
6693  0fd1 2603          	jrne	L2211
6694  0fd3               L4211:
6695  0fd3 4f            	clr	a
6696  0fd4 2010          	jra	L6211
6697  0fd6               L2211:
6698  0fd6 ae05c9        	ldw	x,#1481
6699  0fd9 89            	pushw	x
6700  0fda ae0000        	ldw	x,#0
6701  0fdd 89            	pushw	x
6702  0fde ae0000        	ldw	x,#L101
6703  0fe1 cd0000        	call	_assert_failed
6705  0fe4 5b04          	addw	sp,#4
6706  0fe6               L6211:
6707                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6709  0fe6 0d01          	tnz	(OFST+1,sp)
6710  0fe8 2706          	jreq	L5152
6711                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6713  0fea 721e525c      	bset	21084,#7
6715  0fee 2004          	jra	L7152
6716  0ff0               L5152:
6717                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6719  0ff0 721f525c      	bres	21084,#7
6720  0ff4               L7152:
6721                     ; 1492 }
6724  0ff4 84            	pop	a
6725  0ff5 81            	ret
6762                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6762                     ; 1503 {
6763                     	switch	.text
6764  0ff6               _TIM1_OC3PolarityConfig:
6766  0ff6 88            	push	a
6767       00000000      OFST:	set	0
6770                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6772  0ff7 4d            	tnz	a
6773  0ff8 2704          	jreq	L4311
6774  0ffa a122          	cp	a,#34
6775  0ffc 2603          	jrne	L2311
6776  0ffe               L4311:
6777  0ffe 4f            	clr	a
6778  0fff 2010          	jra	L6311
6779  1001               L2311:
6780  1001 ae05e1        	ldw	x,#1505
6781  1004 89            	pushw	x
6782  1005 ae0000        	ldw	x,#0
6783  1008 89            	pushw	x
6784  1009 ae0000        	ldw	x,#L101
6785  100c cd0000        	call	_assert_failed
6787  100f 5b04          	addw	sp,#4
6788  1011               L6311:
6789                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6791  1011 0d01          	tnz	(OFST+1,sp)
6792  1013 2706          	jreq	L7352
6793                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
6795  1015 7212525d      	bset	21085,#1
6797  1019 2004          	jra	L1452
6798  101b               L7352:
6799                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6801  101b 7213525d      	bres	21085,#1
6802  101f               L1452:
6803                     ; 1516 }
6806  101f 84            	pop	a
6807  1020 81            	ret
6844                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6844                     ; 1528 {
6845                     	switch	.text
6846  1021               _TIM1_OC3NPolarityConfig:
6848  1021 88            	push	a
6849       00000000      OFST:	set	0
6852                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6854  1022 4d            	tnz	a
6855  1023 2704          	jreq	L4411
6856  1025 a188          	cp	a,#136
6857  1027 2603          	jrne	L2411
6858  1029               L4411:
6859  1029 4f            	clr	a
6860  102a 2010          	jra	L6411
6861  102c               L2411:
6862  102c ae05fa        	ldw	x,#1530
6863  102f 89            	pushw	x
6864  1030 ae0000        	ldw	x,#0
6865  1033 89            	pushw	x
6866  1034 ae0000        	ldw	x,#L101
6867  1037 cd0000        	call	_assert_failed
6869  103a 5b04          	addw	sp,#4
6870  103c               L6411:
6871                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6873  103c 0d01          	tnz	(OFST+1,sp)
6874  103e 2706          	jreq	L1652
6875                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6877  1040 7216525d      	bset	21085,#3
6879  1044 2004          	jra	L3652
6880  1046               L1652:
6881                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6883  1046 7217525d      	bres	21085,#3
6884  104a               L3652:
6885                     ; 1541 }
6888  104a 84            	pop	a
6889  104b 81            	ret
6926                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6926                     ; 1552 {
6927                     	switch	.text
6928  104c               _TIM1_OC4PolarityConfig:
6930  104c 88            	push	a
6931       00000000      OFST:	set	0
6934                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6936  104d 4d            	tnz	a
6937  104e 2704          	jreq	L4511
6938  1050 a122          	cp	a,#34
6939  1052 2603          	jrne	L2511
6940  1054               L4511:
6941  1054 4f            	clr	a
6942  1055 2010          	jra	L6511
6943  1057               L2511:
6944  1057 ae0612        	ldw	x,#1554
6945  105a 89            	pushw	x
6946  105b ae0000        	ldw	x,#0
6947  105e 89            	pushw	x
6948  105f ae0000        	ldw	x,#L101
6949  1062 cd0000        	call	_assert_failed
6951  1065 5b04          	addw	sp,#4
6952  1067               L6511:
6953                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6955  1067 0d01          	tnz	(OFST+1,sp)
6956  1069 2706          	jreq	L3062
6957                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
6959  106b 721a525d      	bset	21085,#5
6961  106f 2004          	jra	L5062
6962  1071               L3062:
6963                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6965  1071 721b525d      	bres	21085,#5
6966  1075               L5062:
6967                     ; 1565 }
6970  1075 84            	pop	a
6971  1076 81            	ret
7017                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
7017                     ; 1580 {
7018                     	switch	.text
7019  1077               _TIM1_CCxCmd:
7021  1077 89            	pushw	x
7022       00000000      OFST:	set	0
7025                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
7027  1078 9e            	ld	a,xh
7028  1079 4d            	tnz	a
7029  107a 270f          	jreq	L4611
7030  107c 9e            	ld	a,xh
7031  107d a101          	cp	a,#1
7032  107f 270a          	jreq	L4611
7033  1081 9e            	ld	a,xh
7034  1082 a102          	cp	a,#2
7035  1084 2705          	jreq	L4611
7036  1086 9e            	ld	a,xh
7037  1087 a103          	cp	a,#3
7038  1089 2603          	jrne	L2611
7039  108b               L4611:
7040  108b 4f            	clr	a
7041  108c 2010          	jra	L6611
7042  108e               L2611:
7043  108e ae062e        	ldw	x,#1582
7044  1091 89            	pushw	x
7045  1092 ae0000        	ldw	x,#0
7046  1095 89            	pushw	x
7047  1096 ae0000        	ldw	x,#L101
7048  1099 cd0000        	call	_assert_failed
7050  109c 5b04          	addw	sp,#4
7051  109e               L6611:
7052                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
7054  109e 0d02          	tnz	(OFST+2,sp)
7055  10a0 2706          	jreq	L2711
7056  10a2 7b02          	ld	a,(OFST+2,sp)
7057  10a4 a101          	cp	a,#1
7058  10a6 2603          	jrne	L0711
7059  10a8               L2711:
7060  10a8 4f            	clr	a
7061  10a9 2010          	jra	L4711
7062  10ab               L0711:
7063  10ab ae062f        	ldw	x,#1583
7064  10ae 89            	pushw	x
7065  10af ae0000        	ldw	x,#0
7066  10b2 89            	pushw	x
7067  10b3 ae0000        	ldw	x,#L101
7068  10b6 cd0000        	call	_assert_failed
7070  10b9 5b04          	addw	sp,#4
7071  10bb               L4711:
7072                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
7074  10bb 0d01          	tnz	(OFST+1,sp)
7075  10bd 2610          	jrne	L1362
7076                     ; 1588     if (NewState != DISABLE)
7078  10bf 0d02          	tnz	(OFST+2,sp)
7079  10c1 2706          	jreq	L3362
7080                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
7082  10c3 7210525c      	bset	21084,#0
7084  10c7 2040          	jra	L7362
7085  10c9               L3362:
7086                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7088  10c9 7211525c      	bres	21084,#0
7089  10cd 203a          	jra	L7362
7090  10cf               L1362:
7091                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
7093  10cf 7b01          	ld	a,(OFST+1,sp)
7094  10d1 a101          	cp	a,#1
7095  10d3 2610          	jrne	L1462
7096                     ; 1601     if (NewState != DISABLE)
7098  10d5 0d02          	tnz	(OFST+2,sp)
7099  10d7 2706          	jreq	L3462
7100                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
7102  10d9 7218525c      	bset	21084,#4
7104  10dd 202a          	jra	L7362
7105  10df               L3462:
7106                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7108  10df 7219525c      	bres	21084,#4
7109  10e3 2024          	jra	L7362
7110  10e5               L1462:
7111                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
7113  10e5 7b01          	ld	a,(OFST+1,sp)
7114  10e7 a102          	cp	a,#2
7115  10e9 2610          	jrne	L1562
7116                     ; 1613     if (NewState != DISABLE)
7118  10eb 0d02          	tnz	(OFST+2,sp)
7119  10ed 2706          	jreq	L3562
7120                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
7122  10ef 7210525d      	bset	21085,#0
7124  10f3 2014          	jra	L7362
7125  10f5               L3562:
7126                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7128  10f5 7211525d      	bres	21085,#0
7129  10f9 200e          	jra	L7362
7130  10fb               L1562:
7131                     ; 1625     if (NewState != DISABLE)
7133  10fb 0d02          	tnz	(OFST+2,sp)
7134  10fd 2706          	jreq	L1662
7135                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
7137  10ff 7218525d      	bset	21085,#4
7139  1103 2004          	jra	L7362
7140  1105               L1662:
7141                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7143  1105 7219525d      	bres	21085,#4
7144  1109               L7362:
7145                     ; 1634 }
7148  1109 85            	popw	x
7149  110a 81            	ret
7195                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
7195                     ; 1648 {
7196                     	switch	.text
7197  110b               _TIM1_CCxNCmd:
7199  110b 89            	pushw	x
7200       00000000      OFST:	set	0
7203                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
7205  110c 9e            	ld	a,xh
7206  110d 4d            	tnz	a
7207  110e 270a          	jreq	L2021
7208  1110 9e            	ld	a,xh
7209  1111 a101          	cp	a,#1
7210  1113 2705          	jreq	L2021
7211  1115 9e            	ld	a,xh
7212  1116 a102          	cp	a,#2
7213  1118 2603          	jrne	L0021
7214  111a               L2021:
7215  111a 4f            	clr	a
7216  111b 2010          	jra	L4021
7217  111d               L0021:
7218  111d ae0672        	ldw	x,#1650
7219  1120 89            	pushw	x
7220  1121 ae0000        	ldw	x,#0
7221  1124 89            	pushw	x
7222  1125 ae0000        	ldw	x,#L101
7223  1128 cd0000        	call	_assert_failed
7225  112b 5b04          	addw	sp,#4
7226  112d               L4021:
7227                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
7229  112d 0d02          	tnz	(OFST+2,sp)
7230  112f 2706          	jreq	L0121
7231  1131 7b02          	ld	a,(OFST+2,sp)
7232  1133 a101          	cp	a,#1
7233  1135 2603          	jrne	L6021
7234  1137               L0121:
7235  1137 4f            	clr	a
7236  1138 2010          	jra	L2121
7237  113a               L6021:
7238  113a ae0673        	ldw	x,#1651
7239  113d 89            	pushw	x
7240  113e ae0000        	ldw	x,#0
7241  1141 89            	pushw	x
7242  1142 ae0000        	ldw	x,#L101
7243  1145 cd0000        	call	_assert_failed
7245  1148 5b04          	addw	sp,#4
7246  114a               L2121:
7247                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
7249  114a 0d01          	tnz	(OFST+1,sp)
7250  114c 2610          	jrne	L7072
7251                     ; 1656     if (NewState != DISABLE)
7253  114e 0d02          	tnz	(OFST+2,sp)
7254  1150 2706          	jreq	L1172
7255                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
7257  1152 7214525c      	bset	21084,#2
7259  1156 202a          	jra	L5172
7260  1158               L1172:
7261                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
7263  1158 7215525c      	bres	21084,#2
7264  115c 2024          	jra	L5172
7265  115e               L7072:
7266                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
7268  115e 7b01          	ld	a,(OFST+1,sp)
7269  1160 a101          	cp	a,#1
7270  1162 2610          	jrne	L7172
7271                     ; 1668     if (NewState != DISABLE)
7273  1164 0d02          	tnz	(OFST+2,sp)
7274  1166 2706          	jreq	L1272
7275                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
7277  1168 721c525c      	bset	21084,#6
7279  116c 2014          	jra	L5172
7280  116e               L1272:
7281                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
7283  116e 721d525c      	bres	21084,#6
7284  1172 200e          	jra	L5172
7285  1174               L7172:
7286                     ; 1680     if (NewState != DISABLE)
7288  1174 0d02          	tnz	(OFST+2,sp)
7289  1176 2706          	jreq	L7272
7290                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
7292  1178 7214525d      	bset	21085,#2
7294  117c 2004          	jra	L5172
7295  117e               L7272:
7296                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
7298  117e 7215525d      	bres	21085,#2
7299  1182               L5172:
7300                     ; 1689 }
7303  1182 85            	popw	x
7304  1183 81            	ret
7350                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
7350                     ; 1713 {
7351                     	switch	.text
7352  1184               _TIM1_SelectOCxM:
7354  1184 89            	pushw	x
7355       00000000      OFST:	set	0
7358                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
7360  1185 9e            	ld	a,xh
7361  1186 4d            	tnz	a
7362  1187 270f          	jreq	L0221
7363  1189 9e            	ld	a,xh
7364  118a a101          	cp	a,#1
7365  118c 270a          	jreq	L0221
7366  118e 9e            	ld	a,xh
7367  118f a102          	cp	a,#2
7368  1191 2705          	jreq	L0221
7369  1193 9e            	ld	a,xh
7370  1194 a103          	cp	a,#3
7371  1196 2603          	jrne	L6121
7372  1198               L0221:
7373  1198 4f            	clr	a
7374  1199 2010          	jra	L2221
7375  119b               L6121:
7376  119b ae06b3        	ldw	x,#1715
7377  119e 89            	pushw	x
7378  119f ae0000        	ldw	x,#0
7379  11a2 89            	pushw	x
7380  11a3 ae0000        	ldw	x,#L101
7381  11a6 cd0000        	call	_assert_failed
7383  11a9 5b04          	addw	sp,#4
7384  11ab               L2221:
7385                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
7387  11ab 0d02          	tnz	(OFST+2,sp)
7388  11ad 272a          	jreq	L6221
7389  11af 7b02          	ld	a,(OFST+2,sp)
7390  11b1 a110          	cp	a,#16
7391  11b3 2724          	jreq	L6221
7392  11b5 7b02          	ld	a,(OFST+2,sp)
7393  11b7 a120          	cp	a,#32
7394  11b9 271e          	jreq	L6221
7395  11bb 7b02          	ld	a,(OFST+2,sp)
7396  11bd a130          	cp	a,#48
7397  11bf 2718          	jreq	L6221
7398  11c1 7b02          	ld	a,(OFST+2,sp)
7399  11c3 a160          	cp	a,#96
7400  11c5 2712          	jreq	L6221
7401  11c7 7b02          	ld	a,(OFST+2,sp)
7402  11c9 a170          	cp	a,#112
7403  11cb 270c          	jreq	L6221
7404  11cd 7b02          	ld	a,(OFST+2,sp)
7405  11cf a150          	cp	a,#80
7406  11d1 2706          	jreq	L6221
7407  11d3 7b02          	ld	a,(OFST+2,sp)
7408  11d5 a140          	cp	a,#64
7409  11d7 2603          	jrne	L4221
7410  11d9               L6221:
7411  11d9 4f            	clr	a
7412  11da 2010          	jra	L0321
7413  11dc               L4221:
7414  11dc ae06b4        	ldw	x,#1716
7415  11df 89            	pushw	x
7416  11e0 ae0000        	ldw	x,#0
7417  11e3 89            	pushw	x
7418  11e4 ae0000        	ldw	x,#L101
7419  11e7 cd0000        	call	_assert_failed
7421  11ea 5b04          	addw	sp,#4
7422  11ec               L0321:
7423                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
7425  11ec 0d01          	tnz	(OFST+1,sp)
7426  11ee 2610          	jrne	L5572
7427                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7429  11f0 7211525c      	bres	21084,#0
7430                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
7430                     ; 1725                             | (uint8_t)TIM1_OCMode);
7432  11f4 c65258        	ld	a,21080
7433  11f7 a48f          	and	a,#143
7434  11f9 1a02          	or	a,(OFST+2,sp)
7435  11fb c75258        	ld	21080,a
7437  11fe 203a          	jra	L7572
7438  1200               L5572:
7439                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
7441  1200 7b01          	ld	a,(OFST+1,sp)
7442  1202 a101          	cp	a,#1
7443  1204 2610          	jrne	L1672
7444                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7446  1206 7219525c      	bres	21084,#4
7447                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
7447                     ; 1734                             | (uint8_t)TIM1_OCMode);
7449  120a c65259        	ld	a,21081
7450  120d a48f          	and	a,#143
7451  120f 1a02          	or	a,(OFST+2,sp)
7452  1211 c75259        	ld	21081,a
7454  1214 2024          	jra	L7572
7455  1216               L1672:
7456                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
7458  1216 7b01          	ld	a,(OFST+1,sp)
7459  1218 a102          	cp	a,#2
7460  121a 2610          	jrne	L5672
7461                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7463  121c 7211525d      	bres	21085,#0
7464                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
7464                     ; 1743                             | (uint8_t)TIM1_OCMode);
7466  1220 c6525a        	ld	a,21082
7467  1223 a48f          	and	a,#143
7468  1225 1a02          	or	a,(OFST+2,sp)
7469  1227 c7525a        	ld	21082,a
7471  122a 200e          	jra	L7572
7472  122c               L5672:
7473                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7475  122c 7219525d      	bres	21085,#4
7476                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
7476                     ; 1752                             | (uint8_t)TIM1_OCMode);
7478  1230 c6525b        	ld	a,21083
7479  1233 a48f          	and	a,#143
7480  1235 1a02          	or	a,(OFST+2,sp)
7481  1237 c7525b        	ld	21083,a
7482  123a               L7572:
7483                     ; 1754 }
7486  123a 85            	popw	x
7487  123b 81            	ret
7521                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
7521                     ; 1763 {
7522                     	switch	.text
7523  123c               _TIM1_SetCounter:
7527                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
7529  123c 9e            	ld	a,xh
7530  123d c7525e        	ld	21086,a
7531                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
7533  1240 9f            	ld	a,xl
7534  1241 c7525f        	ld	21087,a
7535                     ; 1767 }
7538  1244 81            	ret
7572                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
7572                     ; 1776 {
7573                     	switch	.text
7574  1245               _TIM1_SetAutoreload:
7578                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
7580  1245 9e            	ld	a,xh
7581  1246 c75262        	ld	21090,a
7582                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
7584  1249 9f            	ld	a,xl
7585  124a c75263        	ld	21091,a
7586                     ; 1780  }
7589  124d 81            	ret
7623                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
7623                     ; 1789 {
7624                     	switch	.text
7625  124e               _TIM1_SetCompare1:
7629                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
7631  124e 9e            	ld	a,xh
7632  124f c75265        	ld	21093,a
7633                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
7635  1252 9f            	ld	a,xl
7636  1253 c75266        	ld	21094,a
7637                     ; 1793 }
7640  1256 81            	ret
7674                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
7674                     ; 1802 {
7675                     	switch	.text
7676  1257               _TIM1_SetCompare2:
7680                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7682  1257 9e            	ld	a,xh
7683  1258 c75267        	ld	21095,a
7684                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
7686  125b 9f            	ld	a,xl
7687  125c c75268        	ld	21096,a
7688                     ; 1806 }
7691  125f 81            	ret
7725                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
7725                     ; 1815 {
7726                     	switch	.text
7727  1260               _TIM1_SetCompare3:
7731                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7733  1260 9e            	ld	a,xh
7734  1261 c75269        	ld	21097,a
7735                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
7737  1264 9f            	ld	a,xl
7738  1265 c7526a        	ld	21098,a
7739                     ; 1819 }
7742  1268 81            	ret
7776                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
7776                     ; 1828 {
7777                     	switch	.text
7778  1269               _TIM1_SetCompare4:
7782                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7784  1269 9e            	ld	a,xh
7785  126a c7526b        	ld	21099,a
7786                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
7788  126d 9f            	ld	a,xl
7789  126e c7526c        	ld	21100,a
7790                     ; 1832 }
7793  1271 81            	ret
7830                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7830                     ; 1845 {
7831                     	switch	.text
7832  1272               _TIM1_SetIC1Prescaler:
7834  1272 88            	push	a
7835       00000000      OFST:	set	0
7838                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7840  1273 4d            	tnz	a
7841  1274 270c          	jreq	L2521
7842  1276 a104          	cp	a,#4
7843  1278 2708          	jreq	L2521
7844  127a a108          	cp	a,#8
7845  127c 2704          	jreq	L2521
7846  127e a10c          	cp	a,#12
7847  1280 2603          	jrne	L0521
7848  1282               L2521:
7849  1282 4f            	clr	a
7850  1283 2010          	jra	L4521
7851  1285               L0521:
7852  1285 ae0737        	ldw	x,#1847
7853  1288 89            	pushw	x
7854  1289 ae0000        	ldw	x,#0
7855  128c 89            	pushw	x
7856  128d ae0000        	ldw	x,#L101
7857  1290 cd0000        	call	_assert_failed
7859  1293 5b04          	addw	sp,#4
7860  1295               L4521:
7861                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7861                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
7863  1295 c65258        	ld	a,21080
7864  1298 a4f3          	and	a,#243
7865  129a 1a01          	or	a,(OFST+1,sp)
7866  129c c75258        	ld	21080,a
7867                     ; 1852 }
7870  129f 84            	pop	a
7871  12a0 81            	ret
7908                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7908                     ; 1865 {
7909                     	switch	.text
7910  12a1               _TIM1_SetIC2Prescaler:
7912  12a1 88            	push	a
7913       00000000      OFST:	set	0
7916                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7918  12a2 4d            	tnz	a
7919  12a3 270c          	jreq	L2621
7920  12a5 a104          	cp	a,#4
7921  12a7 2708          	jreq	L2621
7922  12a9 a108          	cp	a,#8
7923  12ab 2704          	jreq	L2621
7924  12ad a10c          	cp	a,#12
7925  12af 2603          	jrne	L0621
7926  12b1               L2621:
7927  12b1 4f            	clr	a
7928  12b2 2010          	jra	L4621
7929  12b4               L0621:
7930  12b4 ae074c        	ldw	x,#1868
7931  12b7 89            	pushw	x
7932  12b8 ae0000        	ldw	x,#0
7933  12bb 89            	pushw	x
7934  12bc ae0000        	ldw	x,#L101
7935  12bf cd0000        	call	_assert_failed
7937  12c2 5b04          	addw	sp,#4
7938  12c4               L4621:
7939                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7939                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
7941  12c4 c65259        	ld	a,21081
7942  12c7 a4f3          	and	a,#243
7943  12c9 1a01          	or	a,(OFST+1,sp)
7944  12cb c75259        	ld	21081,a
7945                     ; 1873 }
7948  12ce 84            	pop	a
7949  12cf 81            	ret
7986                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
7986                     ; 1886 {
7987                     	switch	.text
7988  12d0               _TIM1_SetIC3Prescaler:
7990  12d0 88            	push	a
7991       00000000      OFST:	set	0
7994                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
7996  12d1 4d            	tnz	a
7997  12d2 270c          	jreq	L2721
7998  12d4 a104          	cp	a,#4
7999  12d6 2708          	jreq	L2721
8000  12d8 a108          	cp	a,#8
8001  12da 2704          	jreq	L2721
8002  12dc a10c          	cp	a,#12
8003  12de 2603          	jrne	L0721
8004  12e0               L2721:
8005  12e0 4f            	clr	a
8006  12e1 2010          	jra	L4721
8007  12e3               L0721:
8008  12e3 ae0761        	ldw	x,#1889
8009  12e6 89            	pushw	x
8010  12e7 ae0000        	ldw	x,#0
8011  12ea 89            	pushw	x
8012  12eb ae0000        	ldw	x,#L101
8013  12ee cd0000        	call	_assert_failed
8015  12f1 5b04          	addw	sp,#4
8016  12f3               L4721:
8017                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
8017                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
8019  12f3 c6525a        	ld	a,21082
8020  12f6 a4f3          	and	a,#243
8021  12f8 1a01          	or	a,(OFST+1,sp)
8022  12fa c7525a        	ld	21082,a
8023                     ; 1894 }
8026  12fd 84            	pop	a
8027  12fe 81            	ret
8064                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
8064                     ; 1907 {
8065                     	switch	.text
8066  12ff               _TIM1_SetIC4Prescaler:
8068  12ff 88            	push	a
8069       00000000      OFST:	set	0
8072                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
8074  1300 4d            	tnz	a
8075  1301 270c          	jreq	L2031
8076  1303 a104          	cp	a,#4
8077  1305 2708          	jreq	L2031
8078  1307 a108          	cp	a,#8
8079  1309 2704          	jreq	L2031
8080  130b a10c          	cp	a,#12
8081  130d 2603          	jrne	L0031
8082  130f               L2031:
8083  130f 4f            	clr	a
8084  1310 2010          	jra	L4031
8085  1312               L0031:
8086  1312 ae0776        	ldw	x,#1910
8087  1315 89            	pushw	x
8088  1316 ae0000        	ldw	x,#0
8089  1319 89            	pushw	x
8090  131a ae0000        	ldw	x,#L101
8091  131d cd0000        	call	_assert_failed
8093  1320 5b04          	addw	sp,#4
8094  1322               L4031:
8095                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
8095                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
8097  1322 c6525b        	ld	a,21083
8098  1325 a4f3          	and	a,#243
8099  1327 1a01          	or	a,(OFST+1,sp)
8100  1329 c7525b        	ld	21083,a
8101                     ; 1915 }
8104  132c 84            	pop	a
8105  132d 81            	ret
8157                     ; 1922 uint16_t TIM1_GetCapture1(void)
8157                     ; 1923 {
8158                     	switch	.text
8159  132e               _TIM1_GetCapture1:
8161  132e 5204          	subw	sp,#4
8162       00000004      OFST:	set	4
8165                     ; 1926   uint16_t tmpccr1 = 0;
8167  1330 1e03          	ldw	x,(OFST-1,sp)
8168                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
8170  1332 7b01          	ld	a,(OFST-3,sp)
8171  1334 97            	ld	xl,a
8174  1335 7b02          	ld	a,(OFST-2,sp)
8175  1337 97            	ld	xl,a
8176                     ; 1929   tmpccr1h = TIM1->CCR1H;
8178  1338 c65265        	ld	a,21093
8179  133b 6b02          	ld	(OFST-2,sp),a
8180                     ; 1930   tmpccr1l = TIM1->CCR1L;
8182  133d c65266        	ld	a,21094
8183  1340 6b01          	ld	(OFST-3,sp),a
8184                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
8186  1342 7b01          	ld	a,(OFST-3,sp)
8187  1344 5f            	clrw	x
8188  1345 97            	ld	xl,a
8189  1346 1f03          	ldw	(OFST-1,sp),x
8190                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
8192  1348 7b02          	ld	a,(OFST-2,sp)
8193  134a 5f            	clrw	x
8194  134b 97            	ld	xl,a
8195  134c 4f            	clr	a
8196  134d 02            	rlwa	x,a
8197  134e 01            	rrwa	x,a
8198  134f 1a04          	or	a,(OFST+0,sp)
8199  1351 01            	rrwa	x,a
8200  1352 1a03          	or	a,(OFST-1,sp)
8201  1354 01            	rrwa	x,a
8202  1355 1f03          	ldw	(OFST-1,sp),x
8203                     ; 1935   return (uint16_t)tmpccr1;
8205  1357 1e03          	ldw	x,(OFST-1,sp)
8208  1359 5b04          	addw	sp,#4
8209  135b 81            	ret
8261                     ; 1943 uint16_t TIM1_GetCapture2(void)
8261                     ; 1944 {
8262                     	switch	.text
8263  135c               _TIM1_GetCapture2:
8265  135c 5204          	subw	sp,#4
8266       00000004      OFST:	set	4
8269                     ; 1947   uint16_t tmpccr2 = 0;
8271  135e 1e03          	ldw	x,(OFST-1,sp)
8272                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
8274  1360 7b01          	ld	a,(OFST-3,sp)
8275  1362 97            	ld	xl,a
8278  1363 7b02          	ld	a,(OFST-2,sp)
8279  1365 97            	ld	xl,a
8280                     ; 1950   tmpccr2h = TIM1->CCR2H;
8282  1366 c65267        	ld	a,21095
8283  1369 6b02          	ld	(OFST-2,sp),a
8284                     ; 1951   tmpccr2l = TIM1->CCR2L;
8286  136b c65268        	ld	a,21096
8287  136e 6b01          	ld	(OFST-3,sp),a
8288                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
8290  1370 7b01          	ld	a,(OFST-3,sp)
8291  1372 5f            	clrw	x
8292  1373 97            	ld	xl,a
8293  1374 1f03          	ldw	(OFST-1,sp),x
8294                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
8296  1376 7b02          	ld	a,(OFST-2,sp)
8297  1378 5f            	clrw	x
8298  1379 97            	ld	xl,a
8299  137a 4f            	clr	a
8300  137b 02            	rlwa	x,a
8301  137c 01            	rrwa	x,a
8302  137d 1a04          	or	a,(OFST+0,sp)
8303  137f 01            	rrwa	x,a
8304  1380 1a03          	or	a,(OFST-1,sp)
8305  1382 01            	rrwa	x,a
8306  1383 1f03          	ldw	(OFST-1,sp),x
8307                     ; 1956   return (uint16_t)tmpccr2;
8309  1385 1e03          	ldw	x,(OFST-1,sp)
8312  1387 5b04          	addw	sp,#4
8313  1389 81            	ret
8365                     ; 1964 uint16_t TIM1_GetCapture3(void)
8365                     ; 1965 {
8366                     	switch	.text
8367  138a               _TIM1_GetCapture3:
8369  138a 5204          	subw	sp,#4
8370       00000004      OFST:	set	4
8373                     ; 1967   uint16_t tmpccr3 = 0;
8375  138c 1e03          	ldw	x,(OFST-1,sp)
8376                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
8378  138e 7b01          	ld	a,(OFST-3,sp)
8379  1390 97            	ld	xl,a
8382  1391 7b02          	ld	a,(OFST-2,sp)
8383  1393 97            	ld	xl,a
8384                     ; 1970   tmpccr3h = TIM1->CCR3H;
8386  1394 c65269        	ld	a,21097
8387  1397 6b02          	ld	(OFST-2,sp),a
8388                     ; 1971   tmpccr3l = TIM1->CCR3L;
8390  1399 c6526a        	ld	a,21098
8391  139c 6b01          	ld	(OFST-3,sp),a
8392                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
8394  139e 7b01          	ld	a,(OFST-3,sp)
8395  13a0 5f            	clrw	x
8396  13a1 97            	ld	xl,a
8397  13a2 1f03          	ldw	(OFST-1,sp),x
8398                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
8400  13a4 7b02          	ld	a,(OFST-2,sp)
8401  13a6 5f            	clrw	x
8402  13a7 97            	ld	xl,a
8403  13a8 4f            	clr	a
8404  13a9 02            	rlwa	x,a
8405  13aa 01            	rrwa	x,a
8406  13ab 1a04          	or	a,(OFST+0,sp)
8407  13ad 01            	rrwa	x,a
8408  13ae 1a03          	or	a,(OFST-1,sp)
8409  13b0 01            	rrwa	x,a
8410  13b1 1f03          	ldw	(OFST-1,sp),x
8411                     ; 1976   return (uint16_t)tmpccr3;
8413  13b3 1e03          	ldw	x,(OFST-1,sp)
8416  13b5 5b04          	addw	sp,#4
8417  13b7 81            	ret
8469                     ; 1984 uint16_t TIM1_GetCapture4(void)
8469                     ; 1985 {
8470                     	switch	.text
8471  13b8               _TIM1_GetCapture4:
8473  13b8 5204          	subw	sp,#4
8474       00000004      OFST:	set	4
8477                     ; 1987   uint16_t tmpccr4 = 0;
8479  13ba 1e03          	ldw	x,(OFST-1,sp)
8480                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
8482  13bc 7b01          	ld	a,(OFST-3,sp)
8483  13be 97            	ld	xl,a
8486  13bf 7b02          	ld	a,(OFST-2,sp)
8487  13c1 97            	ld	xl,a
8488                     ; 1990   tmpccr4h = TIM1->CCR4H;
8490  13c2 c6526b        	ld	a,21099
8491  13c5 6b02          	ld	(OFST-2,sp),a
8492                     ; 1991   tmpccr4l = TIM1->CCR4L;
8494  13c7 c6526c        	ld	a,21100
8495  13ca 6b01          	ld	(OFST-3,sp),a
8496                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
8498  13cc 7b01          	ld	a,(OFST-3,sp)
8499  13ce 5f            	clrw	x
8500  13cf 97            	ld	xl,a
8501  13d0 1f03          	ldw	(OFST-1,sp),x
8502                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
8504  13d2 7b02          	ld	a,(OFST-2,sp)
8505  13d4 5f            	clrw	x
8506  13d5 97            	ld	xl,a
8507  13d6 4f            	clr	a
8508  13d7 02            	rlwa	x,a
8509  13d8 01            	rrwa	x,a
8510  13d9 1a04          	or	a,(OFST+0,sp)
8511  13db 01            	rrwa	x,a
8512  13dc 1a03          	or	a,(OFST-1,sp)
8513  13de 01            	rrwa	x,a
8514  13df 1f03          	ldw	(OFST-1,sp),x
8515                     ; 1996   return (uint16_t)tmpccr4;
8517  13e1 1e03          	ldw	x,(OFST-1,sp)
8520  13e3 5b04          	addw	sp,#4
8521  13e5 81            	ret
8555                     ; 2004 uint16_t TIM1_GetCounter(void)
8555                     ; 2005 {
8556                     	switch	.text
8557  13e6               _TIM1_GetCounter:
8559  13e6 89            	pushw	x
8560       00000002      OFST:	set	2
8563                     ; 2006   uint16_t tmpcntr = 0;
8565  13e7 5f            	clrw	x
8566  13e8 1f01          	ldw	(OFST-1,sp),x
8567                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
8569  13ea c6525e        	ld	a,21086
8570  13ed 5f            	clrw	x
8571  13ee 97            	ld	xl,a
8572  13ef 4f            	clr	a
8573  13f0 02            	rlwa	x,a
8574  13f1 1f01          	ldw	(OFST-1,sp),x
8575                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
8577  13f3 c6525f        	ld	a,21087
8578  13f6 5f            	clrw	x
8579  13f7 97            	ld	xl,a
8580  13f8 01            	rrwa	x,a
8581  13f9 1a02          	or	a,(OFST+0,sp)
8582  13fb 01            	rrwa	x,a
8583  13fc 1a01          	or	a,(OFST-1,sp)
8584  13fe 01            	rrwa	x,a
8587  13ff 5b02          	addw	sp,#2
8588  1401 81            	ret
8622                     ; 2019 uint16_t TIM1_GetPrescaler(void)
8622                     ; 2020 {
8623                     	switch	.text
8624  1402               _TIM1_GetPrescaler:
8626  1402 89            	pushw	x
8627       00000002      OFST:	set	2
8630                     ; 2021   uint16_t temp = 0;
8632  1403 5f            	clrw	x
8633  1404 1f01          	ldw	(OFST-1,sp),x
8634                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
8636  1406 c65260        	ld	a,21088
8637  1409 5f            	clrw	x
8638  140a 97            	ld	xl,a
8639  140b 4f            	clr	a
8640  140c 02            	rlwa	x,a
8641  140d 1f01          	ldw	(OFST-1,sp),x
8642                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
8644  140f c65261        	ld	a,21089
8645  1412 5f            	clrw	x
8646  1413 97            	ld	xl,a
8647  1414 01            	rrwa	x,a
8648  1415 1a02          	or	a,(OFST+0,sp)
8649  1417 01            	rrwa	x,a
8650  1418 1a01          	or	a,(OFST-1,sp)
8651  141a 01            	rrwa	x,a
8654  141b 5b02          	addw	sp,#2
8655  141d 81            	ret
8830                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8830                     ; 2048 {
8831                     	switch	.text
8832  141e               _TIM1_GetFlagStatus:
8834  141e 89            	pushw	x
8835  141f 89            	pushw	x
8836       00000002      OFST:	set	2
8839                     ; 2049   FlagStatus bitstatus = RESET;
8841  1420 7b02          	ld	a,(OFST+0,sp)
8842  1422 97            	ld	xl,a
8843                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8845  1423 7b01          	ld	a,(OFST-1,sp)
8846  1425 97            	ld	xl,a
8849  1426 7b02          	ld	a,(OFST+0,sp)
8850  1428 97            	ld	xl,a
8851                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8853  1429 1e03          	ldw	x,(OFST+1,sp)
8854  142b a30001        	cpw	x,#1
8855  142e 274d          	jreq	L6231
8856  1430 1e03          	ldw	x,(OFST+1,sp)
8857  1432 a30002        	cpw	x,#2
8858  1435 2746          	jreq	L6231
8859  1437 1e03          	ldw	x,(OFST+1,sp)
8860  1439 a30004        	cpw	x,#4
8861  143c 273f          	jreq	L6231
8862  143e 1e03          	ldw	x,(OFST+1,sp)
8863  1440 a30008        	cpw	x,#8
8864  1443 2738          	jreq	L6231
8865  1445 1e03          	ldw	x,(OFST+1,sp)
8866  1447 a30010        	cpw	x,#16
8867  144a 2731          	jreq	L6231
8868  144c 1e03          	ldw	x,(OFST+1,sp)
8869  144e a30020        	cpw	x,#32
8870  1451 272a          	jreq	L6231
8871  1453 1e03          	ldw	x,(OFST+1,sp)
8872  1455 a30040        	cpw	x,#64
8873  1458 2723          	jreq	L6231
8874  145a 1e03          	ldw	x,(OFST+1,sp)
8875  145c a30080        	cpw	x,#128
8876  145f 271c          	jreq	L6231
8877  1461 1e03          	ldw	x,(OFST+1,sp)
8878  1463 a30200        	cpw	x,#512
8879  1466 2715          	jreq	L6231
8880  1468 1e03          	ldw	x,(OFST+1,sp)
8881  146a a30400        	cpw	x,#1024
8882  146d 270e          	jreq	L6231
8883  146f 1e03          	ldw	x,(OFST+1,sp)
8884  1471 a30800        	cpw	x,#2048
8885  1474 2707          	jreq	L6231
8886  1476 1e03          	ldw	x,(OFST+1,sp)
8887  1478 a31000        	cpw	x,#4096
8888  147b 2603          	jrne	L4231
8889  147d               L6231:
8890  147d 4f            	clr	a
8891  147e 2010          	jra	L0331
8892  1480               L4231:
8893  1480 ae0805        	ldw	x,#2053
8894  1483 89            	pushw	x
8895  1484 ae0000        	ldw	x,#0
8896  1487 89            	pushw	x
8897  1488 ae0000        	ldw	x,#L101
8898  148b cd0000        	call	_assert_failed
8900  148e 5b04          	addw	sp,#4
8901  1490               L0331:
8902                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8904  1490 c65255        	ld	a,21077
8905  1493 1404          	and	a,(OFST+2,sp)
8906  1495 6b01          	ld	(OFST-1,sp),a
8907                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8909  1497 7b03          	ld	a,(OFST+1,sp)
8910  1499 6b02          	ld	(OFST+0,sp),a
8911                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8913  149b c65256        	ld	a,21078
8914  149e 1402          	and	a,(OFST+0,sp)
8915  14a0 1a01          	or	a,(OFST-1,sp)
8916  14a2 2706          	jreq	L7643
8917                     ; 2060     bitstatus = SET;
8919  14a4 a601          	ld	a,#1
8920  14a6 6b02          	ld	(OFST+0,sp),a
8922  14a8 2002          	jra	L1743
8923  14aa               L7643:
8924                     ; 2064     bitstatus = RESET;
8926  14aa 0f02          	clr	(OFST+0,sp)
8927  14ac               L1743:
8928                     ; 2066   return (FlagStatus)(bitstatus);
8930  14ac 7b02          	ld	a,(OFST+0,sp)
8933  14ae 5b04          	addw	sp,#4
8934  14b0 81            	ret
8970                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8970                     ; 2088 {
8971                     	switch	.text
8972  14b1               _TIM1_ClearFlag:
8974  14b1 89            	pushw	x
8975       00000000      OFST:	set	0
8978                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8980  14b2 01            	rrwa	x,a
8981  14b3 9f            	ld	a,xl
8982  14b4 a4e1          	and	a,#225
8983  14b6 97            	ld	xl,a
8984  14b7 4f            	clr	a
8985  14b8 02            	rlwa	x,a
8986  14b9 5d            	tnzw	x
8987  14ba 2607          	jrne	L4331
8988  14bc 1e01          	ldw	x,(OFST+1,sp)
8989  14be 2703          	jreq	L4331
8990  14c0 4f            	clr	a
8991  14c1 2010          	jra	L6331
8992  14c3               L4331:
8993  14c3 ae082a        	ldw	x,#2090
8994  14c6 89            	pushw	x
8995  14c7 ae0000        	ldw	x,#0
8996  14ca 89            	pushw	x
8997  14cb ae0000        	ldw	x,#L101
8998  14ce cd0000        	call	_assert_failed
9000  14d1 5b04          	addw	sp,#4
9001  14d3               L6331:
9002                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
9004  14d3 7b02          	ld	a,(OFST+2,sp)
9005  14d5 43            	cpl	a
9006  14d6 c75255        	ld	21077,a
9007                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
9007                     ; 2095                         (uint8_t)0x1E);
9009  14d9 7b01          	ld	a,(OFST+1,sp)
9010  14db 43            	cpl	a
9011  14dc a41e          	and	a,#30
9012  14de c75256        	ld	21078,a
9013                     ; 2096 }
9016  14e1 85            	popw	x
9017  14e2 81            	ret
9082                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
9082                     ; 2113 {
9083                     	switch	.text
9084  14e3               _TIM1_GetITStatus:
9086  14e3 88            	push	a
9087  14e4 89            	pushw	x
9088       00000002      OFST:	set	2
9091                     ; 2114   ITStatus bitstatus = RESET;
9093  14e5 7b02          	ld	a,(OFST+0,sp)
9094  14e7 97            	ld	xl,a
9095                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
9097  14e8 7b01          	ld	a,(OFST-1,sp)
9098  14ea 97            	ld	xl,a
9101  14eb 7b02          	ld	a,(OFST+0,sp)
9102  14ed 97            	ld	xl,a
9103                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
9105  14ee 7b03          	ld	a,(OFST+1,sp)
9106  14f0 a101          	cp	a,#1
9107  14f2 272a          	jreq	L4431
9108  14f4 7b03          	ld	a,(OFST+1,sp)
9109  14f6 a102          	cp	a,#2
9110  14f8 2724          	jreq	L4431
9111  14fa 7b03          	ld	a,(OFST+1,sp)
9112  14fc a104          	cp	a,#4
9113  14fe 271e          	jreq	L4431
9114  1500 7b03          	ld	a,(OFST+1,sp)
9115  1502 a108          	cp	a,#8
9116  1504 2718          	jreq	L4431
9117  1506 7b03          	ld	a,(OFST+1,sp)
9118  1508 a110          	cp	a,#16
9119  150a 2712          	jreq	L4431
9120  150c 7b03          	ld	a,(OFST+1,sp)
9121  150e a120          	cp	a,#32
9122  1510 270c          	jreq	L4431
9123  1512 7b03          	ld	a,(OFST+1,sp)
9124  1514 a140          	cp	a,#64
9125  1516 2706          	jreq	L4431
9126  1518 7b03          	ld	a,(OFST+1,sp)
9127  151a a180          	cp	a,#128
9128  151c 2603          	jrne	L2431
9129  151e               L4431:
9130  151e 4f            	clr	a
9131  151f 2010          	jra	L6431
9132  1521               L2431:
9133  1521 ae0846        	ldw	x,#2118
9134  1524 89            	pushw	x
9135  1525 ae0000        	ldw	x,#0
9136  1528 89            	pushw	x
9137  1529 ae0000        	ldw	x,#L101
9138  152c cd0000        	call	_assert_failed
9140  152f 5b04          	addw	sp,#4
9141  1531               L6431:
9142                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
9144  1531 c65255        	ld	a,21077
9145  1534 1403          	and	a,(OFST+1,sp)
9146  1536 6b01          	ld	(OFST-1,sp),a
9147                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
9149  1538 c65254        	ld	a,21076
9150  153b 1403          	and	a,(OFST+1,sp)
9151  153d 6b02          	ld	(OFST+0,sp),a
9152                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
9154  153f 0d01          	tnz	(OFST-1,sp)
9155  1541 270a          	jreq	L3453
9157  1543 0d02          	tnz	(OFST+0,sp)
9158  1545 2706          	jreq	L3453
9159                     ; 2126     bitstatus = SET;
9161  1547 a601          	ld	a,#1
9162  1549 6b02          	ld	(OFST+0,sp),a
9164  154b 2002          	jra	L5453
9165  154d               L3453:
9166                     ; 2130     bitstatus = RESET;
9168  154d 0f02          	clr	(OFST+0,sp)
9169  154f               L5453:
9170                     ; 2132   return (ITStatus)(bitstatus);
9172  154f 7b02          	ld	a,(OFST+0,sp)
9175  1551 5b03          	addw	sp,#3
9176  1553 81            	ret
9213                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
9213                     ; 2150 {
9214                     	switch	.text
9215  1554               _TIM1_ClearITPendingBit:
9217  1554 88            	push	a
9218       00000000      OFST:	set	0
9221                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
9223  1555 4d            	tnz	a
9224  1556 2703          	jreq	L2531
9225  1558 4f            	clr	a
9226  1559 2010          	jra	L4531
9227  155b               L2531:
9228  155b ae0868        	ldw	x,#2152
9229  155e 89            	pushw	x
9230  155f ae0000        	ldw	x,#0
9231  1562 89            	pushw	x
9232  1563 ae0000        	ldw	x,#L101
9233  1566 cd0000        	call	_assert_failed
9235  1569 5b04          	addw	sp,#4
9236  156b               L4531:
9237                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
9239  156b 7b01          	ld	a,(OFST+1,sp)
9240  156d 43            	cpl	a
9241  156e c75255        	ld	21077,a
9242                     ; 2156 }
9245  1571 84            	pop	a
9246  1572 81            	ret
9298                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
9298                     ; 2175                        uint8_t TIM1_ICSelection,
9298                     ; 2176                        uint8_t TIM1_ICFilter)
9298                     ; 2177 {
9299                     	switch	.text
9300  1573               L3_TI1_Config:
9302  1573 89            	pushw	x
9303  1574 88            	push	a
9304       00000001      OFST:	set	1
9307                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
9309  1575 7211525c      	bres	21084,#0
9310                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
9310                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9312  1579 7b06          	ld	a,(OFST+5,sp)
9313  157b 97            	ld	xl,a
9314  157c a610          	ld	a,#16
9315  157e 42            	mul	x,a
9316  157f 9f            	ld	a,xl
9317  1580 1a03          	or	a,(OFST+2,sp)
9318  1582 6b01          	ld	(OFST+0,sp),a
9319  1584 c65258        	ld	a,21080
9320  1587 a40c          	and	a,#12
9321  1589 1a01          	or	a,(OFST+0,sp)
9322  158b c75258        	ld	21080,a
9323                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9325  158e 0d02          	tnz	(OFST+1,sp)
9326  1590 2706          	jreq	L3163
9327                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
9329  1592 7212525c      	bset	21084,#1
9331  1596 2004          	jra	L5163
9332  1598               L3163:
9333                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
9335  1598 7213525c      	bres	21084,#1
9336  159c               L5163:
9337                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
9339  159c 7210525c      	bset	21084,#0
9340                     ; 2197 }
9343  15a0 5b03          	addw	sp,#3
9344  15a2 81            	ret
9396                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
9396                     ; 2216                        uint8_t TIM1_ICSelection,
9396                     ; 2217                        uint8_t TIM1_ICFilter)
9396                     ; 2218 {
9397                     	switch	.text
9398  15a3               L5_TI2_Config:
9400  15a3 89            	pushw	x
9401  15a4 88            	push	a
9402       00000001      OFST:	set	1
9405                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
9407  15a5 7219525c      	bres	21084,#4
9408                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
9408                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9410  15a9 7b06          	ld	a,(OFST+5,sp)
9411  15ab 97            	ld	xl,a
9412  15ac a610          	ld	a,#16
9413  15ae 42            	mul	x,a
9414  15af 9f            	ld	a,xl
9415  15b0 1a03          	or	a,(OFST+2,sp)
9416  15b2 6b01          	ld	(OFST+0,sp),a
9417  15b4 c65259        	ld	a,21081
9418  15b7 a40c          	and	a,#12
9419  15b9 1a01          	or	a,(OFST+0,sp)
9420  15bb c75259        	ld	21081,a
9421                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9423  15be 0d02          	tnz	(OFST+1,sp)
9424  15c0 2706          	jreq	L5463
9425                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
9427  15c2 721a525c      	bset	21084,#5
9429  15c6 2004          	jra	L7463
9430  15c8               L5463:
9431                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
9433  15c8 721b525c      	bres	21084,#5
9434  15cc               L7463:
9435                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
9437  15cc 7218525c      	bset	21084,#4
9438                     ; 2236 }
9441  15d0 5b03          	addw	sp,#3
9442  15d2 81            	ret
9494                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
9494                     ; 2255                        uint8_t TIM1_ICSelection,
9494                     ; 2256                        uint8_t TIM1_ICFilter)
9494                     ; 2257 {
9495                     	switch	.text
9496  15d3               L7_TI3_Config:
9498  15d3 89            	pushw	x
9499  15d4 88            	push	a
9500       00000001      OFST:	set	1
9503                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
9505  15d5 7211525d      	bres	21085,#0
9506                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
9506                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9508  15d9 7b06          	ld	a,(OFST+5,sp)
9509  15db 97            	ld	xl,a
9510  15dc a610          	ld	a,#16
9511  15de 42            	mul	x,a
9512  15df 9f            	ld	a,xl
9513  15e0 1a03          	or	a,(OFST+2,sp)
9514  15e2 6b01          	ld	(OFST+0,sp),a
9515  15e4 c6525a        	ld	a,21082
9516  15e7 a40c          	and	a,#12
9517  15e9 1a01          	or	a,(OFST+0,sp)
9518  15eb c7525a        	ld	21082,a
9519                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9521  15ee 0d02          	tnz	(OFST+1,sp)
9522  15f0 2706          	jreq	L7763
9523                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
9525  15f2 7212525d      	bset	21085,#1
9527  15f6 2004          	jra	L1073
9528  15f8               L7763:
9529                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
9531  15f8 7213525d      	bres	21085,#1
9532  15fc               L1073:
9533                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
9535  15fc 7210525d      	bset	21085,#0
9536                     ; 2276 }
9539  1600 5b03          	addw	sp,#3
9540  1602 81            	ret
9592                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
9592                     ; 2295                        uint8_t TIM1_ICSelection,
9592                     ; 2296                        uint8_t TIM1_ICFilter)
9592                     ; 2297 {
9593                     	switch	.text
9594  1603               L11_TI4_Config:
9596  1603 89            	pushw	x
9597  1604 88            	push	a
9598       00000001      OFST:	set	1
9601                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
9603  1605 7219525d      	bres	21085,#4
9604                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
9604                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9606  1609 7b06          	ld	a,(OFST+5,sp)
9607  160b 97            	ld	xl,a
9608  160c a610          	ld	a,#16
9609  160e 42            	mul	x,a
9610  160f 9f            	ld	a,xl
9611  1610 1a03          	or	a,(OFST+2,sp)
9612  1612 6b01          	ld	(OFST+0,sp),a
9613  1614 c6525b        	ld	a,21083
9614  1617 a40c          	and	a,#12
9615  1619 1a01          	or	a,(OFST+0,sp)
9616  161b c7525b        	ld	21083,a
9617                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9619  161e 0d02          	tnz	(OFST+1,sp)
9620  1620 2706          	jreq	L1373
9621                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
9623  1622 721a525d      	bset	21085,#5
9625  1626 2004          	jra	L3373
9626  1628               L1373:
9627                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
9629  1628 721b525d      	bres	21085,#5
9630  162c               L3373:
9631                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
9633  162c 7218525d      	bset	21085,#4
9634                     ; 2317 }
9637  1630 5b03          	addw	sp,#3
9638  1632 81            	ret
9651                     	xdef	_TIM1_ClearITPendingBit
9652                     	xdef	_TIM1_GetITStatus
9653                     	xdef	_TIM1_ClearFlag
9654                     	xdef	_TIM1_GetFlagStatus
9655                     	xdef	_TIM1_GetPrescaler
9656                     	xdef	_TIM1_GetCounter
9657                     	xdef	_TIM1_GetCapture4
9658                     	xdef	_TIM1_GetCapture3
9659                     	xdef	_TIM1_GetCapture2
9660                     	xdef	_TIM1_GetCapture1
9661                     	xdef	_TIM1_SetIC4Prescaler
9662                     	xdef	_TIM1_SetIC3Prescaler
9663                     	xdef	_TIM1_SetIC2Prescaler
9664                     	xdef	_TIM1_SetIC1Prescaler
9665                     	xdef	_TIM1_SetCompare4
9666                     	xdef	_TIM1_SetCompare3
9667                     	xdef	_TIM1_SetCompare2
9668                     	xdef	_TIM1_SetCompare1
9669                     	xdef	_TIM1_SetAutoreload
9670                     	xdef	_TIM1_SetCounter
9671                     	xdef	_TIM1_SelectOCxM
9672                     	xdef	_TIM1_CCxNCmd
9673                     	xdef	_TIM1_CCxCmd
9674                     	xdef	_TIM1_OC4PolarityConfig
9675                     	xdef	_TIM1_OC3NPolarityConfig
9676                     	xdef	_TIM1_OC3PolarityConfig
9677                     	xdef	_TIM1_OC2NPolarityConfig
9678                     	xdef	_TIM1_OC2PolarityConfig
9679                     	xdef	_TIM1_OC1NPolarityConfig
9680                     	xdef	_TIM1_OC1PolarityConfig
9681                     	xdef	_TIM1_GenerateEvent
9682                     	xdef	_TIM1_OC4FastConfig
9683                     	xdef	_TIM1_OC3FastConfig
9684                     	xdef	_TIM1_OC2FastConfig
9685                     	xdef	_TIM1_OC1FastConfig
9686                     	xdef	_TIM1_OC4PreloadConfig
9687                     	xdef	_TIM1_OC3PreloadConfig
9688                     	xdef	_TIM1_OC2PreloadConfig
9689                     	xdef	_TIM1_OC1PreloadConfig
9690                     	xdef	_TIM1_CCPreloadControl
9691                     	xdef	_TIM1_SelectCOM
9692                     	xdef	_TIM1_ARRPreloadConfig
9693                     	xdef	_TIM1_ForcedOC4Config
9694                     	xdef	_TIM1_ForcedOC3Config
9695                     	xdef	_TIM1_ForcedOC2Config
9696                     	xdef	_TIM1_ForcedOC1Config
9697                     	xdef	_TIM1_CounterModeConfig
9698                     	xdef	_TIM1_PrescalerConfig
9699                     	xdef	_TIM1_EncoderInterfaceConfig
9700                     	xdef	_TIM1_SelectMasterSlaveMode
9701                     	xdef	_TIM1_SelectSlaveMode
9702                     	xdef	_TIM1_SelectOutputTrigger
9703                     	xdef	_TIM1_SelectOnePulseMode
9704                     	xdef	_TIM1_SelectHallSensor
9705                     	xdef	_TIM1_UpdateRequestConfig
9706                     	xdef	_TIM1_UpdateDisableConfig
9707                     	xdef	_TIM1_SelectInputTrigger
9708                     	xdef	_TIM1_TIxExternalClockConfig
9709                     	xdef	_TIM1_ETRConfig
9710                     	xdef	_TIM1_ETRClockMode2Config
9711                     	xdef	_TIM1_ETRClockMode1Config
9712                     	xdef	_TIM1_InternalClockConfig
9713                     	xdef	_TIM1_ITConfig
9714                     	xdef	_TIM1_CtrlPWMOutputs
9715                     	xdef	_TIM1_Cmd
9716                     	xdef	_TIM1_PWMIConfig
9717                     	xdef	_TIM1_ICInit
9718                     	xdef	_TIM1_BDTRConfig
9719                     	xdef	_TIM1_OC4Init
9720                     	xdef	_TIM1_OC3Init
9721                     	xdef	_TIM1_OC2Init
9722                     	xdef	_TIM1_OC1Init
9723                     	xdef	_TIM1_TimeBaseInit
9724                     	xdef	_TIM1_DeInit
9725                     	xref	_assert_failed
9726                     .const:	section	.text
9727  0000               L101:
9728  0000 2e2e5c627370  	dc.b	"..\bsp\stm8s_tim1."
9729  0012 6300          	dc.b	"c",0
9749                     	end
