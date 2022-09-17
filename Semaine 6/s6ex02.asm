%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
        mov eax, 'a'
        mov ecx, 26
boucle:              
        PRINT_CHAR eax
        inc eax
        dec ecx
        jnz boucle  
       
        NEWLINE
        dec eax
        mov ecx, 26
boucle2:
        PRINT_CHAR eax
        dec eax
        dec ecx
        jnz boucle2      
 
        xor eax, eax
        ret