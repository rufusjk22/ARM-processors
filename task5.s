.equ A,5678
.equ magic,6554
.global _start
_start:
	ldr r0,=A
	ldr r9,=magic
	mul r0,r0,r9
	lsr r0,#16
	@calculate the remainder
	mov r2,r1
	mov r10,#10
	mul r2,r2,r10
	sub r2,r0,r2
	
_end:
	b _end
.data
.end
	