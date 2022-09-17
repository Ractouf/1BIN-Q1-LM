%include "io.inc"
section .data
    tableau dd 1,2,3,4,5,6,7,8,9,10
    popTableau dd 0
section .text
global CMAIN
CMAIN:
    mov ebp, esp
    
    mov ecx,0  
    mov ebx, tableau
boucle1:
    cmp ecx, 10
    je finboucle1
    
    push dword [ebx]
    add ebx, 4
      
    inc ecx
    jmp boucle1
    
    
finboucle1:
    NEWLINE
    mov ecx,0  
    mov ebx, tableau

boucle2:
    cmp ecx, 10
    je finboucle2
    
    pop dword [ebx]
    add ebx, 4
    
    inc ecx
    jmp boucle2
    
finboucle2:


    xor eax, eax
    ret