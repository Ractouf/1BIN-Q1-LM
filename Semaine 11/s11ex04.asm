%include "io.inc"

SECTION .bss
    pseudo resb 10000
    
SECTION .data
section .text
global CMAIN

CMAIN:
            mov ebp, esp
            GET_STRING pseudo,10000
            PRINT_STRING pseudo
            NEWLINE
            mov cl,0
            mov ebx,pseudo
            mov eax, pseudo
    
boucle:   
            cmp byte [ebx],10
            je  affichage10 
            cmp byte [ebx],0
            je  affichage0
            cmp  byte [ebx],32
            je  affichage32
            inc cl            
            inc ebx          
            jmp boucle                               

affichage10:
            mov byte [ebx],0
            
affichage32:
            inc ebx
            jmp boucle

affichage0:   
            PRINT_UDEC 4,cl
            
boucle2:
            cmp byte [eax], byte [ebx]
            je boucle3
            
boucle3:
            inc eax
            dec ebx
            jmp boucle2
                     
    xor eax, eax
    ret