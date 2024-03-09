;jumping.asm - Exploring conditional jums

extern printf ;declare the external function printf

section .data    
    number1 dq 42 ;defining a variable number1 with the value 42
    number2 dq 41 ;defining the variable number2 with the value 41
    fmt1 db "NUMBER1>=NUMBER2", 10, 0 ;Format string for comparison result 1
    fmt2 db "NUMBER1<NUMBER2", 10, 0 ;Format string for comparison result 2

section .text

global main

main: 
    push rbp ;save the base pointer
    mov rbp, rsp ;set up the base pointer
    mov rax, [number1] ;load the value of number1 into register RAC
    mov rbx, [number2] ;load the value of number2 into register RBX
    cmp rax, rbx ; using for comparing the values in rax and rbx
    jge greater ;jump to "grater" if rax is greater than rbx
    mov rdi, fmt2 ;loading the format string for the second message
    mov rax, 0 ;clearing rax no xmn resister involver
    call printf ;calls printf to display "n1 less than n2"
    jmp exit ;jump to the exit lable

greater:
    mov rdi, fmt1 ;load the format string for the first message
    mov rax, 0 ;clearing the RAX again
    call printf ;call print f to display n1 greater than n2

exit:
    mov rsp, rbp ;restoring the stack pointer
    pop rbp ;restoring the base pointer
    ret ;return from the main function