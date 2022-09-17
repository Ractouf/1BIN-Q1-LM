%include "io.inc"
SECTION .bss
entree resb 1
SECTION .data
message db 'Entre un nombre : ',0
nombre db 0x23

section .text
global CMAIN
    
CMAIN:
    mov bx,0
MAIN:

    mov ebp, esp; for correct debugging
    mov ax, 0x23
    PRINT_STRING message
    GET_HEX 1,cx
    PRINT_HEX 1,cx
    
    inc bx
    sub cx,ax
    NEWLINE
    
    jb petit
    cmp byte cx,0
    je fin
    
    PRINT_STRING 'Trop grand, essaye encore'
    NEWLINE
    jmp MAIN
    
petit:
    PRINT_STRING 'Trop petit, essaye encore'
    NEWLINE
    jmp MAIN
    
fin:
    NEWLINE
    PRINT_STRING 'Bravo. Le nombre est bien:  '
    PRINT_HEX 1,nombre
    NEWLINE
    PRINT_STRING "Nombre d'essai(s) : "
    PRINT_UDEC 1,bx
    
    xor eax, eax
    ret