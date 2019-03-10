/**
  *********************************  STM8S903  *********************************
  * @文件名     ： 	PWM.c
  * @作者       ： 	佘晓凯 
  * @库版本     ： 	自写库 
  * @文件版本   ： 	V1.0.0
  * @日期       ： 	2019年02月26日  
  * @摘要       ： 	TIM5通道3输出一路PWM
					另一路利用溢出中断和CCR中断手动生成
					
  ******************************************************************************/
/* 包含的头文件 --------------------------------------------------------------*/
#include "PWM.h"


/* 全局变量 ------------------------------------------------------------------*/

//PWM初始化
void PWM_Init(void)
{
	void PWM_GPIO_Init(void);
	PWM_GPIO_Init();
	TIM5->ARRH=999/256;		//TIM5计1000个数
	TIM5->ARRL=999%256;		
	//TIM5->CCMR1=0x60;
	TIM5->CCMR3=0x60;		//PWM模式1	
	//TIM5->CCER1=0x01;
	TIM5->CCER2=0x01;
	TIM5->CCR1H=99/256;		
	TIM5->CCR1L=99%256;
	TIM5->CCR3H=99/256;			
	TIM5->CCR3L=99%256;
	TIM5->IER =0x03;	//使能定时器溢出中断和中断1捕获中断
	TIM5->CR1|=0x01;	//使能计数器
}

/************************************************
Fun name ： PWM_GPIO_Init
Role	 ： Initial PD2 and PD4 
Abstract :	
*************************************************/
void PWM_GPIO_Init(void)
{
	GPIOD->DDR |= (0x01<<2);		//Output mode
	GPIOD->DDR |= (0x01<<4);		//Output mode
	GPIOD->CR1 |= (0x01<<2);		//Push-pull mode
	GPIOD->CR1 |= (0x01<<4);		//Push-pull mode
}

@far @interrupt void TIM5_UPD_OVF_BRK_TRG_IRQHandler(void)
{
	TIM5->SR1 &= ~TIM5_SR1_UIF;			//清标志位
	GPIOD->ODR |= (0x01<<4);
}
@far @interrupt void TIM5_CAP_COM_IRQHandler(void)
{
	TIM5->SR1 &= ~TIM5_SR1_CC1IF;			//清标志位
	GPIOD->ODR &= ~(0x01<<4);
	
}

void SetPWM(u8 ch1,u8 ch3)
{
	TIM5->CCR3H=(int)(ch1*5.5-10)/256;		
	TIM5->CCR3L=(int)(ch1*5.5-10)%256;
	TIM5->CCR1H=(int)(ch3*2+0)/256;		
	TIM5->CCR1L=(int)(ch3*2+0)%256;
}