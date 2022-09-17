%include "io.inc"

section .text
global CMAIN

CMAIN:
    mov ebp, esp
    mov al, 1

boucle1:
    cmp al, 11
    je fin
    
    mov bl, 1
boucle2:
    cmp bl, 11
    je finboucle2
    
    call afficheTableMultiplication    
    inc bl
    jmp boucle2

finboucle2:
    NEWLINE
    inc al
    jmp boucle1
    
fin:
    xor eax, eax
    ret

afficheTableMultiplication:
    PRINT_UDEC 1, al
    PRINT_STRING ' x '
    PRINT_UDEC 1, bl
    PRINT_STRING ' = '

    push eax
    push ebx

    mul bl
    PRINT_UDEC 1,ax

    pop ebx
    pop eax
     
    NEWLINE
    ret