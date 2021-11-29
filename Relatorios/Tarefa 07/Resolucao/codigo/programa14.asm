.data 
    valor: .word 4
    
.text 
    ori $t0, $zero, 0x1001 # t0 = 0x1001
    sll $t0, $t0, 16       # t0 = 0x10010000
    lw  $s0, 0($t0)         # Pegando primeiro valor da memória
    
    andi $t1, $s0, 1       # Verificando se termina com 1, se for é ímpar
    beqz $t1, PAR          # Se for par saltará direto para
    sw   $t1, 4($t0)       # Salvar o resultado da operação no primeiro espaço livre da memória
    j FINALIZAR            # Terminar o programa
    
PAR:
    sw $t1, 4($t0)         # Salvar o resultado da operação no primeiro espaço livre da memória
    
FINALIZAR: 
    J FINALIZAR            # FInalizar o programa