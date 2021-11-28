ori $t0, $zero, 0x1001
sll $t0, $t0, 16
sw $t0, 0($t0)
ori $t1, $zero, 0x1001

sll $t1, $t1, 16
ori $t1, $t1, 0x004

sw $t1, 0($t1)
ori $t2, $zero, 0x1001

sll $t2 $t2, 16
ori $t2, $t2, 0x0008
sw $t2, 0($t2)

or $s0, $zero, $t2
