/*
 * queque.h
 *
 * created: 2024/2/27
 *  author: 
 */

#ifndef _QUEUE_H
#define _QUEUE_H
#include "ls1x.h"
#include "test.h"
#ifdef __cplusplus
extern "C" {
#endif
#define DATA_LEN    300 //队列缓存大小

typedef struct
{
    uint16_t head;   //头指�?
    uint16_t tail;   //尾指�?
    uint8_t data[DATA_LEN];  //队列数据
} Circular_queue_t;

extern Circular_queue_t Circular_queue; //环形队列全局变量
extern Circular_queue_t Circular_queue_UART1;

bool Queue_Init(Circular_queue_t *circular_queue);  //初始化队�?
bool Queue_isEmpty(Circular_queue_t *circular_queue);  //判断队列是否为空
bool Queue_isFull(Circular_queue_t *circular_queue);   //判断队列是否已满
bool Queue_Wirte(Circular_queue_t *circular_queue, uint8_t *string, uint16_t len); //写数�?
bool Queue_Read(Circular_queue_t *circular_queue, uint8_t *string, uint16_t len);  //读数�?
uint16_t Queue_HadUse(Circular_queue_t *circular_queue);   //返回队列中数据的长度
uint16_t Queue_NoUse(Circular_queue_t *circular_queue);    //返回未使用数据的长度



#ifdef __cplusplus
}
#endif

#endif // _QUEQUE_H
