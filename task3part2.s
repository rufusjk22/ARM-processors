.equ A,0x05060708
.global _start
_start:
	ldr r0,=A
	ubfx r1,r0,#0,#8
	ubfx r2,r0,#8,#8
	ubfx r3,r0,#16,#8
	ubfx r4,r0,#24,#8
	
_end:
	B _end
.end
	