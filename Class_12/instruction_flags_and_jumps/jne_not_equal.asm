section .data
    value1 db 10
    value2 db 20

section .text 
    global _start

_start:
    mov al, byte[value1]
    mov bl, byte[value2]
    cmp al, bl

    jne not_equal

equal:
    ;code for equal case

not_equal:
    ;code for not equal case

done:
    ;exit code here
    mov rax 60
    xor rdi, rdi
    syscall