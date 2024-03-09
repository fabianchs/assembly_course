;JE - Jump if equal ZF

section. data  
    value1 db 10
    value2 db 10

section .text  
    global _start


_start 
    mov al, [value1]
    mov bl, [value2]
    cmp al, bl
    je equal_found


not_equal:
    ;your code here for not equal case
    jmp done

equal_found:
    ;code here for equal case

done:
    ;exit code here