%INCLUDE    'io.inc'        ; procédures d'input/ouput clavier et écran, voir l'aide (F1) de l'IDE SASM 

SECTION     .bss            ; section pour déclarer des données non initialisées  

SECTION     .data           ; section pour déclarer des données initialisées

SECTION     .text           ; section pour écrire du code en langage assembleur
                            ; cette section .text contiendra des instructions écrites en NASM 32 bits
GLOBAL      CMAIN           ; le libellé de début de la programmation dans l'IDE SASM doit être CMAIN avec une portée "publique"
    
CMAIN:                  
            mov     ebp,esp; pour debugging fonctionnel dans l'IDE SASM               

; le libellé CMAIN: est le point d'entrée de notre programme
; écrivez votre instructions en langage assembleur NASM 32 bits
; à partir de la ligne ci-dessous

            PRINT_STRING 'adresse initiale de la pile = '
            PRINT_HEX 4,esp
            NEWLINE
            
            PUSH 1
            PRINT_STRING 'pushé sur la pile : '
            PRINT_UDEC 4,[esp]
            NEWLINE
            
            PUSH 2
            PRINT_STRING 'pushé sur la pile : '
            PRINT_UDEC 4,[esp]
            NEWLINE
            
            PUSH 3
            PRINT_STRING 'pushé sur la pile : '
            PRINT_UDEC 4,[esp]
            NEWLINE
            
            POP eax  
            PRINT_STRING 'poppé de la pile : '
            PRINT_UDEC 4,eax
            NEWLINE
            
            POP ebx 
            PRINT_STRING 'poppé de la pile : '    
            PRINT_UDEC 4,ebx
            NEWLINE
            
            POP ecx     
            PRINT_STRING 'poppé de la pile : '    
            PRINT_UDEC 4,ecx
            NEWLINE
   
fin:                        
; fin correcte de CMAIN dans l'IDE SASM
            xor     eax,eax
            ret