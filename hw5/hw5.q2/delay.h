#ifndef DELAY_H
#define	DELAY_H

#define F_CPU 4000000UL  // 4 MHz
#define duration 500 // millisecond
#define MILLISECOND(x) ((F_CPU / 1000 * (x)) >> 8)

void startDelay();

#endif	/* DELAY_H */

