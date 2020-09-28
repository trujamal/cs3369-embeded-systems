#include "ConfigurationBits.h"

void initializeSystem() {
    // Configure the device PLL to obtain 60 MIPS operation. The crystal
    // frequency is 8MHz. Divide 8MHz by 2, multiply by 60 and divide by
    // 2. This results in Fosc of 120MHz. The CPU clock frequency is
    // Fcy = Fosc/2 = 60MHz.
    PLLFBD = 58;            /* M = 60	*/
    CLKDIVbits.PLLPRE = 0;  /* N1 = 2	*/
    CLKDIVbits.PLLPOST = 0; /* N2 = 2	*/
    /*	Initiate Clock Switch to Primary
     *	Oscillator with PLL (NOSC= 0x3)*/
    __builtin_write_OSCCONH(0x03);
    __builtin_write_OSCCONL(0x01);
    while (OSCCONbits.COSC != 0x3);
    // Wait for PLL to lock
    while (OSCCONbits.LOCK != 1);
}
