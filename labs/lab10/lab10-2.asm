%include 'in_out.asm'

SECTION .data
file db 'name.txt', 0h
msg db 'Как вас зовут?', 0h
imya db 'Меня зовут:',0
SECTION .bss
con resb 2550
SECTION .text
global _start
_start:

mov eax, msg
call sprintLF
mov ecx, con
mov edx, 2550
call sread

mov ecx, 0777o
mov ebx, file
mov eax, 8
int 80h
mov esi, eax
mov eax, imya
call slen

mov edx, eax
mov ecx, imya
mov ebx, esi
mov eax, 4
int 80h
mov eax, con
call slen

mov edx, eax
mov ecx, con
mov ebx, esi
mov eax, 4
int 80h
mov ebx, esi
mov eax, 6
int 80h
call quit

