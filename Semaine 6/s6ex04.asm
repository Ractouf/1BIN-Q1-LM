%include "io.inc"

SECTION .bss
    
    
SECTION .data
    motdepasse     db 'vinci2018',0
   
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
            
            
            mov ebx,message    ; l'adresse pseudo est copiée dans ebx    
                     
boucle:   
            cmp byte [ebx],10 ; fin de chaîne qd on entre 'Enter', il y a 10 en mémoire
            je  affichage10 
            cmp byte [ebx],0  ; fin de chaîne classique, il y a 0 en mémoire
            je  affichage0
            inc ebx           ; adresse++ (on passe ainsi à l'octet suivant en mémoire)
            jmp boucle        ; retour au début de la boucle "while"                          

affichage10:
            mov byte [ebx],0  ; remplace le 10 par la fin de chaîne classique 0

affichage0:    
            PRINT_STRING 
            NEWLINE
                    
            PRINT_UDEC 1,cl
    xor eax, eax
    ret