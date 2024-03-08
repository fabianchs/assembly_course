section .data ;used to declare the data sections into the program
    ;db=data bytes
    hello db "Hello, World", 0 ;Null-terminated string

section .text
    global _start ;the entry point of our application

_start:
    ; Write Hello world to stdout(file descriptor 1)
    mov rax, 1 ;syscall number for sys_write
    mov rdi, 1 ; file descriptor 1(stdout)
    mov rsi, hello ; pointer to the string to write 
    mov rdx, 13 ; length of the string
    syscall ;invoke the systemcall

    ;Exit the program

    mov rax, 60 ;syscall number for sys_exit
    xor rdi, rdi ;return code 0
    syscall  ;invoke the systemcall

