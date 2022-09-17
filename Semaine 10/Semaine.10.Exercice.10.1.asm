%INCLUDE    'io.inc'

SECTION     .bss

SECTION     .data

SECTION     .text
      
GLOBAL      CMAIN

CMAIN:              
            mov     ebp,esp             

            xor     eax,eax
            mov     ecx,26            

boucle:
            inc     eax
            dec     ecx
            jnz     boucle

fin:              
            xor     eax,eax
            ret          