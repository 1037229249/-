/*
HC-SR501 人体感应模块
两种触发方式：（可跳线选择）
a、 不可重复触发方式:即感应输出高电平后， 延时时间段一结束， 输出将自动从高电
平变成低电平；
b、 可重复触发方式：即感应输出高电平后，在延时时间段内，如果有人体在其感应
范围活动，其输出将一直保持高电平，直到人离开后才延时将高电平变为低电平（感应模块检
测到人体的每一次活动后会自动顺延一个延时时间段， 并且以最后一次活动的时间为延时
时间的起始点)

*/

#include "SR501.h"
#include "ls1x_gpio.h"

#define SR 13

void SR501_Init(void)
{
    gpio_set_direction(SR,0);
}

uint8_t SR501_GetValue(void)
{
    uint8_t srsensor = gpio_get_pin(SR);
    return srsensor;
}
