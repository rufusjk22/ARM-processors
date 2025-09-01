.equ A,0x05060708
.global _start
_start:
	ldr r0,=A
	and r1,r0,#0xff
	lsr r2,r0,#8
	and r2,#0xff
	lsr r3,r0,#16
	and r3,#0xff
	lsr r4,r0,#24
	and r4,#0xff
_end:
	B _end
.end
	
	
	