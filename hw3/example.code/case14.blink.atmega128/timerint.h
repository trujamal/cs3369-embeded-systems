#ifndef TIMERINT_H
#define	TIMERINT_H

#define F_CPU 4000000UL  // 4 MHz
#include <util/delay.h>
#include <stdbool.h>

#define TimerInt

extern bool timerFired;
#define period 500 // millisecond
#define MILLISECOND(x) ((F_CPU / 1000 * (x)) >> 8)

void configureTimer(uint16_t duration);

#endif	/* TIMERINT_H */
