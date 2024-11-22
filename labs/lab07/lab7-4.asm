%include 'in_out.asm'

section .data
greetx: db 'Введите значение x:',0
greeta: db 'Введите значение a:',0

section .bss
x: resb 80
a: resb 80

section .text
global _start
_start:
 mov eax, greetx
 call sprintLF
 mov ecx, x
 mov edx, 80
 call sread
 mov eax, greeta
 call sprintLF

mov ecx, a
mov edx, 80
call sread

mov eax, x
call atoi
cmp eax, 5
jl _witha
sub eax, 5
call iprint
call quit

_witha:
push eax
mov eax, a
call atoi
pop ebx
mul ebx
call iprintLF
call quit
