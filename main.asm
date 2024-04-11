
global _start

section .text

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, text
    mov rdx, text_len
    syscall

    mov rax, 0
    mov rdi, 0
    mov rsi, text
    mov rdx, text_len
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, text
    mov rdx, text_len
    syscall 

    mov rax, 60
    mov rdi, 0

    syscall


section .data
    text: db "What do you want to print?"
    text_len equ 64


zero_it:
    

