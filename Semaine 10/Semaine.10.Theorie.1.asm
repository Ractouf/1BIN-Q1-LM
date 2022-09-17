%INCLUDE    'io.inc'        ; proc�dures d'input/ouput clavier et �cran, voir l'aide (F1) de l'IDE SASM 

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

            ; premier appel de maprocedure          
            call maprocedure

            NEWLINE
            ; second appel de maprocedure
            call maprocedure
   
fin:                        
; fin correcte de CMAIN dans l'IDE SASM
            xor     eax,eax
            ret
                     
; proc�dure(s)       
maprocedure:
            push eax ; sauvegarde de eax car eax est utilis� dans la proc�dure
            push ebx ; sauvegarde de ebx car ebx est utilis� dans la proc�dure

            PRINT_STRING 'je suis dans maprocedure'
            PRINT_STRING ', je fais un petit calcul ;) '    
            mov eax,1
            PRINT_UDEC 4,eax
            PRINT_CHAR '+'
            mov ebx,2
            PRINT_UDEC 4,ebx
            PRINT_CHAR '='
            add eax,ebx
            PRINT_UDEC 4,eax
            
            pop ebx ; restauration de ebx
            pop eax ; restauration de eax
            ret            