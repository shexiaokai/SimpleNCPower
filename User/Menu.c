/**
  *********************************  STM8S903  *********************************
  * @文件名     ： 	Menu.c
  * @作者       ： 	佘晓凯 
  * @库版本     ： 	自写库 
  * @文件版本   ： 	V1.0.0
  * @日期       ： 	2019年02月28日  
  * @摘要       ： 	每隔2ms在TIM6中进行adc采样;
					ADC采集值为电源的输入电压、
					输出电压及输出电流；
  ******************************************************************************/
/* 包含的头文件 --------------------------------------------------------------*/
#include "Menu.h"


/* 全局变量 ------------------------------------------------------------------*/
u8 set_v=50;
u8 set_i=50;
u8 limit_v=150;
u8 limit_i=150;

static u16 *ui_adc=NULL;
static u16 *uo_adc=NULL;
static u16 *io_adc=NULL;

static u8 ui=0;
static u8 uo=0;
static u8 io=0;

/************************************************
Fun name ： Menu_Init
Role	 ： Initial Menu 
Abstract :	
*************************************************/
void Menu_Init(void)
{
	ui_adc=ADC_Data;
	uo_adc=ADC_Data+2;
	io_adc=ADC_Data+1;
}

void MenuDataProcess(void)
{
	ui=(*ui_adc)*0.296+0.5;
	uo=(*uo_adc)*0.182+0.5;
	io=(*io_adc)*0.144+0.5;
}
	


void DispalyMenu(u8 x,u8 y)
{
	char str[10] ={0};
	WrtCmd(0x0C);			//blinking and cursor off
	LCD_DELAY_5ms;
	switch(x)
	{
		case 1:
			sprintf(str,"U:%02d.%1dV ",set_v/10,set_v%10);
			WrtStr(1,0,str);
			Delay5ms();
			sprintf(str,"I:%2d.%1dA ",set_i/100,set_i/10%10);
			WrtStr(2,0,str);
			Delay5ms();
		break;
		
		case 2:
			sprintf(str,"U:%02d.%1dV ",limit_v/10,limit_v%10);
			WrtStr(1,0,str);
			Delay5ms();
			sprintf(str,"I:%2d.%1dA ",limit_i/100,limit_i/10%10);
			WrtStr(2,0,str);
			Delay5ms();
		break;
		
		case 3:
			sprintf(str,"U:%02d.%1dV ",uo/10,uo%10);
			WrtStr(1,0,str);
			Delay5ms();
			sprintf(str,"I:%d.%02dA ",io/100,io%100);
			WrtStr(2,0,str);
			Delay5ms();
		break;
		case 4:break;
	}
	switch(y)
	{
		case 3:
			WrtCmd(0x80+2);
			Delay5ms();
			WrtCmd(0x0E);
			Delay5ms();
		break;
		
		case 2:
			WrtCmd(0x80+3);
			Delay5ms();
			WrtCmd(0x0E);
			Delay5ms();
		break;
		
		case 1:
			WrtCmd(0x80+5);
			Delay5ms();
			WrtCmd(0x0E);
			Delay5ms();
		break;
			
		case 5:
			WrtCmd(0xC0+3);
			Delay5ms();
			WrtCmd(0x0E);
			Delay5ms();
		break;
		
		case 4:
			WrtCmd(0xC0+5);
			Delay5ms();
			WrtCmd(0x0E);
			Delay5ms();
		break;
	}
}






