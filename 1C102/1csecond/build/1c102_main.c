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



uint8_t Read_Buffer[DATA_LEN];//���ý��ջ�������
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
    OLED_Init();// ��ʼ�� OLED ģ��
    OLED_Clear();// OLED ����

    wifi_null();//�������������

    LORA_Init(); 
    SR501_Init();

    read_data(read_enable);
    	
    while(1)
    {
        
        myData=Analysis_data();
		read_data(read_enable);
        sensor=SR501_GetValue();

        sprintf(lora_tx_data,"%d%d%d%d",sensor,myData.Voltage_data,myData.Current_data,myData.Power_data);//sensor,��ѹ����

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

        if(Queue_isEmpty(&Circular_queue)==0)//�ж϶����Ƿ�Ϊ�գ����ж��Ƿ��յ�����
        {
            Read_length=Queue_HadUse(&Circular_queue);//���ض��������ݵĳ���
            memset(Read_Buffer, 0, DATA_LEN);//�����ջ�����Ϊ0
            Queue_Read(&Circular_queue, Read_Buffer,Read_length);//��ȡ���л�������ֵ�����ջ�����
            Read_Buffer[Read_length]='\0';//�ַ������ս�����

            if(strncmp(Read_Buffer,"ON",2)==0)
            {
                lora_transmit(lora_tx_data);
                 //�ӻ�OLED��ʾ����
            }
            if(strncmp(Read_Buffer,"OFF",3)==0)
            {
                OLED_ShowString(0,0,"stop");
            }
        }

         if(myData.Current_data>300)//��ѹ��������ֵ(���)
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
        
        delay_ms(1000);//��������ʱ����ڷ������ݣ�����ѭ��ִ������
    }

    return 0;
}
