SECTION .data
	hello: DB "Филипп Пателепень",0xa
		helloLen: EQU $-hello
	
SECTION .text  
	GLOBAL _start
_start:
	mov eax,4
	mov ebx,1
	mov ecx,hello
	mov edx,helloLen
	int 0x80
	
	mov eax,1
	mov ebx,0
	int 0x80

