   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.8 - 03 Dec 2008
  33                     ; 53 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  33                     ; 54 {
  34                     	switch	.text
  35  0000               f_NonHandledInterrupt:
  39                     ; 58 }
  42  0000 80            	iret
  64                     ; 66 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  64                     ; 67 {
  65                     	switch	.text
  66  0001               f_TRAP_IRQHandler:
  70                     ; 71 }
  73  0001 80            	iret
  95                     ; 78 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
  95                     ; 79 
  95                     ; 80 {
  96                     	switch	.text
  97  0002               f_TLI_IRQHandler:
 101                     ; 84 }
 104  0002 80            	iret
 126                     ; 91 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 126                     ; 92 {
 127                     	switch	.text
 128  0003               f_AWU_IRQHandler:
 132                     ; 96 }
 135  0003 80            	iret
 157                     ; 103 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 157                     ; 104 {
 158                     	switch	.text
 159  0004               f_CLK_IRQHandler:
 163                     ; 108 }
 166  0004 80            	iret
 189                     ; 115 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 189                     ; 116 {
 190                     	switch	.text
 191  0005               f_EXTI_PORTA_IRQHandler:
 195                     ; 120 }
 198  0005 80            	iret
 221                     ; 127 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 221                     ; 128 {
 222                     	switch	.text
 223  0006               f_EXTI_PORTB_IRQHandler:
 227                     ; 132 }
 230  0006 80            	iret
 253                     ; 139 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 253                     ; 140 {
 254                     	switch	.text
 255  0007               f_EXTI_PORTC_IRQHandler:
 259                     ; 144 }
 262  0007 80            	iret
 285                     ; 151 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 285                     ; 152 {
 286                     	switch	.text
 287  0008               f_EXTI_PORTD_IRQHandler:
 291                     ; 156 }
 294  0008 80            	iret
 317                     ; 163 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 317                     ; 164 {
 318                     	switch	.text
 319  0009               f_EXTI_PORTE_IRQHandler:
 323                     ; 168 }
 326  0009 80            	iret
 349                     ; 176  INTERRUPT_HANDLER(EXTI_PORTF_IRQHandler, 8)
 349                     ; 177  {
 350                     	switch	.text
 351  000a               f_EXTI_PORTF_IRQHandler:
 355                     ; 181  }
 358  000a 80            	iret
 380                     ; 215 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 380                     ; 216 {
 381                     	switch	.text
 382  000b               f_SPI_IRQHandler:
 386                     ; 220 }
 389  000b 80            	iret
 412                     ; 227 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 412                     ; 228 {
 413                     	switch	.text
 414  000c               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 418                     ; 232 }
 421  000c 80            	iret
 444                     ; 239 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 444                     ; 240 {
 445                     	switch	.text
 446  000d               f_TIM1_CAP_COM_IRQHandler:
 450                     ; 244 }
 453  000d 80            	iret
 476                     ; 252  INTERRUPT_HANDLER(TIM5_UPD_OVF_BRK_TRG_IRQHandler, 13)
 476                     ; 253  {
 477                     	switch	.text
 478  000e               f_TIM5_UPD_OVF_BRK_TRG_IRQHandler:
 482                     ; 257  }
 485  000e 80            	iret
 508                     ; 264  INTERRUPT_HANDLER(TIM5_CAP_COM_IRQHandler, 14)
 508                     ; 265  {
 509                     	switch	.text
 510  000f               f_TIM5_CAP_COM_IRQHandler:
 514                     ; 269  }
 517  000f 80            	iret
 540                     ; 331  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 540                     ; 332  {
 541                     	switch	.text
 542  0010               f_UART1_TX_IRQHandler:
 546                     ; 336  }
 549  0010 80            	iret
 572                     ; 343  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 572                     ; 344  {
 573                     	switch	.text
 574  0011               f_UART1_RX_IRQHandler:
 578                     ; 348  }
 581  0011 80            	iret
 603                     ; 382 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 603                     ; 383 {
 604                     	switch	.text
 605  0012               f_I2C_IRQHandler:
 609                     ; 387 }
 612  0012 80            	iret
 634                     ; 461  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 634                     ; 462  {
 635                     	switch	.text
 636  0013               f_ADC1_IRQHandler:
 640                     ; 466  }
 643  0013 80            	iret
 666                     ; 475 INTERRUPT_HANDLER(TIM6_UPD_OVF_TRG_IRQHandler, 23)
 666                     ; 476  {
 667                     	switch	.text
 668  0014               f_TIM6_UPD_OVF_TRG_IRQHandler:
 672                     ; 480  }
 675  0014 80            	iret
 698                     ; 500 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 698                     ; 501 {
 699                     	switch	.text
 700  0015               f_EEPROM_EEC_IRQHandler:
 704                     ; 505 }
 707  0015 80            	iret
 719                     	xdef	f_EEPROM_EEC_IRQHandler
 720                     	xdef	f_TIM6_UPD_OVF_TRG_IRQHandler
 721                     	xdef	f_ADC1_IRQHandler
 722                     	xdef	f_I2C_IRQHandler
 723                     	xdef	f_UART1_RX_IRQHandler
 724                     	xdef	f_UART1_TX_IRQHandler
 725                     	xdef	f_TIM5_CAP_COM_IRQHandler
 726                     	xdef	f_TIM5_UPD_OVF_BRK_TRG_IRQHandler
 727                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 728                     	xdef	f_TIM1_CAP_COM_IRQHandler
 729                     	xdef	f_SPI_IRQHandler
 730                     	xdef	f_EXTI_PORTF_IRQHandler
 731                     	xdef	f_EXTI_PORTE_IRQHandler
 732                     	xdef	f_EXTI_PORTD_IRQHandler
 733                     	xdef	f_EXTI_PORTC_IRQHandler
 734                     	xdef	f_EXTI_PORTB_IRQHandler
 735                     	xdef	f_EXTI_PORTA_IRQHandler
 736                     	xdef	f_CLK_IRQHandler
 737                     	xdef	f_AWU_IRQHandler
 738                     	xdef	f_TLI_IRQHandler
 739                     	xdef	f_TRAP_IRQHandler
 740                     	xdef	f_NonHandledInterrupt
 759                     	end
