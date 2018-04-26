section .text
    global _main
_main:
    mov edx, len
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 0x80
    mov eax, 1 ;system call
    int 0x80 ;send the interupt
section .data
msg db 'Hello World from Assembly!', 0xD, 0xA
len equ $ - msg