;JG Jump ig greater

;SF (Sign Flag)

section .data   
    value db 30
    value db 20

section .text   
    global _start

start:
    mov al, byte[value1]
    mov bl, byte[value2]

    cmp al, bl
    jg greater

not_greater:
    ;code here for not greater case
    jmp done

greater:
    ;code of greater

done:
    ;exit code here
    mov rax, 60
    xor rdi, rdi
    syscall