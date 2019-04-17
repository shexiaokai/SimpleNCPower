/* MAIN.C file
 * 
 * Copyright (c) 2002-2005 STMicroelectronics
 */
 /**********************  STM8S903  **********************
  * @文件名     ： 	Main.c
  * @作者       ： 	佘晓凯 
  * @库版本     ： 	自写库 
  * @文件版本   ： 	V1.0.0
  * @日期       ： 	2019年02月28日  
  * @摘要       ： 	Main函数中进行按键的扫描以及菜单显示
  ********************************************************/
  
/* 包含的头文件 -----------------------------------------*/
#include "Main.h"

/* 全局变量 ---------------------------------------------*/

//设定值(1)  极限值(0)
u8 set_mode=1;
//输出标志位
u8 output_flag=0;
//设置模式标志位
u8 set_flag=0;
//光标位置
u8 curcor_place=1;

main()
{
	void Init(void);
	
	u8 i = 0;
	char str[10] ={0};
	
	Delay100ms();
	rim();		//开中断
	Init();		//初始化
	Delay100ms();
	
	DispalyMenu(1,0);
	GPIOA->ODR &= ~0x02;	//blue led on
	GPIOD->ODR &= ~(0x01<<7);
	
	while (1)
	{
		if(!output_flag)
		{
			if(set_mode)		//设定值设置模式
			{
				if(set_flag)
				{
					if(touch_d[1])			//按下完成设置按键
					{
						set_flag=0;			//退出设置模式
						DispalyMenu(1,0);	//显示界面1 不显示光标
						curcor_place=1;
						while(touch_d[1]);	//按键去抖
						Delay15ms();
					}
					if(touch_d[0])			//切换按键
					{
						curcor_place++;		//改变光标位置
						if(curcor_place>5)		
							curcor_place=1;	
							
						DispalyMenu(1,curcor_place);//界面1 显示光标
						while(touch_d[0]);
						Delay15ms();
					}
					
					if(touch_d[3])			//更改按键
					{
						switch(curcor_place)	//改变数值
						{
							case 1:set_v++;break;	
							case 2:set_v+=10;break;
							case 3:set_v+=100;break;
							case 4:set_i+=10;break;
							case 5:set_i+=100;break;
						}
						if(set_v>150)
							set_v=30;
						else
						{
							if(set_v<50)
								if(set_i>50)
									set_i=10;
							if(set_i>150)
									set_i=10;
						}	
						DispalyMenu(1,curcor_place);
						while(touch_d[3]);
						Delay15ms();
					}
				}
				else
				{
					if(touch_d[1])	
					{
						set_mode=0;
						DispalyMenu(2,0);
						GPIOA->ODR |= 0x02;	//blue led off
						while(touch_d[1]);
						Delay15ms();
					}
					if(touch_d[3])		
					{
						set_flag=1;
						DispalyMenu(1,1);
						while(touch_d[3]);
						Delay15ms();
					}
				}
				
			}
			else				//极限值设定模式
			{
				if(set_flag)	//设置模式
				{
					if(touch_d[1])			//完成设置
					{
						set_flag=0;
						DispalyMenu(2,0);
						curcor_place=1;
						while(touch_d[1]);
						Delay15ms();
					}
					if(touch_d[0])		
					{
						curcor_place++;		//改变光标位置
						if(curcor_place>5)		
							curcor_place=1;
							
						DispalyMenu(2,curcor_place);
						while(touch_d[0]);
						Delay15ms();
					}
					
					if(touch_d[3])		
					{
						switch(curcor_place)
						{
							case 1:limit_v++;break;
							case 2:limit_v+=10;break;
							case 3:limit_v+=100;break;
							case 4:limit_i+=10;break;
							case 5:limit_i+=100;break;
						}
						if(limit_v>150)
							limit_v=30;
						if(limit_i>150)
							limit_i=10;
						DispalyMenu(2,curcor_place);
						while(touch_d[3]);
						Delay15ms();
					}
				}
				else			//非设置模式
				{
					if(touch_d[1])				//
					{
						set_mode=1;
						DispalyMenu(1,0);
						GPIOA->ODR &= ~0x02;	//blue led on
						while(touch_d[1]);
						Delay15ms();
					}
					if(touch_d[3])		
					{
						set_flag=1;
						DispalyMenu(2,1);
						while(touch_d[3]);
						Delay15ms();
					}
					
				}
			}
		}
		if(output_flag==0&&set_flag==0)
			if(touch_d[2])		
			{
				output_flag=1;
				
				GPIOD->ODR &= ~(0x01<<7);		//切换恒压模式
				//GPIOD->ODR |= (0x01<<7);		
				SetPWM(set_v,set_i);			//设置PWM
				GPIOD->ODR |= 0x01;		//打开输出口
				GPIOA->ODR |= 0x02;		//blue led off
				DispalyMenu(3,0);
				while(touch_d[2]);
				Delay15ms();
			}
		if(output_flag)
		{
			i++;
			if(i>99)
			{
				i=0;
				DispalyMenu(3,0);
			}
			if(touch_d[2])		
			{
				output_flag=0;
											//切换恒压模式
											//设置PWM
				GPIOD->ODR &= ~0x01;		//关输出口
				
				set_mode=1;				//设定模式
				DispalyMenu(1,0);		
				GPIOA->ODR &= ~0x02;	//blue led on
				
				
				while(touch_d[2]);
				Delay15ms();
			}
		}
		
		
		if(adc_finsh_flag)
		{
			adc_finsh_flag=0;
			ADCDataProcess();		//滤波
			MenuDataProcess();		//换算
			ADC1->CR1 |= ADC1_CR1_ADON;	
			TIM6->CR1 |= TIM6_CR1_CEN;			//Counter enable
		}
		
		
		Delay5ms();

	}
	while(1);
}

