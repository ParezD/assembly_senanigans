
global _start

section .text

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, ask
    mov rdx, asklen
    syscall ;asks what do I wanna print

    mov rax, 0
    mov rdi, 0
    mov rsi, readtext
    mov rdx, text_len
    syscall ;reads the input

    mov rax, 1
    mov rdi, 1
    mov rsi, readtext
    mov rdx, text_len
    syscall ;prints the given input



    mov rax, 60
    mov rdi, 0
    syscall


section .data
    ask: db "What do you want to print?", 10
    asklen equ $-ask 
    readtext: db ""
    text_len equ 64 ;max 64 characters


zero_it:
    

