%INCLUDE    "io.inc"        ; proc�dures d'input/ouput clavier et �cran, voir l'aide (F1) de l'IDE SASM 

SECTION     .bss            ; section pour d�clarer des donn�es non initialis�es

SECTION     .data           ; section pour d�clarer des donn�es initialis�es
boum        db 'Boum !!!',0

SECTION     .text           ; section pour �crire du code en langage assembleur
                            ; cette section .text contiendra des instructions �crites en NASM 32 bits
GLOBAL      CMAIN           ; le libell� de d�but de la programmation dans l'IDE SASM doit �tre CMAIN avec une port�e "publique"
    
CMAIN:                  
            mov     ebp,esp; pour debugging fonctionnel dans l'IDE SASM               

; le libell� CMAIN: est le point d'entr�e de notre programme
; �crivez votre instructions en langage assembleur NASM 32 bits
; � partir de la ligne ci-dessous

            mov     ecx,3   ; initialisation d'un compteur de boucle � 3
boucle:
            PRINT_UDEC 4,ecx ; instruction dans la boucle
            
            loop    boucle  ; boucler ecx fois 
            
            PRINT_STRING boum ; instruction qui suit la fin de la boucle       
fin:                        
; fin correcte de CMAIN dans l'IDE SASM
            xor     eax,eax
            ret