#include <avr/io.h>
#include <stdint.h>

// leds are connected to port A0..2

void initLeds() {
	DDRA |= 0x7;
}

void ledOn(uint8_t sel) {
	//if (sel > 7) return;
	PORTA |= 1<<sel;
}

void ledOff(uint8_t sel) {
	//if (sel > 7) return;
	PORTA &= ~(1<<sel);
}

void ledToggle(uint8_t sel) {
	//if (sel > 7) return;
	PORTA ^= (1<<sel);
}

void ledSet(uint8_t val) {
	PORTA = (PORTA & 0xF8) | (val & 0x7);
}

int main() {
	initLeds();
	ledOn(1);
	ledOff(1);
	ledToggle(1);
	ledSet(5);
	return 0;
}	
