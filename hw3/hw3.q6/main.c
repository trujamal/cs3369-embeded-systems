#define FCY 4000000UL
#include <libpic30.h>
#include <stdbool.h>
#include "Compiler.h"
#include "ConfigurationBits.h"
#include "led.h"
#include "button.h"

int main() {
    initLeds();
    initButton();

    buttonPressed = false;

    while (1) {
        if (buttonPressed) ledOn(1);
        else buttonPressed ledOff(1);
    }

    return 0;
}
