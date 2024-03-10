section .data  
    bNum db 123
    wNum db 12345
    warray time 5 dw 0
    dNum dd 12345 
    dNum dq 12345
    text1 db "abc",0
    qNum dq 3.141592654
    text db "cde",0

section .bss
 bvar resb 1
 dvar resd 1
 wvar resw 10
 qvar resq 3

 section. text
    global main

main:
    push rbp ;push the value of rbp into the stack
    mov rbp, rsp ;move the value of Rsp into rbp
    lea rax, [bNum] ;load the memory address of bNum into Rax
    mov rax, bNum ;load the value stored at bNum into rax
    mov rax, [bNum] ; load the value stored at the memory address stored bnum into rax
    mov [bvar], rax ;Store the value in rax at the memory address of bvar
    lea rax, [bvar] ;Load the memory adress of bvar into rax
    lea rax, [wNum] ;Load the memory address of wNum into rax
    mov rax, [wNum] ;Load the value stored in wNum into rax
    lea  rax,[text1] ;load the memory adrress of text1 into rax
    mov rax, text1 ;Load the memory address of text1 into rax
    mov rax, text1+1 ;load the value at the second character of text 1 into rax
    lea rax, [text1+1] ;Load the memory address of text 1 