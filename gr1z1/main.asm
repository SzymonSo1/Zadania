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
    jge wiekszyElement
    mov eax, [tablica + esi*4]

wiekszyElement:
    inc esi
    dec ecx
    jnz znalezenieElementu
    ; eax = najwiekszy element na liscie
    mov ebx, 10 
    mov edi, buffer + 9 ; ustawienie pozycji na ostatni bajt
    mov byte [edi], 0   
    dec edi

conv:               ;zamiana na string
    xor edx, edx    ;{
    div ebx
    add dl, '0'
    mov [edi], dl
    dec edi
    test eax, eax   ;}
    jnz conv

    mov eax, 4          ;wypisanie wyniku{
    mov ebx, 1          
    lea ecx, [edi + 1]
    mov edx, buffer + 10
    sub edx, ecx
    int 0x80            
    
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80            ;}

_end:
    mov eax, 1   
    xor ebx, ebx
    int 0x80  



