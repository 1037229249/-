#include "IM1281B.h"
#include "ls1x_uart.h"
#include "Config.h"
#include "ls1x_printf.h"
#include "oled.h"

//在stm32中使用串口3，在1c中我们使用串口1来代替

uint8_t USART1_RX_BUF[USART1_MAX_RECV_LEN];//存储串口的接受和发送数据缓冲区
uint8_t USART1_TX_BUF[USART1_MAX_SEND_LEN];

unsigned char Read_ID = 0x01;

unsigned char Tx_Buffer1[8];//存储待发送和已经接受的数据
unsigned char Rx_Buffer1[40];

unsigned char Rx_Buffer[40];


int i = 8;
int j = 0;

int reveive_numbe = 0;

extern uint8_t receive_index;



//这个是计算CRC函数           买模块自身资料带的函数
unsigned int calccrc(unsigned char crcbuf, unsigned int crc)
{
	unsigned char i;
	unsigned char chk;
	crc = crc ^ crcbuf; for (i = 0; i < 8; i++)
	{
		chk = (unsigned char)(crc & 1);
		crc = crc >> 1;
		crc = crc & 0x7fff;
		if (chk == 1) crc = crc ^ 0xa001;
		crc = crc & 0xffff;
	}
	return crc;
}
//这个是核对CRC校验函数       买模块自身资料带的函数   不用看
unsigned int chkcrc(unsigned char* buf, unsigned char len)
{
	unsigned char hi, lo;
	unsigned int i;
	unsigned int crc;
	crc = 0xFFFF;
	for (i = 0; i < len; i++)
	{
		crc = calccrc(*buf, crc);
		buf++;
	}

	hi = (unsigned char)(crc % 256);
	lo = (unsigned char)(crc / 256);
	crc = (((unsigned int)(hi)) << 8) | lo;
	return crc;
}

//读电能模块的函数       买模块自身资料带的函数    重点看for循环
void read_data(int read_enable)
{
	union	crcdata
	{
		unsigned int word16;
		unsigned char	byte[2];
	}crcnow;

	if (read_enable == 1)	// 到时间抄读模块，抄读间隔 1 秒钟(或其他)
	{
		read_enable = 0;
		Tx_Buffer1[0] = Read_ID;	//模块的 ID 号，默认 ID 为 0x01
		Tx_Buffer1[1] = 0x03;
		Tx_Buffer1[2] = 0x00;
		Tx_Buffer1[3] = 0x48;
		Tx_Buffer1[4] = 0x00;
		Tx_Buffer1[5] = 0x08;
		crcnow.word16 = chkcrc(Tx_Buffer1, 6);
		Tx_Buffer1[6] = crcnow.byte[1];	//CRC 效验低字节在前
		Tx_Buffer1[7] = crcnow.byte[0];
	}
	//循环发送数据01 03 00 48 00 08 C4 1A recv_data.
	for(j=0;j<i;j++)
	{
	    Uart1_send(Tx_Buffer1[j]);
    }
}

DataArray Analysis_data(void)
{

	DataArray tmp;
	unsigned char i;

	union	crcdata
	{
		unsigned int word16;
		unsigned char	byte[2];
	}crcnow;

		reveive_numbe = receive_index; 
		

		if ((Rx_Buffer1[0] == 0x01) || (Rx_Buffer1[0] == 0x00))	//确认 ID 正确
		{
			//printf("\r\n确认 ID 正确\r\n");//串口一来打印接受电压值
			crcnow.word16 = chkcrc(Rx_Buffer1, reveive_numbe - 2);	//reveive_numbe 是接收数据总长度
			if ((crcnow.byte[0] == Rx_Buffer1[reveive_numbe - 1]) && (crcnow.byte[1] == Rx_Buffer1[reveive_numbe - 2]))//确认 CRC 校验正确
			{
				tmp.Voltage_data = (((unsigned long)(Rx_Buffer1[3])) << 24) | (((unsigned long)(Rx_Buffer1[4])) << 16) | (((unsigned	long)(Rx_Buffer1[5])) << 8) | Rx_Buffer1[6];

				tmp.Current_data = (((unsigned long)(Rx_Buffer1[7])) << 24) | (((unsigned long)(Rx_Buffer1[8])) << 16) | (((unsigned	long)(Rx_Buffer1[9])) << 8) | Rx_Buffer1[10];

				tmp.Power_data = (((unsigned	long)(Rx_Buffer1[11])) << 24) | (((unsigned long)(Rx_Buffer1[12])) << 16) | (((unsigned	long)(Rx_Buffer1[13])) << 8) | Rx_Buffer1[14];
				

//				tmp.Energy_data = (((unsigned	long)(Rx_Buffer1[15])) << 24) | (((unsigned long)(Rx_Buffer1[16])) << 16) | (((unsigned	long)(Rx_Buffer1[17])) << 8) | Rx_Buffer1[18];
//				printf("电能:%lu\r\n", tmp.Energy_data);//串口一来打印电能

//				tmp.Pf_data = (((unsigned	long)(Rx_Buffer1[19])) << 24) | (((unsigned long)(Rx_Buffer1[20])) << 16) | (((unsigned	long)(Rx_Buffer1[21])) << 8) | Rx_Buffer1[22];
//				Pf_data1 = (float)(tmp.Pf_data * 0.001);
//				printf("功率因数:%.3lf\r\n", Pf_data1); //串口一来打印接受功率因数


//				tmp.CO2_data = (((unsigned long)(Rx_Buffer1[23])) << 24) | (((unsigned long)(Rx_Buffer1[24])) << 16) | (((unsigned	long)(Rx_Buffer1[25])) << 8) | Rx_Buffer1[26];
//				printf("二氧化碳:%lu\r\n", tmp.CO2_data);//串口一来打印接受二氧化碳




//				HZ = (((unsigned long)(Rx_Buffer1[31])) << 24) | (((unsigned long)(Rx_Buffer1[32])) << 16) | (((unsigned	long)(Rx_Buffer1[33])) << 8) | Rx_Buffer1[34];
//				HZ1 = HZ * 0.01;
//				printf("赫兹:%.2lfHZ\r\n", HZ1);//串口一来打印接受单相交流电的赫兹
				receive_index = 0;




//	      err = xQueueSend(SendMsg_Queue,&Rx_Buffer1,10);
//				if(err == errQUEUE_FULL)
//				{
//					printf("队列SendMsg_Queue已满，发送失败");
//				}

			}
			// else printf("// CRC 校验错误\r\n");//串口一来打印接受电压值
		//}
	}
	// else printf("\r\nreceive_finished标志位为0\r\n");
		return tmp;
}
	

void wifi_null(void) //清空内存
{
	for (i = 0; i < 40; i++)
		Rx_Buffer1[i] = 0;
}