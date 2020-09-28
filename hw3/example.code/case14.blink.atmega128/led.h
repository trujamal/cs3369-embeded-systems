#ifndef LED_H
#define	LED_H

#include <stdint.h>

void initLeds();

void ledOn(uint8_t sel);

void ledOff(uint8_t sel);

void ledToggle(uint8_t sel);

void ledSet(uint8_t val);

#endif	/* LED_H */
