/**
  *******************************  STM8  ***************************************
  * @�ļ���     �� LCD0802.h
  * @����       �� ������ 
  * @��汾     �� ��д�� 
  * @�ļ��汾   �� V1.0.0
  * @����       �� 2019��01��02��  
  * @ժҪ       �� 1.������Ϊ����LCD0802����;
				   2.��Ҫ��Ƭ��ͬһ�˿�����LCD���ݿڣ�
				   3.������Ϊ����æ�棻
				   4.ʹ��ǰ���ĺ궨�����������ü��� 
  ******************************************************************************/
/*----------------------------------------------------------------------------
  ������־:
  2018-01-02 V1.0.0:��ʼ�汾 
  ----------------------------------------------------------------------------*/
#ifndef LCD0802_H
#define	LCD0802_H



#include "Main.h"



/***************GPIO����*****************/
//8�����ݶ˿�
#define LCD_DI  	GPIOB->ODR 				//���ݿ�
#define SET_LCD_RW  GPIOC->ODR|=  0x01<<1	//��д	
#define CLR_LCD_RW  GPIOC->ODR&=~(0x01<<1)	
#define SET_LCD_RS  GPIOC->ODR|=  0x01<<2	//����/����
#define CLR_LCD_RS  GPIOC->ODR&=~(0x01<<2)
#define SET_LCD_EN  GPIOE->ODR|=  0x01<<5	//ʹ��
#define CLR_LCD_EN  GPIOE->ODR&=~(0x01<<5)

/*************��ʱ��������****************/
#define LCD_DELAY_20us Delay20us()
#define LCD_DELAY_5ms  Delay5ms()
#define LCD_DELAY_15ms Delay15ms()





/*************���û�������****************/
#define WRITE		CLR_LCD_RW 		//д 
#define READ		SET_LCD_RW			//�� 
#define	CMD			CLR_LCD_RS			//���� 
#define	DATA		SET_LCD_RS			//���� 

#define LCD_ENABLE  CLR_LCD_EN;	SET_LCD_EN;	LCD_DELAY_20us; \
		CLR_LCD_EN;		//ʹ�� 

void LcdInit(void);
void WrtCmd(u8 cmd);
void WrtData(u8 _data);
void WrtStr(u8 y,u8 x,char *str);

#endif 