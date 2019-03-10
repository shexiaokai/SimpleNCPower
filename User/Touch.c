#include "Touch.h"

u16 touch_a[4]={0};
u16 touch_t[4]={0};
u8 	touch_d[4]={0};


void Touch_Delay(void)   //100us
{
    unsigned char a,b;
    for(b=159;b>0;b--)
        for(a=1;a>0;a--);
}



void Touch_GpioInit(void)
{
	//PC5 
	GPIOC->DDR|= 0x01<<5;		
	GPIOC->CR1|= 0x01<<5;
}


void Touch_Init(void)
{
	void Tim1_Init(void);
	void Touch_GpioInit(void);
	
	Touch_GpioInit();
	
	
	
	Tim1_Init();
	
	Delay100ms();
	
	touch_t[0]=touch_a[0]+TOUCH_THRESHOLD_VALUE;
	touch_t[1]=touch_a[1]+TOUCH_THRESHOLD_VALUE;
	touch_t[2]=touch_a[2]+TOUCH_THRESHOLD_VALUE;
	touch_t[3]=touch_a[3]+TOUCH_THRESHOLD_VALUE;
	
	Delay100ms();
}




void Tim1_Init(void)
{

	TIM1->ARRH = 0xFF;
	TIM1->ARRL = 0xFF;
	TIM1->PSCRH = 0x00;
	TIM1->PSCRL = 0x00;
	
	TIM1->CCMR1 = 0x01;
	TIM1->CCMR2 = 0x01;
	TIM1->CCMR3 = 0x01;
	TIM1->CCMR4 = 0x01;
	
	TIM1->CCER1 = 0x11;
	TIM1->CCER2 = 0x11;
	
	TIM1->IER = 0x01;
	TIM1->CR1 |= TIM1_CR1_CEN;
	
}

@far @interrupt void  TIM1_UPD_OVF_TRG_BRK_IRQHandler(void)
{
	GPIOC->ODR &= ~(0x01<<5); 			//充电端口拉低
	GPIOC->DDR |= 0xF8;					//按键放电
	
	//GPIOD->ODR |= 0x01;				//测试端口
	
	TIM1->SR1 &= ~TIM1_SR1_UIF;			//清标志位
	
	TIM1->CR1 &= ~TIM1_CR1_CEN;			//停止计数
	
	TIM1->CNTRH=0x00;					//计数清零
	TIM1->CNTRL=0x00;					//
	
	touch_a[0]=( touch_a[0]/5*4+ \
	(((TIM1->CCR1H)<<8)+(TIM1->CCR1L)) )/5;
	touch_a[1]=( touch_a[1]/5*4+ \
	(((TIM1->CCR2H)<<8)+(TIM1->CCR2L)) )/5;
	touch_a[2]=( touch_a[2]/5*4+ \
	(((TIM1->CCR3H)<<8)+(TIM1->CCR3L)) )/5;
	touch_a[3]=( touch_a[3]/5*4+ \
	(((TIM1->CCR4H)<<8)+(TIM1->CCR4L)) )/5;

	touch_d[0] = touch_a[0]>touch_t[0]? 1:0;	//按键数字量
	touch_d[1] = touch_a[1]>touch_t[1]? 1:0;
	touch_d[2] = touch_a[2]>touch_t[2]? 1:0;
	touch_d[3] = touch_a[3]>touch_t[3]? 1:0;
	
	//Touch_Delay();
	
	GPIOC->DDR &= ~0xF8;
	
	TIM1->CR1 |= TIM1_CR1_CEN;
	
	GPIOC->ODR |= 0x01<<5;		//开始充电
	//GPIOD->ODR &= ~0x01;
}
