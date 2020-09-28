
hw1.q3.avr:     file format elf32-avr


Disassembly of section .data:

00800100 <__data_start>:
  800100:	68 65       	ori	r22, 0x58	; 88
  // ll
  800102:	6c 6c       	ori	r22, 0xCC	; 204
  800104:	6f 20       	and	r6, r15
  800106:	77 6f       	ori	r23, 0xF7	; 247
  800108:	72 6c       	ori	r23, 0xC2	; 194
  80010a:	64 21       	and	r22, r4
  80010c:	0a 00       	.word	0x000a	; ????
  80010e:	68 65       	ori	r22, 0x58	; 88
  800110:	6c 6c       	ori	r22, 0xCC	; 204
  800112:	6f 20       	and	r6, r15
  800114:	77 6f       	ori	r23, 0xF7	; 247
  800116:	72 6c       	ori	r23, 0xC2	; 194
  800118:	64 21       	and	r22, r4
	...

Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 46 00 	jmp	0x8c	; 0x8c <__ctors_end>
   4:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
   8:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
   c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  10:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  14:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  18:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  1c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  20:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  24:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  28:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  2c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  30:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  34:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  38:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  3c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  40:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  44:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  48:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  4c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  50:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  54:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  58:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  5c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  60:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  64:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  68:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  6c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  70:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  74:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  78:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  7c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  80:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  84:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  88:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>

0000008c <__ctors_end>:
  8c:	11 24       	eor	r1, r1
  8e:	1f be       	out	0x3f, r1	; 63
  90:	cf ef       	ldi	r28, 0xFF	; 255
  92:	d0 e1       	ldi	r29, 0x10	; 16
  94:	de bf       	out	0x3e, r29	; 62
  96:	cd bf       	out	0x3d, r28	; 61

00000098 <__do_copy_data>:
  98:	11 e0       	ldi	r17, 0x01	; 1
  9a:	a0 e0       	ldi	r26, 0x00	; 0
  9c:	b1 e0       	ldi	r27, 0x01	; 1
  9e:	ec e8       	ldi	r30, 0x8C	; 140
  a0:	f1 e0       	ldi	r31, 0x01	; 1
  a2:	00 e0       	ldi	r16, 0x00	; 0
  a4:	0b bf       	out	0x3b, r16	; 59
  a6:	02 c0       	rjmp	.+4      	; 0xac <__do_copy_data+0x14>
  a8:	07 90       	elpm	r0, Z+
  aa:	0d 92       	st	X+, r0
  ac:	ac 31       	cpi	r26, 0x1C	; 28
  ae:	b1 07       	cpc	r27, r17
  b0:	d9 f7       	brne	.-10     	; 0xa8 <__do_copy_data+0x10>

000000b2 <__do_clear_bss>:
  b2:	11 e0       	ldi	r17, 0x01	; 1
  b4:	ac e1       	ldi	r26, 0x1C	; 28
  b6:	b1 e0       	ldi	r27, 0x01	; 1
  b8:	01 c0       	rjmp	.+2      	; 0xbc <.do_clear_bss_start>

000000ba <.do_clear_bss_loop>:
  ba:	1d 92       	st	X+, r1

000000bc <.do_clear_bss_start>:
  bc:	a2 32       	cpi	r26, 0x22	; 34
  be:	b1 07       	cpc	r27, r17
  c0:	e1 f7       	brne	.-8      	; 0xba <.do_clear_bss_loop>
  c2:	0e 94 67 00 	call	0xce	; 0xce <main>
  c6:	0c 94 c4 00 	jmp	0x188	; 0x188 <_exit>

000000ca <__bad_interrupt>:
  ca:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000ce <main>:
#include <stdio.h>
#include <string.h>
int main() {
  ce:	cf 93       	push	r28
  d0:	df 93       	push	r29
  d2:	cd b7       	in	r28, 0x3d	; 61
  d4:	de b7       	in	r29, 0x3e	; 62
  d6:	64 97       	sbiw	r28, 0x14	; 20
  d8:	0f b6       	in	r0, 0x3f	; 63
  da:	f8 94       	cli
  dc:	de bf       	out	0x3e, r29	; 62
  de:	0f be       	out	0x3f, r0	; 63
  e0:	cd bf       	out	0x3d, r28	; 61
  char buf[20];
  strncpy(buf, "hello world!\n", 20);
  e2:	44 e1       	ldi	r20, 0x14	; 20 // buf[20]
  e4:	50 e0       	ldi	r21, 0x00	; 0  // Hello
  e6:	60 e0       	ldi	r22, 0x00	; 0  // world!
  e8:	71 e0       	ldi	r23, 0x01	; 1  // \n
  ea:	ce 01       	movw	r24, r28     // Temporary Return Register
  ec:	01 96       	adiw	r24, 0x01	; 1
  ee:	0e 94 86 00 	call	0x10c	; 0x10c <strncpy>
  printf("hello world!\n");
  f2:	8e e0       	ldi	r24, 0x0E	; 14
  f4:	91 e0       	ldi	r25, 0x01	; 1
  f6:	0e 94 95 00 	call	0x12a	; 0x12a <puts>
}
  fa:	64 96       	adiw	r28, 0x14	; 20
  fc:	0f b6       	in	r0, 0x3f	; 63
  fe:	f8 94       	cli
 100:	de bf       	out	0x3e, r29	; 62
 102:	0f be       	out	0x3f, r0	; 63
 104:	cd bf       	out	0x3d, r28	; 61
 106:	df 91       	pop	r29
 108:	cf 91       	pop	r28
 10a:	08 95       	ret

