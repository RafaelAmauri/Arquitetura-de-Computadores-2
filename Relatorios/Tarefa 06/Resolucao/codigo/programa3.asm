addi $s0, $zero, 3 # x = 3
addi $s1, $zero, 4 # y = 4

# 15 * x
add $t0, $s0, $s0
add $t0, $t0, $t0
add $t0, $t0, $t0
add $t0, $t0, $t0
sub $t0, $t0, $s0

# 64 * y
add $t1, $s1, $s1
add $t1, $t1, $t1
add $t1, $t1, $t1
add $t1, $t1, $t1
add $t1, $t1, $t1
add $t1, $t1, $t1


add $t1, $t1, $s1 # 65 * y
add $t1, $t1, $s1 # 66 * y
add $t1, $t1, $s1 # 67 * y


# (15 * x) + (67 * y)
add $t2, $t0, $t1

# (15 * x) + (67 * y) * 4
add $s2, $t2, $t2
add $s2, $s2, $s2