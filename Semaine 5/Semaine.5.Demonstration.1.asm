%INCLUDE    "io.inc"        ; procédures d'input/ouput clavier et écran, voir l'aide (F1) de l'IDE SASM 

SECTION     .bss            ; section pour déclarer des données non initialisées


SECTION     .data           
; section pour déclarer des données initialisées
 
SECTION     .text           ; section pour écrire du code en langage assembleur
                            ; cette section .text contiendra des instructions écrites en NASM 32 bits
GLOBAL      CMAIN           ; le libellé de début de la programmation dans l'IDE SASM doit être CMAIN avec une portée "publique"
    
CMAIN:                  
                mov     ebp,esp; pour debugging fonctionnel dans l'IDE SASM               

; le libellé CMAIN: est le point d'entrée de notre programme
; écrivez votre instructions en langage assembleur NASM 32 bits
; à partir de la ligne ci-dessous

             ; lecture dans ax d'une valeur d'input de 0 à FFFF (2 octets en hexadécimal)
            
            PRINT_STRING "Entre une valeur en hexadecimal: "  
            GET_HEX 4,eax
            PRINT_HEX 4,eax
            NEWLINE
            NEWLINE
            
            PRINT_STRING "Entre une deuxième valeur  en hexadecimal: "
            GET_HEX 4,ebx
            PRINT_HEX 4,ebx
            NEWLINE
            NEWLINE
            
            add ax,bx
            
            jnz pasnul
            PRINT_STRING "ZF est armé"
            NEWLINE
            PRINT_STRING "La somme est nulle"
            jmp fin
pasnul:
            jnc aucunflag
            PRINT_STRING "CF est arme"
            PRINT_STRING "La somme a dépassé la capacité (2 octets)"
            jmp fin
aucunflag:
            PRINT_STRING " ZF et CF sont désarmés"
            NEWLINE
            PRINT_STRING "La somme est: "
            PRINT_HEX 2,eax
fin:      
; fin correcte de CMAIN dans l'IDE SASM
            xor     eax,eax
            ret