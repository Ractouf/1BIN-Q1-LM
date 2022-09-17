%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp
    
        PRINT_STRING "Entre ton age: "  
        NEWLINE
        GET_UDEC 4,eax
        PRINT_UDEC 4,eax
        NEWLINE
        
        mov ebx,18    
        mov edx, eax  
        sub eax,ebx
        
        jnb ans
        NEWLINE
        PRINT_STRING "Tu es mineur"
        jmp fin
ans:
        NEWLINE
        PRINT_STRING "Tu es majeur"
        NEWLINE
        PRINT_STRING "Ton age en hexadecimal est: "
        PRINT_HEX 4,edx
fin:                           
    xor eax, eax
    ret