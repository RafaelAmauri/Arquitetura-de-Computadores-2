addi $t0, $zero, 0x7FFF # Maior int possivel
sll $t0, $t0, 16 # Empurra para o inicio
ori $s0, $t0, 0xFFFF # Complementa o numero

addi $t0, $zero, 0x3000 # Adiciona os 4 primeiros bits
sll $s1, $t0, 8 # Empurra os bits para o inicio

sll $s1, $s1, 2 # 4 * y

sub $s2, $s0, $s1 # z = x - 4*y