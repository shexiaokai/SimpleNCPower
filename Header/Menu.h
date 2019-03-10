/***********************  STM8S903  **********************
  * @文件名     ： ADC.h
  * @作者       ： 佘晓凯 
  * @库版本     ： 自写库 
  * @文件版本   ： V1.0.0
  * @日期       ： 2019年01月19日  
  * @摘要       ： 1.本程序为ADC采样头文件；
				   2.使用前请先开启ADC及定时器时钟；
				   3.本程序使用TIM6作为时基；
				   
  *********************************************************/
#ifndef MENU_H
#define MENU_H

#include "Main.h"

extern u8 set_v;
extern u8 set_i;
extern u8 limit_v;
extern u8 limit_i;

void Menu_Init(void);
void DispalyMenu(u8,u8);
void MenuDataProcess(void);
#endif