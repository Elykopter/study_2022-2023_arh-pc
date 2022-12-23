%include 'in_out.asm'
SECTION .data
msg: DB 'Вариант 13: (8x + 6) * 10',0
gsm: DB 'Введите значение для x: ',0
rem: DB 'Результат: ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, msg
call sprintLF
mov eax, gsm
call sprintLF

mov ecx, x
mov edx, 80
call sread

mov eax,x
call atoi
mov ebx,8
mul ebx
add eax,6
mov ebx,10
mul ebx
mov edi,eax

mov eax,rem
call sprint
mov eax,edi
call iprintLF

call quit
