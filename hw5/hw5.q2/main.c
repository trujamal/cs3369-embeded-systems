#include <stdbool.h>
#include "led.h"

#include "delay.h"
#include "button.h"

#include "event.h"
#include "table.h"

Event_Button volatile evbutton;
Event_Delay volatile evdelay;

int main() {
    initLeds();
    initButton();

    evbutton = Released;
    evdelay = Expired;

    StateTableRow* currentState = initStateTable();
    
    while (1) {

        pollButton();
        
        if (evdelay == Expired) {
            currentState->expired.eventAction();
            currentState = currentState->expired.nextState;
        } else if (evdelay == Delaying) {
            currentState->delaying.eventAction();
            currentState = currentState->delaying.nextState;
        }
        if (evbutton == Pressed) {
            currentState->pressed.eventAction();
            currentState = currentState->pressed.nextState;
        } else if (evbutton == Released) {
            currentState->released.eventAction();
            currentState = currentState->released.nextState;
        }
    }

    return 0;
}
