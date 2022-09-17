%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp
        mov eax, 1    
        mov ecx,10
boucle:
        PRINT_UDEC 4,eax
        inc eax  
        
        loop boucle  
    
    xor eax, eax
    ret