#include <stdbool.h>
#include <avr/io.h>#include "event.h"

// button is connected to pin A7
// when button is pressed, A7 reads high.
// when button is not pressed, A7 reads low.

void initButton() {	DDRA &= 0x7F;}
void pollButton() {	if ((PINA & (1 << PINA7)) != 0) evbutton = Pressed;    else evbutton = Released;}
