section .data:
    startingText1 db "Witaj w kalkualtorze, wybierz instrukcje:", 0x0A, 0
    addText db "+", 0x0A, 0
    subText db "-", 0x0A, 0
    startLen equ $ - startingText1
    oplen equ $ - addText
    Liczby db "Podaj liczby: ", 0
    len_Li equ $ - Liczby

section .text
    global add
    global sub
    extern start 
    extern wypiszPobranieLiczby

add:
    mov eax, [esp+4]
    add eax, [esp+8]        
    ret      
           
sub:
    mov eax, [esp+4]
    sub eax, [esp+8]        
    ret 

start: 
    mov eax, 4
    mov ebx, 1
    mov ecx, startingText1
    mov edx, startLen
    int 0x80
    mov ecx , addText
    mov edx, oplen
    int 0x80
    mov ecx, subText
    mov edx, oplen
    ret

wypiszPobranieLiczby:
    mov eax, 4 
    mov ebx, 1
    mov ecx, Liczby
    mov edx, len_Li
    int 0x80
    ret
