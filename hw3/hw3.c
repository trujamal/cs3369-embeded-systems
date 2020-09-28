#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdbool.h>
#define F_CPU 4000000UL //4mhz

volatile bool __ran_interupt = 0;

void __reset_Interupt(void){
      PORTB ^= 0x00;
      __ran_interupt = true;
}

 int main(void) {

   PORTB ^= 0xFF;
   OCR1A = 100;
   OCR1B = 10;
   TCCR1A = 0;
   TCCR18 |= (1 << WGM12) |  (1 << CS12);

   // enable timer compare interrupt
   TIMSK1 |= (1 << OCIE1A);

   sei(); // Turns interupts on

   while(!__ran_interupt)
   {
     __reset_Interupt();
   }

 }
