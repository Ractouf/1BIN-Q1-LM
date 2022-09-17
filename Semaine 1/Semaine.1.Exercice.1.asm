%INCLUDE    "io.inc"        ; proc�dures d'input/ouput clavier et �cran, voir l'aide (F1) de l'IDE SASM 

SECTION     .bss            ; section pour d�clarer des donn�es non initialis�es

SECTION     .data           ; section pour d�clarer des donn�es initialis�es

SECTION     .text           ; section pour �crire du code en langage assembleur
                            ; cette section .text contiendra des instructions �crites en NASM 32 bits
GLOBAL      CMAIN           ; le libell� de d�but de la programmation dans l'IDE SASM doit �tre CMAIN avec une port�e "publique"
    
CMAIN:                  
            mov     ebp,esp; pour debugging fonctionnel dans l'IDE SASM
            inc     eax
            dec     eax
            add     eax, 3
            sub     eax, 3
           
            mov     eax, 10
            mov     ebx, 10
            add     eax, ebx
                        

; le libell� CMAIN: est le point d'entr�e de notre programme
; �crivez votre instructions en langage assembleur NASM 32 bits
; � partir de la ligne ci-dessous
            mov     eax, 11001000b
            mov     ebx, 11111111b
            mov     ecx, 10b
            mov     edx, 10101010101010101010101010101010b
            
; fin correcte de CMAIN dans l'IDE SASM 
            xor     eax,eax
            ret