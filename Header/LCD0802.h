/**
  *******************************  STM8  ***************************************
  * @文件名     ： LCD0802.h
  * @作者       ： 佘晓凯 
  * @库版本     ： 自写库 
  * @文件版本   ： V1.0.0
  * @日期       ： 2019年01月02日  
  * @摘要       ： 1.本程序为常见LCD0802驱动;
				   2.需要单片机同一端口驱动LCD数据口；
				   3.本程序为不测忙版；
				   4.使用前更改宏定义与引脚配置即可 
  ******************************************************************************/
/*----------------------------------------------------------------------------
  更新日志:
  2018-01-02 V1.0.0:初始版本 
  ----------------------------------------------------------------------------*/
#ifndef LCD0802_H
#define	LCD0802_H



#include "Main.h"



/***************GPIO配置*****************/
//8线数据端口
#define LCD_DI  	GPIOB->ODR 				//数据口
#define SET_LCD_RW  GPIOC->ODR|=  0x01<<1	//读写	
#define CLR_LCD_RW  GPIOC->ODR&=~(0x01<<1)	
#define SET_LCD_RS  GPIOC->ODR|=  0x01<<2	//命令/数据
#define CLR_LCD_RS  GPIOC->ODR&=~(0x01<<2)
#define SET_LCD_EN  GPIOE->ODR|=  0x01<<5	//使能
#define CLR_LCD_EN  GPIOE->ODR&=~(0x01<<5)

/*************延时函数配置****************/
#define LCD_DELAY_20us Delay20us()
#define LCD_DELAY_5ms  Delay5ms()
#define LCD_DELAY_15ms Delay15ms()





/*************非用户配置区****************/
#define WRITE		CLR_LCD_RW 		//写 
#define READ		SET_LCD_RW			//读 
#define	CMD			CLR_LCD_RS			//命令 
#define	DATA		SET_LCD_RS			//命令 

#define LCD_ENABLE  CLR_LCD_EN;	SET_LCD_EN;	LCD_DELAY_20us; \
		CLR_LCD_EN;		//使能 

void LcdInit(void);
void WrtCmd(u8 cmd);
void WrtData(u8 _data);
void WrtStr(u8 y,u8 x,char *str);

#endif 