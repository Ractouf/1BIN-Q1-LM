%INCLUDE    "io.inc"        ; procédures d'input/ouput clavier et écran, voir l'aide (F1) de l'IDE SASM 

SECTION     .bss            ; section pour déclarer des données non initialisées

SECTION     .data           
; section pour déclarer des données initialisées
            ex1     db    0x55           ; 1 octet , en mémoire il y aura 0x55 
            ex2     db    0x55,0x56,0x57 ; suite de 3 octets, en mémoire il y aura 0x56 0x57 0x58
            ex3     db    'a',0x58            ; caractère, en mémoire il y aura 0x61 le code ASCII de a
            ex4     db    'hello',0      ; chaine de caractère, en mémoire il y aura
                                         ;    les codes ASCII de h e l l o suivi du nombre 0x00
            ex5     dw    0x1234         ; 2 octets, en mémoire il y aura 0x34 0x12 
            ex6     dd    0x12345678     ; 4 octets, en mémoire il y aura 0x78 0x56 0x34 0x12 
            ex7     dd    0x4D5E6C7F     ; 4 octets, en mémoire il y aura 0xBC 0x9A 0x00 0x00

SECTION     .text           ; section pour écrire du code en langage assembleur
                            ; cette section .text contiendra des instructions écrites en NASM 32 bits
GLOBAL      CMAIN           ; le libellé de début de la programmation dans l'IDE SASM doit être CMAIN avec une portée "publique"
    
CMAIN:                  
            mov     ebp,esp; pour debugging fonctionnel dans l'IDE SASM               

; le libellé CMAIN: est le point d'entrée de notre programme
; écrivez votre instructions en langage assembleur NASM 32 bits
; à partir de la ligne ci-dessous
            mov al, [ex2]
            mov bl, [ex2 + 1]
            mov cl, [ex2 + 2]
            
            mov edx, [ex6]
            
            PRINT_STRING ex4 
            
            
; fin correcte de CMAIN dans l'IDE SASM
            xor     eax,eax
            ret