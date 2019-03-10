/**
  *********************************  STM8S903  *********************************
  * @�ļ���     �� 	PWM.c
  * @����       �� 	������ 
  * @��汾     �� 	��д�� 
  * @�ļ��汾   �� 	V1.0.0
  * @����       �� 	2019��02��26��  
  * @ժҪ       �� 	TIM5ͨ��3���һ·PWM
					��һ·��������жϺ�CCR�ж��ֶ�����
					
  ******************************************************************************/
/* ������ͷ�ļ� --------------------------------------------------------------*/
#include "PWM.h"


/* ȫ�ֱ��� ------------------------------------------------------------------*/

//PWM��ʼ��
void PWM_Init(void)
{
	void PWM_GPIO_Init(void);
	PWM_GPIO_Init();
	TIM5->ARRH=999/256;		//TIM5��1000����
	TIM5->ARRL=999%256;		
	//TIM5->CCMR1=0x60;
	TIM5->CCMR3=0x60;		//PWMģʽ1	
	//TIM5->CCER1=0x01;
	TIM5->CCER2=0x01;
	TIM5->CCR1H=99/256;		
	TIM5->CCR1L=99%256;
	TIM5->CCR3H=99/256;			
	TIM5->CCR3L=99%256;
	TIM5->IER =0x03;	//ʹ�ܶ�ʱ������жϺ��ж�1�����ж�
	TIM5->CR1|=0x01;	//ʹ�ܼ�����
}

/************************************************
Fun name �� PWM_GPIO_Init
Role	 �� Initial PD2 and PD4 
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
	TIM5->SR1 &= ~TIM5_SR1_UIF;			//���־λ
	GPIOD->ODR |= (0x01<<4);
}
@far @interrupt void TIM5_CAP_COM_IRQHandler(void)
{
	TIM5->SR1 &= ~TIM5_SR1_CC1IF;			//���־λ
	GPIOD->ODR &= ~(0x01<<4);
	
}

void SetPWM(u8 ch1,u8 ch3)
{
	TIM5->CCR3H=(int)(ch1*5.5-10)/256;		
	TIM5->CCR3L=(int)(ch1*5.5-10)%256;
	TIM5->CCR1H=(int)(ch3*2+0)/256;		
	TIM5->CCR1L=(int)(ch3*2+0)%256;
}