.global _start
_start:
	ldr r1,=txt
	ldr r2,=txt2
	
_loop:
	ldrb r3,[r1],#1
	cmp r3,#0 @to check if null-terminator is reached
	orrne r3,#0x20 @set the 6th bit to 1
	strb r3,[r2],#1
	bne _loop @repeat if null is not detected
	


_stop:
	B _stop
.data
txt:.string "Hello, Ahmed" @each character is a byte
txt2: .space 50,0   @reserving 50 bytes of memory space and initialize them with 0
.end
	
	