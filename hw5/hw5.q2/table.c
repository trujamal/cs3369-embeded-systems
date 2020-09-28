#include "table.h"
#include "led.h"
#include "state.h"
#include "delay.h"

StateTableRow S0, S1, S2, S3;

void dummy() {}

void S0Pressed() {
    ledOn(1);
    startDelay();
}

void S2Released() {
    ledOff(1);
    startDelay();
}

StateTableRow* initStateTable() {
    // S0
    S0.state = S0_Released;
    S0.pressed.eventAction = S0Pressed;
    S0.pressed.nextState = &S1;
    S0.released.eventAction = dummy;
    S0.released.nextState = &S0;
    S0.expired.eventAction = dummy;
    S0.expired.nextState = &S0;
    S0.delaying.eventAction = dummy;
    S0.delaying.nextState = &S0;
    // S1
    S1.state = S1_Pressed;
    S1.pressed.eventAction = dummy;
    S1.pressed.nextState = &S1;
    S1.released.eventAction = dummy;
    S1.released.nextState = &S1;
    S1.expired.eventAction = dummy;
    S1.expired.nextState = &S2;
    S1.delaying.eventAction = dummy;
    S1.delaying.nextState = &S1;
    // S2
    S2.state = S2_Pressed;
    S2.pressed.eventAction = dummy;
    S2.pressed.nextState = &S2;
    S2.released.eventAction = S2Released;
    S2.released.nextState = &S3;
    S2.expired.eventAction = dummy;
    S2.expired.nextState = &S2;
    S2.delaying.eventAction = dummy;
    S2.delaying.nextState = &S2;
    // S3
    S3.state = S3_Released;
    S3.pressed.eventAction = dummy;
    S3.pressed.nextState = &S3;
    S3.released.eventAction = dummy;
    S3.released.nextState = &S3;
    S3.expired.eventAction = dummy;
    S3.expired.nextState = &S0;
    S3.delaying.eventAction = dummy;
    S3.delaying.nextState = &S3;

    return &S0;
}