/************************************************
Fun name ： Init
Role	 ： Initial 
Abstract :	
*************************************************/
void Init(void)
{
	void ClockInit(void);
	void LED_Init(void);
	
	//CLK->PCKENR1|=CLK_PCKENR1_TIM1;//Enable Tim1 Clock
	ClockInit();
	LED_Init();
	LcdInit();
	Touch_Init();
	//PWM_Init();
	ADC_Init();
	Menu_Init();
	PWM_Init();
}


/************************************************
Fun name ： LED_Init
Role	 ： Initial LED Pin
Abstract :	Push-pull Output mode
			PA1 PA2 PD7
*************************************************/
void LED_Init(void)
{
	GPIOA->ODR|= 0x02;
	GPIOA->DDR|= 0x01<<1;
	GPIOA->CR1|= 0x01<<1;

	GPIOD->DDR |= 0x01;		//Output mode
	GPIOD->CR1 |= 0x01;		//Push-pull mode
//	GPIOD->ODR |= 0x01;
	
//	GPIOD->ODR |= (0x01<<7);
	GPIOD->DDR |= (0x01<<7);		//Output mode
	GPIOD->CR1 |= (0x01<<7);		//Push-pull mode
}


/**********
ClockInit

Abstract:	Master clock 16M
			CPU clock 16M
************/
void ClockInit(void)
{
	CLK->CKDIVR = 0x00;		//HSI clock source/1 
	Delay15ms();			//Wait clock stabilization
	CLK->PCKENR1 = 0x00;	
	CLK->PCKENR2 = 0x00;	
	CLK->PCKENR1 |= CLK_PCKENR1_TIM1;	//Enable Tim1 Clock
	CLK->PCKENR1 |= CLK_PCKENR1_TIM5;	//Enable Tim5 Clock
	CLK->PCKENR1 |= CLK_PCKENR1_TIM6;	//Enable Tim6 Clock
	CLK->PCKENR2 |= CLK_PCKENR2_ADC;	//Enable ADC Clock
	
}



#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval : None
  */
void assert_failed(u8* file, u32 line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

