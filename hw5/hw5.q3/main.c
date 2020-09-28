#include <avr/interrupt.h>
#include <stdbool.h>
#include "led.h"
#include "timerint.h"

int main() {

    initLeds();

#ifdef TimerInt

    configureTimer(period);
	sei();
    timerFired = false;

    while (1) {
        if (timerFired) {
            timerFired = false;
            ledToggle(1);
        }
    }

#else

    while (1) {
        _delay_ms(10);
        ledToggle(1);
    }
    
#endif
    
    return 0;
}

