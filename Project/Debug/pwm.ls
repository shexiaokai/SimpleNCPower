   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
   4                     	xref	_PWM_GPIO_Init
  34                     ; 19 void PWM_Init(void)
  34                     ; 20 {
  36                     	switch	.text
  37  0000               _PWM_Init:
  41                     ; 22 	PWM_GPIO_Init();
  43  0000 ad29          	call	_PWM_GPIO_Init
  45                     ; 23 	TIM5->ARRH=999/256;		//TIM5计1000个数
  47  0002 3503530f      	mov	21263,#3
  48                     ; 24 	TIM5->ARRL=999%256;		
  50  0006 35e75310      	mov	21264,#231
  51                     ; 26 	TIM5->CCMR3=0x60;		//PWM模式1	
  53  000a 35605309      	mov	21257,#96
  54                     ; 28 	TIM5->CCER2=0x01;
  56  000e 3501530b      	mov	21259,#1
  57                     ; 29 	TIM5->CCR1H=99/256;		
  59  0012 725f5311      	clr	21265
  60                     ; 30 	TIM5->CCR1L=99%256;
  62  0016 35635312      	mov	21266,#99
  63                     ; 31 	TIM5->CCR3H=99/256;			
  65  001a 725f5315      	clr	21269
  66                     ; 32 	TIM5->CCR3L=99%256;
  68  001e 35635316      	mov	21270,#99
  69                     ; 33 	TIM5->IER =0x03;	//使能定时器溢出中断和中断1捕获中断
  71  0022 35035303      	mov	21251,#3
  72                     ; 34 	TIM5->CR1|=0x01;	//使能计数器
  74  0026 72105300      	bset	21248,#0
  75                     ; 35 }
  78  002a 81            	ret
 101                     ; 42 void PWM_GPIO_Init(void)
 101                     ; 43 {
 102                     	switch	.text
 103  002b               _PWM_GPIO_Init:
 107                     ; 44 	GPIOD->DDR |= (0x01<<2);		//Output mode
 109  002b 72145011      	bset	20497,#2
 110                     ; 45 	GPIOD->DDR |= (0x01<<4);		//Output mode
 112  002f 72185011      	bset	20497,#4
 113                     ; 46 	GPIOD->CR1 |= (0x01<<2);		//Push-pull mode
 115  0033 72145012      	bset	20498,#2
 116                     ; 47 	GPIOD->CR1 |= (0x01<<4);		//Push-pull mode
 118  0037 72185012      	bset	20498,#4
 119                     ; 48 }
 122  003b 81            	ret
 146                     ; 50 @far @interrupt void TIM5_UPD_OVF_BRK_TRG_IRQHandler(void)
 146                     ; 51 {
 148                     	switch	.text
 149  003c               f_TIM5_UPD_OVF_BRK_TRG_IRQHandler:
 153                     ; 52 	TIM5->SR1 &= ~TIM5_SR1_UIF;			//清标志位
 155  003c 72115304      	bres	21252,#0
 156                     ; 53 	GPIOD->ODR |= (0x01<<4);
 158  0040 7218500f      	bset	20495,#4
 159                     ; 54 }
 162  0044 80            	iret
 185                     ; 55 @far @interrupt void TIM5_CAP_COM_IRQHandler(void)
 185                     ; 56 {
 186                     	switch	.text
 187  0045               f_TIM5_CAP_COM_IRQHandler:
 191                     ; 57 	TIM5->SR1 &= ~TIM5_SR1_CC1IF;			//清标志位
 193  0045 72135304      	bres	21252,#1
 194                     ; 58 	GPIOD->ODR &= ~(0x01<<4);
 196  0049 7219500f      	bres	20495,#4
 197                     ; 60 }
 200  004d 80            	iret
 242                     ; 62 void SetPWM(u8 ch1,u8 ch3)
 242                     ; 63 {
 244                     	switch	.text
 245  004e               _SetPWM:
 247  004e 89            	pushw	x
 248       00000000      OFST:	set	0
 251                     ; 64 	TIM5->CCR3H=(int)(ch1*5.5-10)/256;		
 253  004f 9e            	ld	a,xh
 254  0050 5f            	clrw	x
 255  0051 97            	ld	xl,a
 256  0052 cd0000        	call	c_itof
 258  0055 ae0004        	ldw	x,#L77
 259  0058 cd0000        	call	c_fmul
 261  005b ae0000        	ldw	x,#L701
 262  005e cd0000        	call	c_fsub
 264  0061 cd0000        	call	c_ftoi
 266  0064 90ae0100      	ldw	y,#256
 267  0068 cd0000        	call	c_idiv
 269  006b 01            	rrwa	x,a
 270  006c c75315        	ld	21269,a
 271  006f 02            	rlwa	x,a
 272                     ; 65 	TIM5->CCR3L=(int)(ch1*5.5-10)%256;
 274  0070 7b01          	ld	a,(OFST+1,sp)
 275  0072 5f            	clrw	x
 276  0073 97            	ld	xl,a
 277  0074 cd0000        	call	c_itof
 279  0077 ae0004        	ldw	x,#L77
 280  007a cd0000        	call	c_fmul
 282  007d ae0000        	ldw	x,#L701
 283  0080 cd0000        	call	c_fsub
 285  0083 cd0000        	call	c_ftoi
 287  0086 90ae0100      	ldw	y,#256
 288  008a cd0000        	call	c_idiv
 290  008d 51            	exgw	x,y
 291  008e 9f            	ld	a,xl
 292  008f c75316        	ld	21270,a
 293                     ; 66 	TIM5->CCR1H=(int)(ch3*2+0)/256;		
 295  0092 7b02          	ld	a,(OFST+2,sp)
 296  0094 5f            	clrw	x
 297  0095 97            	ld	xl,a
 298  0096 58            	sllw	x
 299  0097 90ae0100      	ldw	y,#256
 300  009b cd0000        	call	c_idiv
 302  009e 01            	rrwa	x,a
 303  009f c75311        	ld	21265,a
 304  00a2 02            	rlwa	x,a
 305                     ; 67 	TIM5->CCR1L=(int)(ch3*2+0)%256;
 307  00a3 7b02          	ld	a,(OFST+2,sp)
 308  00a5 5f            	clrw	x
 309  00a6 97            	ld	xl,a
 310  00a7 58            	sllw	x
 311  00a8 90ae0100      	ldw	y,#256
 312  00ac cd0000        	call	c_idiv
 314  00af 51            	exgw	x,y
 315  00b0 9f            	ld	a,xl
 316  00b1 c75312        	ld	21266,a
 317                     ; 68 }
 320  00b4 85            	popw	x
 321  00b5 81            	ret
 334                     	xdef	f_TIM5_CAP_COM_IRQHandler
 335                     	xdef	f_TIM5_UPD_OVF_BRK_TRG_IRQHandler
 336                     	xdef	_PWM_GPIO_Init
 337                     	xdef	_SetPWM
 338                     	xdef	_PWM_Init
 339                     .const:	section	.text
 340  0000               L701:
 341  0000 41200000      	dc.w	16672,0
 342  0004               L77:
 343  0004 40b00000      	dc.w	16560,0
 344                     	xref.b	c_x
 364                     	xref	c_idiv
 365                     	xref	c_ftoi
 366                     	xref	c_fsub
 367                     	xref	c_fmul
 368                     	xref	c_itof
 369                     	end
