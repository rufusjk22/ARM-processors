.global _start 
_start:
    LDR R0, =num1       @ Load address of num1
    LDR R1, [R0]        @ Load value of num1 into R1
    LDR R0, =num2       @ Load address of num2
    LDR R2, [R0]        @ Load value of num2 into R2
    LDR R0, =op         @ Load address of operation
    LDR R3, [R0]        @ Load operation code into R3

    CMP R3, #0          
    BEQ add
    CMP R3, #1          
    BEQ sub
    CMP R3, #2          
    BEQ mul
    CMP R3, #3          
    BEQ div
    CMP R3, #4          
    BEQ square
    CMP R3, #5          
    BEQ cube

add:
    ADD R4, R1, R2      
    B end

sub:
    SUB R4, R1, R2      
    B end

mul:
    MUL R4, R1, R2      
    B end

div:
    MOV R4, #0          
    CMP R2, #0          
    BEQ end             
    MOV R5, R1          

division_loop:
    CMP R5, R2          
    BLT end_division     
    SUB R5, R5, R2      
    ADD R4, R4, #1      
    B division_loop     

end_division:
    B end               

square:
    MUL R4, R1, R1      @ Square = R1 * R1
    B end

cube:
    MUL R5, R1, R1      @ Temp = R1 * R1
    MUL R4, R5, R1      @ Cube = Temp * R1 = R1^3
    B end

end:
    LDR R0, =result     
    STR R4, [R0]        

    BKPT                

.data
num1: .word 4           @ Example input 1
num2: .word 3           @ Example input 2 (ignored for square/cube)
						@ Operation code (0: add, 1: sub, 2: mul, 3: div, 4: Squared, 5: Cube)
op: .word 4             @ Operation code: try 4 (square) or 5 (cube)
result: .word 0         
