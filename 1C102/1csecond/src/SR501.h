#ifndef _SR501_H
#define _SR501_H

#ifdef __cplusplus
extern "C" {
#endif

#include "ls1x.h"


void SR501_Init(void);
uint8_t SR501_GetValue(void);

#ifdef __cplusplus
}
#endif

#endif // _SR501_H
