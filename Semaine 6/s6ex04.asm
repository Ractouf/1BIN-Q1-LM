%include "io.inc"

SECTION .bss
    
    
SECTION .data
    motdepasse     db 'vinci2018',0
   
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
            
            
            mov ebx,message    ; l'adresse pseudo est copi�e dans ebx    
                     
boucle:   
            cmp byte [ebx],10 ; fin de cha�ne qd on entre 'Enter', il y a 10 en m�moire
            je  affichage10 
            cmp byte [ebx],0  ; fin de cha�ne classique, il y a 0 en m�moire
            je  affichage0
            inc ebx           ; adresse++ (on passe ainsi � l'octet suivant en m�moire)
            jmp boucle        ; retour au d�but de la boucle "while"                          

affichage10:
            mov byte [ebx],0  ; remplace le 10 par la fin de cha�ne classique 0

affichage0:    
            PRINT_STRING 
            NEWLINE
                    
            PRINT_UDEC 1,cl
    xor eax, eax
    ret