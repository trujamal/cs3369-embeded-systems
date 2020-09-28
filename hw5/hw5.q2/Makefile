all:
	avr-gcc -O0 -Wall -Wl,-Map=button.O0.map -mmcu=atmega128 -o button.avr *.c
	avr-size button.avr
	avr-gcc -O1 -Wall -Wl,-Map=button.O1.map -mmcu=atmega128 -o button.avr *.c
	avr-size button.avr
	avr-gcc -O2 -Wall -Wl,-Map=button.O2.map -mmcu=atmega128 -o button.avr *.c
	avr-size button.avr
	avr-gcc -O3 -Wall -Wl,-Map=button.O3.map -mmcu=atmega128 -o button.avr *.c
	avr-size button.avr
	avr-gcc -Os -Wall -Wl,-Map=button.Os.map -mmcu=atmega128 -o button.avr *.c
	avr-size button.avr

clean:
	rm -rf *.map *.avr *.asm
