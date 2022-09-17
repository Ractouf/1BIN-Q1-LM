%include "io.inc"
section .bss
entree resb 255

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    GET_STRING entree, 255
    PRINT_STRING entree  
    NEWLINE  
    
    mov entree, entree2
    xor entree, entree2
    
    PRINT_STRING entree2
    
    xor eax, eax
    ret