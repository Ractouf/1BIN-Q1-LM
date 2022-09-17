%INCLUDE    "io.inc"        ; proc�dures d'input/ouput clavier et �cran, voir l'aide (F1) de l'IDE SASM 

SECTION     .bss            ; section pour d�clarer des donn�es non initialis�es

SECTION     .data           ; section pour d�clarer des donn�es initialis�es

SECTION     .text           ; section pour �crire du code en langage assembleur
                            ; cette section .text contiendra des instructions �crites en NASM 32 bits
GLOBAL      CMAIN           ; le libell� de d�but de la programmation dans l'IDE SASM doit �tre CMAIN avec une port�e "publique"
    
CMAIN:                  
            mov     ebp,esp; pour debugging fonctionnel dans l'IDE SASM               

; le libell� CMAIN: est le point d'entr�e de notre programme
; �crivez votre instructions en langage assembleur NASM 32 bits
; � partir de la ligne ci-dessous

            mov     eax,0x7  ; changez la valeur de eax pour tester les 3 cas possibles

            cmp     eax,9
            je      casegal ; branche � l'�tiquette casegal dans le cas o� eax==9
            ja      cassuperieur ; branche � l'�tiquette cassuperieur dans le cas o� eax>9
            mov     ebx,3  ; cas o� eax<9
            jmp     fin
casegal:            
            mov     ebx,1
            jmp     fin 
            
cassuperieur:            
            mov     ebx,2
fin:                                             
; fin correcte de CMAIN dans l'IDE SASM
            xor     eax,eax
            ret