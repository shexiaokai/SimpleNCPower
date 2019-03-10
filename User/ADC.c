/**
  *********************************  STM8S903  *********************************
  * @文件名     ： 	ADC.c
  * @作者       ： 	佘晓凯 
  * @库版本     ： 	自写库 
  * @文件版本   ： 	V1.0.0
  * @日期       ： 	2019年02月28日  
  * @摘要       ： 	每隔2ms在TIM6中进行adc采样;
					ADC采集值为电源的输入电压、
					输出电压及输出电流；
  ******************************************************************************/
/* 包含的头文件 --------------------------------------------------------------*/
#include "ADC.h"


/* 全局变量 ------------------------------------------------------------------*/
u16 ADC_Data[3]={0};
u16 ADC_Buffer[3][10]={0};
u8 adc_finsh_flag=0;
/************************************************
Fun name ： ADC_Init
Role	 ： Initial ADC 
Abstract :	
*************************************************/
void ADC_Init(void)
{
	void Tim6_Init(void);
	
	ADC1->CR1 |= 0x20;		//fADC = fMASTER /4
	ADC1->CSR |= 0x04;		//Select channel 4  
	ADC1->CR2 |= ADC1_CR2_ALIGN;
	
	ADC1->CR1 |= ADC1_CR1_ADON;		
	//ADC wakeup from Power-down mode
	
	Tim6_Init();
}	


/************************************************
Fun name ： TIM6_Init
Role	 ： Initial Tim6 
Abstract :	
*************************************************/
void Tim6_Init(void)
{
	TIM6->CR1 |= TIM6_CR1_OPM;	//One-pulse mode
	TIM6->CR1 |= TIM6_CR1_URS;	//Update request source enable
	TIM6->IER |= TIM6_IER_UIE;	//Update interrup enable
	
	//The counter clock frequency fCK_CNT is equal to 128.
	TIM6->PSCR = 0x07;			
	TIM6->ARR = 249;			//Auto-reload is 125
	TIM6->CR1 |= TIM6_CR1_CEN;	//Counter enable
}

void ADCDataProcess(void)
{
	u8 i,j;
	u16 temp;
	//冒泡排序
	//限幅均值滤波
	for(i=0;i<9;i++)
		for(j=0;j<9-i;j++)
			if(ADC_Buffer[0][j]>ADC_Buffer[0][j+1])
			{
				temp=ADC_Buffer[0][j];
				ADC_Buffer[0][j]=ADC_Buffer[0][j+1];
				ADC_Buffer[0][j+1]=temp;
			}
	
	for(i=0;i<9;i++)
		for(j=0;j<9-i;j++)
			if(ADC_Buffer[1][j]>ADC_Buffer[1][j+1])
			{
				temp=ADC_Buffer[1][j];
				ADC_Buffer[1][j]=ADC_Buffer[1][j+1];
				ADC_Buffer[1][j+1]=temp;
			}
			
	for(i=0;i<9;i++)
		for(j=0;j<9-i;j++)
			if(ADC_Buffer[2][j]>ADC_Buffer[2][j+1])
			{
				temp=ADC_Buffer[2][j];
				ADC_Buffer[2][j]=ADC_Buffer[2][j+1];
				ADC_Buffer[2][j+1]=temp;
			}
	
	temp=0;
	for(i=2;i<8;i++)
		temp+=ADC_Buffer[0][i];
	ADC_Data[0]=temp/6;
	
	temp=0;
	for(i=2;i<8;i++)
		temp+=ADC_Buffer[1][i];
	ADC_Data[1]=temp/6;
	
	temp=0;
	for(i=2;i<8;i++)
		temp+=ADC_Buffer[2][i];
	ADC_Data[2]=temp/6;
}

@far @interrupt void TIM6_UPD_OVF_TRG_IRQHandler(void)
{
	static u8 x=0,y=0;
	
	TIM6->SR1 &= ~TIM6_SR1_UIF;			//Claer flag

	//GPIOD->ODR ^= 0x01;
	ADC_Buffer[x][y]=(ADC1->DRH<<8)+ADC1->DRL;
	
	y++;
	
	if(y>9)
	{
		y=0;
		x++;
		ADC1->CSR &= ~ADC1_CSR_CH;
		ADC1->CSR |= 0x04+x;			//改通道
	}
	if(x>2)
	{
		x=0;
		ADC1->CSR &= ~ADC1_CSR_CH;
		ADC1->CSR |= 0x04+x;
		adc_finsh_flag=1;
	}
	else
	{
		ADC1->CR1 |= ADC1_CR1_ADON;	
		TIM6->CR1 |= TIM6_CR1_CEN;			//Counter enable
	}
}



