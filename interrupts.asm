section .text
    use16

%include "scheduler.asm"

intRet:
    mov al, 0x20
    out 0x20, al
    ; pop cx
    ; pop si
    ; pop ax
    iret
int8:
    ; mov si, int8msg
    ; call puts
    jmp intRet
int9:
    mov si, int9msg
    in al, 60h
    call puts
    jmp intRet
initInt8:
    cli
    
    xor ax, ax
    mov es, ax
    mov word [es:8*4], int8
    mov [es:8*4+2], cs

    xor ax, ax
    mov es, ax
    mov word [es:9*4], int9
    mov [es:9*4+2], cs

    sti
    ret