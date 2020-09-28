#include <stdbool.h>
#include "Compiler.h"
// button is connected to pin A0

bool volatile buttonPressed;

void initButton() 

void __attribute__((interrupt, auto_psv)) _CNInterrupt(void) 
