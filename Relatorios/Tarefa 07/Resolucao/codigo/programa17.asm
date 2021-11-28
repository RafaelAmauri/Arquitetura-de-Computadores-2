.text
.globl main
main:
	lui $t0, 0x1001 #|1001|0000|
	lw $s0, 0($t0)  # s0 = x 
	lw $s1, 4($t0)  # s1 = y
	lw $s2, 8($t0)  # s2 = z
	addi $t1, $zero, 0 #t1 = 0 (contador)
	
	loop:
		add  $s2, $s2, $s0 #(s0 = s0+s0)
		addi $t1, $t1, 1   #t1 =t1 + 1
		bne  $t1, $s1, loop
		
	sw  $s2, 8($t0) #armazenando na memória a multiplicação.	

.data
	x:.word 5
	y:.word 2
	k:.word 0