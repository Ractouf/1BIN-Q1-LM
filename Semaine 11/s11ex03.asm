%include "io.inc"

section .text
global CMAIN

CMAIN:
    mov ebp, esp
    mov bl, 1

boucle1:
    cmp bl, 11
    je fin
    
    mov ax, 0
boucle2:
    cmp ax, 11
    je finboucle2
    
    call afficheTableDivision   
    inc ax
    jmp boucle2

finboucle2:
    NEWLINE
    inc bl
    jmp boucle1
    
fin:
    PRINT_STRING "etc."
    xor eax, eax
    ret

afficheTableDivision:
    PRINT_UDEC 1, ax
    PRINT_STRING ' / '
    PRINT_UDEC 1, bl
    PRINT_STRING ' = '
    
    push eax
    push ebx

    div bl
    PRINT_UDEC 1,al

    pop ebx
    pop eax
    
    PRINT_STRING " reste "
    PRINT_UDEC 1,ah
     
    NEWLINE
    ret