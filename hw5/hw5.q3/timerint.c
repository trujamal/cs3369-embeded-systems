#include <stdbool.h>
#include <stdint.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include "timerint.h"

#ifdef TimerInt

bool volatile timerFired;

// duration in milli second
void configureTimer(uint16_t duration) {
	// Page 138, Set count value to output compare register of channel A
    OCR1A = MILLISECOND(duration);
	// Counter mode
	// Page 133, Table 58, 00, normal opertion, disconnect output compare pins
	TCCR1A = 0;
	// Page 135, Table 61, mode 4, 0100, CTC (clear timer on compare match)
	// Page 137, Table 62, 100, prescaler 256
	TCCR1B |= 1<<WGM12 | 1<<CS12;
	// Page 140, OCIE1A: Timer/Counter1, Output Compare A Match Interrupt Enable
	TIMSK |= 1<<OCIE1A;
}

ISR(TIMER1_COMPA_vect) {
    configureTimer(period);
    timerFired = true;
}

#endif

