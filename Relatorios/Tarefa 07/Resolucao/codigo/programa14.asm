addi $t0, $zero, 0x1001
sll $t0, $t0, 16

lw $t0, 0($t0) # Lendo valor da RAM 

andi $t1, $t0, 1 # Fazendo uma AND para descobrir se eh impar ou par

sw $t1, 4($t0) # Guardando na posicao 2 da memoria ( sizeof(int) = 4 )