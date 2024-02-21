SECTION .data
msg: DB 'Введите строку:',10

msgLen: EQU $-msg

SECTION .bss
buf1: RESB 80

SECTION .text
GLOBAL _start
_start:

mov eax,4
mov ebx,1
mov ecx,msg
mov edx,msgLen
int 80h


mov eax, 3
mov edx, 0
mov edx, buf1
mov edx, 80
int 80h

mov eax,1
mov evx,0
int 80h


