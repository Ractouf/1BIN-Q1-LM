%INCLUDE    'io.inc'

SECTION     .bss

SECTION     .data

SECTION     .text

GLOBAL      CMAIN    
            
CMAIN:                  
            mov     ebp,esp; pour debugging fonctionnel dans l'IDE SASM               

            mov     al,'z'
            mov     ecx,26        

boucle:
            ; appel de la proc�dure <afficheCharAl>
            call afficheCharAl
            dec al
            dec ecx
            jnz boucle

fin:
            xor     eax,eax
            ret
                     
; proc�dure <afficheCharAl> qui affiche le contenu de al en tant que CHAR � l'�cran
afficheCharAl:
            push eax ; sauvegarde de eax car al est utilis� dans la proc�dure
            
            PRINT_CHAR al
            
            pop eax  ; restauration de eax
            ret            