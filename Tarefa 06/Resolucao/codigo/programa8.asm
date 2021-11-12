addi $t0, $zero, 0x1234 # Preenche os primeiros 4 bits
sll $t0, $t0, 16 # Move pro inicio
ori $s0, $t0, 0x5678 # Junta o final do numero

srl $s1, $s0, 24 # Separa os ultimos 2 bits em $s1

sll $t0, $s0, 8 # Reorganiza o numero original
srl $s2, $t0, 24 # Separa os ultimos 2 bits em s2

sll $t0, $s0, 16 # Reorganiza o numero original
srl $s3, $t0, 24 # Separa os ultimos 2 bits em s3

andi $s4, $s0, 0x00FF # and com os bits restantes