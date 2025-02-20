section .data:
    tablica dd 1, 2, 2, 3, 4, 5, 5
    rozmiar_tablicy equ ($ - tablica) / 4
    buffer times 10 dw 0
    newline db 0xA 

section .bss:
    max resd 1

section .text:
    global _start

_start:
    mov ecx, rozmiar_tablicy
    mov esi, 0
    mov eax, [tablica]

znalezenieElementu:
    cmp eax, [tablica + esi*4]
    jle mniejszyElement
    mov eax, [tablica + esi*4]

mniejszyElement:
    inc esi
    dec ecx
    jnz znalezenieElementu
    ; eax = najwiekszy element na liscie

_end:
    mov ebx, eax
    mov eax, 1   
    int 0x80  



