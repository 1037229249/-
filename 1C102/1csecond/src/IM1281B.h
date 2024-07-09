#ifndef _IM1281B_H
#define _IM1281B_H

#ifdef __cplusplus
extern "C" {
#endif

#define USART1_MAX_RECV_LEN 200
#define USART1_MAX_SEND_LEN 200

typedef struct data{

	 unsigned long Voltage_data;
	 unsigned long Current_data;
	 unsigned long Power_data;
	 unsigned long Energy_data;
	 unsigned long Pf_data;
	 unsigned long CO2_data;
}DataArray;

unsigned int calccrc(unsigned char crcbuf,unsigned int crc);
unsigned int chkcrc(unsigned char* buf,unsigned char len);

void read_data(int read_enbale);

DataArray Analysis_data(void);

void wifi_null(void);

#ifdef __cplusplus
}
#endif

#endif // _IM1281B_H
