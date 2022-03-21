section .text
    use16

int8:
    mov si, int8msg
    call puts
    iret
    ret

initInt8:
    xor ax, ax
    mov es, ax
    mov word [es:8*4], int8
    mov [es:8*4+2], cs
    ret