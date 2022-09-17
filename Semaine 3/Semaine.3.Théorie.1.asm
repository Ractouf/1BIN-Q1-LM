%INCLUDE    "io.inc"        ; proc�dures d'input/ouput clavier et �cran, voir l'aide (F1) de l'IDE SASM 

SECTION     .bss            ; section pour d�clarer des donn�es non initialis�es

SECTION     .data           
; section pour d�clarer des donn�es initialis�es
            ex1     db    0x55           ; 1 octet , en m�moire il y aura 0x55 
            ex2     db    0x55,0x56,0x57 ; suite de 3 octets, en m�moire il y aura 0x56 0x57 0x58
            ex3     db    'a',0x58            ; caract�re, en m�moire il y aura 0x61 le code ASCII de a
            ex4     db    'hello',0      ; chaine de caract�re, en m�moire il y aura
                                         ;    les codes ASCII de h e l l o suivi du nombre 0x00
            ex5     dw    0x1234         ; 2 octets, en m�moire il y aura 0x34 0x12 
            ex6     dd    0x12345678     ; 4 octets, en m�moire il y aura 0x78 0x56 0x34 0x12 
            ex7     dd    0x4D5E6C7F     ; 4 octets, en m�moire il y aura 0xBC 0x9A 0x00 0x00

SECTION     .text           ; section pour �crire du code en langage assembleur
                            ; cette section .text contiendra des instructions �crites en NASM 32 bits
GLOBAL      CMAIN           ; le libell� de d�but de la programmation dans l'IDE SASM doit �tre CMAIN avec une port�e "publique"
    
CMAIN:                  
            mov     ebp,esp; pour debugging fonctionnel dans l'IDE SASM               

; le libell� CMAIN: est le point d'entr�e de notre programme
; �crivez votre instructions en langage assembleur NASM 32 bits
; � partir de la ligne ci-dessous
            mov al, [ex2]
            mov bl, [ex2 + 1]
            mov cl, [ex2 + 2]
            
            mov edx, [ex6]
            
            PRINT_STRING ex4 
            
            
; fin correcte de CMAIN dans l'IDE SASM
            xor     eax,eax
            ret