ori $8, $zero, 0x01 # $8 = 1 
sll $8, $8, 31      # $8 = 0x80000000
sra $8, $8, 31      # $8 = 0xFFFFFFFF