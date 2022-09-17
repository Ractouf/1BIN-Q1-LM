%include "io.inc"

section .text
global CMAIN

CMAIN:
    mov ebp, esp
    mov eax, 0
    mov ebx, 1
    
boucle1:
    cmp eax, 21
    je fin

    call afficheTableMultiplication
    inc eax
    shl ebx, 1    
    jmp boucle1

fin:
    xor eax, eax
    ret

afficheTableMultiplication:
    PRINT_STRING "2 puissance "
    PRINT_UDEC 4, eax
    PRINT_STRING ' = '
    PRINT_UDEC 4, ebx
    NEWLINE
    ret