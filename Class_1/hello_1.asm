section .data   
    msg db "hello world", 0

section .bss

section .text
    global main

main:
    mov rax, 1 ; 1 write
    mov rdi, 1 ;stdout
    mov rsi, msg ; string to display in rsi
    mov rdx, 11 ; length of the string
    syscall ;display the string

    mov rax, 60  ;Exit CODE
    mov, rdi, 0 ;0: success exit code
    syscall ;quit

    
