.equ A,5
.global _start
_start:
	mov r0,#A @ro=A
	mul r1,r0,r0 @r1=A^2
	mov r3,#3  
	mul r2,r0,r3 @r2=#3*a
	add r2,#5    @r2=#3*a+5
	mul r0,r1,r2 @r0=A^2(3*a+5)
	add r0,#8  @r0=A^2(3*a+5)+8
_end:
	b _end
.data
.end
	