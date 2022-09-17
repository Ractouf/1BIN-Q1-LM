%INCLUDE    "io.inc"        ; procédures d'input/ouput clavier et écran, voir l'aide (F1) de l'IDE SASM 

SECTION     .bss            ; section pour déclarer des données non initialisées

SECTION     .data           ; section pour déclarer des données initialisées

SECTION     .text           ; section pour écrire du code en langage assembleur
                            ; cette section .text contiendra des instructions écrites en NASM 32 bits
GLOBAL      CMAIN           ; le libellé de début de la programmation dans l'IDE SASM doit être CMAIN avec une portée "publique"
    
CMAIN:                  
            mov     ebp,esp; pour debugging fonctionnel dans l'IDE SASM               

; le libellé CMAIN: est le point d'entrée de notre programme
; écrivez votre instructions en langage assembleur NASM 32 bits
; à partir de la ligne ci-dessous

            mov     eax,0x7  ; changez la valeur de eax pour tester les 3 cas possibles

            cmp     eax,9
            je      casegal ; branche à l'étiquette casegal dans le cas où eax==9
            ja      cassuperieur ; branche à l'étiquette cassuperieur dans le cas où eax>9
            mov     ebx,3  ; cas où eax<9
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