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

            mov     ecx,3   ; initialisation d'un compteur � 3
boucle:
            cmp     ecx,0   ; test au d�but de la boucle
            je findeboucle  ; si ecx==0 alors allez � findeboucle
            
            PRINT_UDEC 4,ecx
            dec     ecx
            
            jmp     boucle  ; retour au test du d�but de la boucle
            
findeboucle:        
            PRINT_STRING boum 
                   
fin:                        
; fin correcte de CMAIN dans l'IDE SASM
            xor     eax,eax
            ret