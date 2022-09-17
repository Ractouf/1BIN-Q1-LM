%include "io.inc"

section .text
global CMAIN

CMAIN:
    mov ebp, esp
    mov al, 1

boucle1:
    cmp al, 10
    je fin
    
    mov bl, 1
boucle2:
    cmp bl, 10
    je finboucle2
    
    call afficheTableDaddition     
    inc bl
    jmp boucle2

finboucle2:
    NEWLINE
    inc al
    jmp boucle1
    
fin:
    xor eax, eax
    ret

afficheTableDaddition:
    PRINT_UDEC 1, al
    PRINT_CHAR '+'
    PRINT_UDEC 1, bl
    PRINT_CHAR '='

    push eax
    push ebx

    add al, bl
    PRINT_UDEC 1,al

    pop ebx
    pop eax
     
    NEWLINE
    ret