#include "IM1281B.h"
#include "ls1x_uart.h"
#include "Config.h"
#include "ls1x_printf.h"
#include "oled.h"

//��stm32��ʹ�ô���3����1c������ʹ�ô���1������

uint8_t USART1_RX_BUF[USART1_MAX_RECV_LEN];//�洢���ڵĽ��ܺͷ������ݻ�����
uint8_t USART1_TX_BUF[USART1_MAX_SEND_LEN];

unsigned char Read_ID = 0x01;

unsigned char Tx_Buffer1[8];//�洢�����ͺ��Ѿ����ܵ�����
unsigned char Rx_Buffer1[40];

unsigned char Rx_Buffer[40];


int i = 8;
int j = 0;

int reveive_numbe = 0;

extern uint8_t receive_index;



//����Ǽ���CRC����           ��ģ���������ϴ��ĺ���
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
//����Ǻ˶�CRCУ�麯��       ��ģ���������ϴ��ĺ���   ���ÿ�
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

//������ģ��ĺ���       ��ģ���������ϴ��ĺ���    �ص㿴forѭ��
void read_data(int read_enable)
{
	union	crcdata
	{
		unsigned int word16;
		unsigned char	byte[2];
	}crcnow;

	if (read_enable == 1)	// ��ʱ�䳭��ģ�飬������� 1 ����(������)
	{
		read_enable = 0;
		Tx_Buffer1[0] = Read_ID;	//ģ��� ID �ţ�Ĭ�� ID Ϊ 0x01
		Tx_Buffer1[1] = 0x03;
		Tx_Buffer1[2] = 0x00;
		Tx_Buffer1[3] = 0x48;
		Tx_Buffer1[4] = 0x00;
		Tx_Buffer1[5] = 0x08;
		crcnow.word16 = chkcrc(Tx_Buffer1, 6);
		Tx_Buffer1[6] = crcnow.byte[1];	//CRC Ч����ֽ���ǰ
		Tx_Buffer1[7] = crcnow.byte[0];
	}
	//ѭ����������01 03 00 48 00 08 C4 1A recv_data.
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
		

		if ((Rx_Buffer1[0] == 0x01) || (Rx_Buffer1[0] == 0x00))	//ȷ�� ID ��ȷ
		{
			//printf("\r\nȷ�� ID ��ȷ\r\n");//����һ����ӡ���ܵ�ѹֵ
			crcnow.word16 = chkcrc(Rx_Buffer1, reveive_numbe - 2);	//reveive_numbe �ǽ��������ܳ���
			if ((crcnow.byte[0] == Rx_Buffer1[reveive_numbe - 1]) && (crcnow.byte[1] == Rx_Buffer1[reveive_numbe - 2]))//ȷ�� CRC У����ȷ
			{
				tmp.Voltage_data = (((unsigned long)(Rx_Buffer1[3])) << 24) | (((unsigned long)(Rx_Buffer1[4])) << 16) | (((unsigned	long)(Rx_Buffer1[5])) << 8) | Rx_Buffer1[6];

				tmp.Current_data = (((unsigned long)(Rx_Buffer1[7])) << 24) | (((unsigned long)(Rx_Buffer1[8])) << 16) | (((unsigned	long)(Rx_Buffer1[9])) << 8) | Rx_Buffer1[10];

				tmp.Power_data = (((unsigned	long)(Rx_Buffer1[11])) << 24) | (((unsigned long)(Rx_Buffer1[12])) << 16) | (((unsigned	long)(Rx_Buffer1[13])) << 8) | Rx_Buffer1[14];
				

//				tmp.Energy_data = (((unsigned	long)(Rx_Buffer1[15])) << 24) | (((unsigned long)(Rx_Buffer1[16])) << 16) | (((unsigned	long)(Rx_Buffer1[17])) << 8) | Rx_Buffer1[18];
//				printf("����:%lu\r\n", tmp.Energy_data);//����һ����ӡ����

//				tmp.Pf_data = (((unsigned	long)(Rx_Buffer1[19])) << 24) | (((unsigned long)(Rx_Buffer1[20])) << 16) | (((unsigned	long)(Rx_Buffer1[21])) << 8) | Rx_Buffer1[22];
//				Pf_data1 = (float)(tmp.Pf_data * 0.001);
//				printf("��������:%.3lf\r\n", Pf_data1); //����һ����ӡ���ܹ�������


//				tmp.CO2_data = (((unsigned long)(Rx_Buffer1[23])) << 24) | (((unsigned long)(Rx_Buffer1[24])) << 16) | (((unsigned	long)(Rx_Buffer1[25])) << 8) | Rx_Buffer1[26];
//				printf("������̼:%lu\r\n", tmp.CO2_data);//����һ����ӡ���ܶ�����̼




//				HZ = (((unsigned long)(Rx_Buffer1[31])) << 24) | (((unsigned long)(Rx_Buffer1[32])) << 16) | (((unsigned	long)(Rx_Buffer1[33])) << 8) | Rx_Buffer1[34];
//				HZ1 = HZ * 0.01;
//				printf("����:%.2lfHZ\r\n", HZ1);//����һ����ӡ���ܵ��ཻ����ĺ���
				receive_index = 0;




//	      err = xQueueSend(SendMsg_Queue,&Rx_Buffer1,10);
//				if(err == errQUEUE_FULL)
//				{
//					printf("����SendMsg_Queue����������ʧ��");
//				}

			}
			// else printf("// CRC У�����\r\n");//����һ����ӡ���ܵ�ѹֵ
		//}
	}
	// else printf("\r\nreceive_finished��־λΪ0\r\n");
		return tmp;
}
	

void wifi_null(void) //����ڴ�
{
	for (i = 0; i < 40; i++)
		Rx_Buffer1[i] = 0;
}