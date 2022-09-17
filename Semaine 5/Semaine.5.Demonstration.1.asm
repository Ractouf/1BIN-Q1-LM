%INCLUDE    "io.inc"        ; proc�dures d'input/ouput clavier et �cran, voir l'aide (F1) de l'IDE SASM 

SECTION     .bss            ; section pour d�clarer des donn�es non initialis�es


SECTION     .data           
; section pour d�clarer des donn�es initialis�es
 
SECTION     .text           ; section pour �crire du code en langage assembleur
                            ; cette section .text contiendra des instructions �crites en NASM 32 bits
GLOBAL      CMAIN           ; le libell� de d�but de la programmation dans l'IDE SASM doit �tre CMAIN avec une port�e "publique"
    
CMAIN:                  
                mov     ebp,esp; pour debugging fonctionnel dans l'IDE SASM               

; le libell� CMAIN: est le point d'entr�e de notre programme
; �crivez votre instructions en langage assembleur NASM 32 bits
; � partir de la ligne ci-dessous

             ; lecture dans ax d'une valeur d'input de 0 � FFFF (2 octets en hexad�cimal)
            
            PRINT_STRING "Entre une valeur en hexadecimal: "  
            GET_HEX 4,eax
            PRINT_HEX 4,eax
            NEWLINE
            NEWLINE
            
            PRINT_STRING "Entre une deuxi�me valeur  en hexadecimal: "
            GET_HEX 4,ebx
            PRINT_HEX 4,ebx
            NEWLINE
            NEWLINE
            
            add ax,bx
            
            jnz pasnul
            PRINT_STRING "ZF est arm�"
            NEWLINE
            PRINT_STRING "La somme est nulle"
            jmp fin
pasnul:
            jnc aucunflag
            PRINT_STRING "CF est arme"
            PRINT_STRING "La somme a d�pass� la capacit� (2 octets)"
            jmp fin
aucunflag:
            PRINT_STRING " ZF et CF sont d�sarm�s"
            NEWLINE
            PRINT_STRING "La somme est: "
            PRINT_HEX 2,eax
fin:      
; fin correcte de CMAIN dans l'IDE SASM
            xor     eax,eax
            ret