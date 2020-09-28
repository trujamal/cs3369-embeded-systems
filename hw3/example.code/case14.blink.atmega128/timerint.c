#include <stdbool.h>
#include <stdint.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include "timerint.h"

#ifdef TimerInt

bool timerFired;

// duration in milli second
void configureTimer(uint16_t duration) {
    OCR1A = MILLISECOND(duration);
	TCCR1A = 0;
	TCCR1B |= 1<<WGM12 | 1<<CS12;
	TIMSK |= 1<<OCIE1A;
}

ISR(TIMER1_COMPA_vect) {
    configureTimer(period);
    timerFired = true;
}

#endif

