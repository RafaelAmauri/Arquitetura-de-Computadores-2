addi $s0, $zero, 1 # x = 1

# y = 5*x
add $t0, $s0, $s0
add $t0, $t0, $t0
add $s1, $t0, $s0

# y = y + 15
addi $s1, $s1, 15