/***********************  STM8S903  **********************
  * @�ļ���     �� ADC.h
  * @����       �� ������ 
  * @��汾     �� ��д�� 
  * @�ļ��汾   �� V1.0.0
  * @����       �� 2019��01��19��  
  * @ժҪ       �� 1.������ΪADC����ͷ�ļ���
				   2.ʹ��ǰ���ȿ���ADC����ʱ��ʱ�ӣ�
				   3.������ʹ��TIM6��Ϊʱ����
				   
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