;kicking.asm

section .data 
    msg1 db "Hello world", 10,0 ;string with NL and zero
    msg1Len equ $-msg1-1  ;measuring the length of msg1, minus the 0
    msg2 db "Kicking and alive!", 10,0 ;10 for NL and cero, for finishing the text
    msg2Len equ $-msg2-1 ;measure the len of msg2, minus the 0
    radius dq 357 ; no string, not displayable
    pi dq 3.14 ;no string, not displayable

section .bss

section .text
    global main

main: 
    push rbp ;function prologue
    mov rbp, rsp ; function prologue
    mov rax, 1  ; 1=write
    mov rdi, 1 ;1= write on console to stdout
    mov rsi, msg1 ;string to display
    mov rdx, msg1Len ;length of the string
    syscall ;display the screen
    mov rax, 1 ;1 write
    mov rdi, 1 ;to stdout
    mov rsi, msg2 ;string to display
    mov rdx, msg2Len ;length of the string
    syscall     ;display the second string
    mov rsp, rbp ;function epilogue
    pop rbp     ;function epilogue
    mov rax, 60 ; 60=exit
    mov rdx, 0 ;0=succcess exit code
    syscall