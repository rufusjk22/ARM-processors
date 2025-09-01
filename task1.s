.equ N,0x2345 @there are 6 1s
.global _start
_start:
	ldr r0,=N
	clz r8,r0 @count the leading zeros
	mov r9,#32 @loop counter
	sub r9,r8
	mov r1,#0 @counter
	mov r2,#1 @mask register
_loop:
	tst r0,r2
	addne r1,#1
	lsl r2,#1
	subs r9,#1
	bne _loop
_stop:
	B _stop
.end
	
	