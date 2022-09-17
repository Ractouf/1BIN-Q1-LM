%include "io.inc"

SECTION .bss
    pseudo resb 10
    
SECTION .data
    message     db 'Entre ton pseudo (max. 9 car.) : ',0
    bonjour     db 'Bonjour ',0
    msgtaille   db 'Nombre de lettres de ton pseudo : ',0

section .text
global CMAIN
CMAIN:
            mov ebp, esp
            PRINT_STRING message
            GET_STRING pseudo,10 ; remplissage de la suite d'octets en mémoire en commençant à l'adresse pseudo 
                                  
            mov cl,0          ; pour compter la longueur du pseudo
            mov ebx,pseudo    ; l'adresse pseudo est copiée dans ebx    
                     
boucle:   
            cmp byte [ebx],10 ; fin de chaîne qd on entre 'Enter', il y a 10 en mémoire
            je  affichage10 
            cmp byte [ebx],0  ; fin de chaîne classique, il y a 0 en mémoire
            je  affichage0
            inc cl            ; longueur++ du pseudo
            inc ebx           ; adresse++ (on passe ainsi à l'octet suivant en mémoire)
            jmp boucle        ; retour au début de la boucle "while"                          

affichage10:
            mov byte [ebx],0  ; remplace le 10 par la fin de chaîne classique 0

affichage0:    
            PRINT_STRING bonjour
            PRINT_STRING pseudo
            NEWLINE
                    
            PRINT_STRING msgtaille
            PRINT_UDEC 1,cl
    
    
    xor eax, eax
    ret