addi $s0, $zero, 3 # x = 3
addi $s1, $zero, 4 # y = 4

addi $t0, $zero, 2 # variavel temporaria que vai ser dobrada
sll $t0, $s0, 4
sub $t0, $t0, $s0

addi $t1, $zero, 2
sll $t1, $s1, 6
add $t1, $t1, $s1
add $t1, $t1, $s1
add $t1, $t1, $s1

add $s2, $t0, $t1

sll $s3, $s2, 2