0000010c <strncpy>:
 10c:	fb 01       	movw	r30, r22 // Copying r22 over to r30
 10e:	dc 01       	movw	r26, r24 // Copy r24 to r26
 110:	41 50       	subi	r20, 0x01	; 1 //  Subratcting 0x01 from r20
 112:	50 40       	sbci	r21, 0x00	; 0  // Using a 0 to subtract from r21
 114:	48 f0       	brcs	.+18     	; 0x128 <strncpy+0x1c> // branch if carry set
 116:	01 90       	ld	r0, Z+ // load r0 with data space loc.
 118:	0d 92       	st	X+, r0 // store r0 in data space loc.
 11a:	00 20       	and	r0, r0 // bitwise and r0 with itself to evaluate
 11c:	c9 f7       	brne	.-14     	; 0x110 <strncpy+0x4> // Branch if Not Equal
 11e:	01 c0       	rjmp	.+2      	; 0x122 <strncpy+0x16> // Non-conditional branch
 120:	1d 92       	st	X+, r1 // storing r1 in the data space location
 122:	41 50       	subi	r20, 0x01	; 1 // subrtacting 1 from r20
 124:	50 40       	sbci	r21, 0x00	; 0 // subratct 0 from r21 with the higher byte
 126:	e0 f7       	brcc	.-8      	; 0x120 <strncpy+0x14> // Branch if carry cleared from sbci
 128:	08 95       	ret // Return to original function

0000012a <puts>:
 12a:	0f 93       	push	r16 // Save r16 into the stack
 12c:	1f 93       	push	r17 // Save r17 into the stack
 12e:	cf 93       	push	r28 // Save r28 into the stack
 130:	df 93       	push	r29 // Save r29 into the stack
 132:	8c 01       	movw	r16, r24 // Copy info of r24 to r26
 134:	e0 91 1e 01 	lds	r30, 0x011E // loading r30 with the contents of 011E
 138:	f0 91 1f 01 	lds	r31, 0x011F // loading r31 with the contents of 011F
 13c:	83 81       	ldd	r24, Z+3	; 0x03 // loading r24 with the data space location
 13e:	81 ff       	sbrs	r24, 1 '' Skip the value if bit 1 is in the r24 set
 140:	1b c0       	rjmp	.+54     	; 0x178 <puts+0x4e> // Relative jump to location
 142:	c0 e0       	ldi	r28, 0x00	; 0 // load 0 into register r28
 144:	d0 e0       	ldi	r29, 0x00	; 0 // load 0 into register r29
 146:	05 c0       	rjmp	.+10     	; 0x152 <puts+0x28> // Another Relative Jump
 148:	09 95       	icall // Call routine to begin
 14a:	89 2b       	or	r24, r25 // Do the bitwise or between r25 and r24
 14c:	11 f0       	breq	.+4      	; 0x152 <puts+0x28> // Do a branch equals
 14e:	cf ef       	ldi	r28, 0xFF	; 255 // load 0xFF in r28
 150:	df ef       	ldi	r29, 0xFF	; 255 // load 0xFF in r29
 152:	f8 01       	movw	r30, r16 // copy r16 into r30
 154:	81 91       	ld	r24, Z+ // Load r24 with the dataspace location
 156:	8f 01       	movw	r16, r30 // Copy r30 into r16
 158:	60 91 1e 01 	lds	r22, 0x011E // loads r22 with contents of 011E
 15c:	70 91 1f 01 	lds	r23, 0x011F // Loads r23 with the contents of 011F
 160:	db 01       	movw	r26, r22 // copies infomration from r22 to r26
 162:	18 96       	adiw	r26, 0x08	; 8 // add 0x08 to register r26
 164:	ed 91       	ld	r30, X+ // Load register r30 with dataspace location
 166:	fc 91       	ld	r31, X  // Load reigster r31 with dataspace location
 168:	19 97       	sbiw	r26, 0x09	; 9 // Subratct 09 from r26
 16a:	81 11       	cpse	r24, r1 // Compare r24 to r1
 16c:	ed cf       	rjmp	.-38     	; 0x148 <puts+0x1e> // Relative jump
 16e:	8a e0       	ldi	r24, 0x0A	; 10  // Load 0x0A into r24
 170:	09 95       	icall // Call main routine
 172:	89 2b       	or	r24, r25 // Bitwise or between r24 and r25
 174:	09 f4       	brne	.+2      	; 0x178 <puts+0x4e> // Branch if not equal
 176:	02 c0       	rjmp	.+4      	; 0x17c <puts+0x52> // Relative jump
 178:	cf ef       	ldi	r28, 0xFF	; 255 // Load 0xFF to r28
 17a:	df ef       	ldi	r29, 0xFF	; 255 // Load 0xFF to r29
 17c:	ce 01       	movw	r24, r28 // copy r28 over to r24
 17e:	df 91       	pop	r29 // Restore r29 original contents
 180:	cf 91       	pop	r28 // Restore r28 original contents
 182:	1f 91       	pop	r17 // Restore r17 original contents
 184:	0f 91       	pop	r16 // Restore r16 original contents
 186:	08 95       	ret // Return value from function

00000188 <_exit>:
 188:	f8 94       	cli

0000018a <__stop_program>:
 18a:	ff cf       	rjmp	.-2      	; 0x18a <__stop_program>
