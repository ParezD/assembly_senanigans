
global _start

section .text

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, text
    mov rdx, text_len

    syscall 

    mov rax, 60
    mov rdi, 0

    syscall


section .data
    text: db "Hello world!", 10
    text_len equ 13

