#include "ls1x.h"
#include "Config.h"
#include "ls1x_spi.h"
#include "ls1x_gpio.h"
#include "ls1c102_adc.h"
#include "ls1x_latimer.h"
#include "ls1c102_interrupt.h"
#include "ls1x_printf.h"
#include "ls1x_string.h"
#include "ls1c102_ptimer.h"
#include "queue.h"

#include "oled.h"
#include "IM1281B.h"
#include "lora.h"
#include "SR501.h"



uint8_t Read_Buffer[DATA_LEN];//设置接收缓冲数组
uint8_t Read_length;
char lora_tx_data[100];
int sensor;
int read_enable = 1;
DataArray myData;
int flagclear=0;
int va;

int main(int arg, char *args[])
{   
    Spi_Init(SPI_DIV_2);
    OLED_Init();// 初始化 OLED 模块
    OLED_Clear();// OLED 清屏

    wifi_null();//清楚缓存区数组

    LORA_Init(); 
    SR501_Init();

    read_data(read_enable);
    	
    while(1)
    {
        
        myData=Analysis_data();
		read_data(read_enable);
        sensor=SR501_GetValue();

        sprintf(lora_tx_data,"%d%d%d%d",sensor,myData.Voltage_data,myData.Current_data,myData.Power_data);//sensor,电压电流

        OLED_ShowString(0,16,"Volt:");
        OLED_ShowNum(40,16,myData.Voltage_data,4,16);
        OLED_ShowString(72,16,"V");
        OLED_ShowString(0,32,"Current:");
        OLED_ShowString(96,32,"mA");
        OLED_ShowNum(64,32,myData.Current_data,4,16);
        OLED_ShowString(0,48,"Power:");
        OLED_ShowNum(48,48,myData.Power_data,4,16);
        OLED_ShowString(80,48,"W");

        OLED_ShowString(80,0,"PEO:");
        OLED_ShowNum(112,0,0,1,16);

        if(Queue_isEmpty(&Circular_queue)==0)//判断队列是否为空，即判断是否收到数据
        {
            Read_length=Queue_HadUse(&Circular_queue);//返回队列中数据的长度
            memset(Read_Buffer, 0, DATA_LEN);//填充接收缓冲区为0
            Queue_Read(&Circular_queue, Read_Buffer,Read_length);//读取队列缓冲区的值到接收缓冲区
            Read_Buffer[Read_length]='\0';//字符串接收结束符

            if(strncmp(Read_Buffer,"ON",2)==0)
            {
                lora_transmit(lora_tx_data);
                 //从机OLED显示数据
            }
            if(strncmp(Read_Buffer,"OFF",3)==0)
            {
                OLED_ShowString(0,0,"stop");
            }
        }

         if(myData.Current_data>300)//电压电流的阈值(添加)
        {
            OLED_ShowString(0,0,"DANGEROUS");
            flagclear=1;
        }
        else if(sensor==1) 
        {
            OLED_ShowNum(112,0,1,1,16);
        }
        else
        {
            if(flagclear == 1)
            {
                OLED_Clear();
                flagclear=0;
            }
            OLED_ShowString(0,0,"SAFETY");
        }
        
        delay_ms(1000);//处理数据时间大于发送数据，限制循环执行速率
    }

    return 0;
}
