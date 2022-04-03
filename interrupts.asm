section .text
    use16

%include "scheduler.asm"

intRet:
    mov al, 0x20
    out 0x20, al
    pop ax
    iret
int9:
    push ax
    in al, 60h
    call putc
    jmp intRet
int0:
    mov si, int0msg
    call puts
    jmp intRet
initInt8:
    cli

    xor ax, ax
    mov es, ax
    mov word [es:9*4], int9
    mov [es:9*4+2], cs

    xor ax, ax
    mov es, ax
    mov word [es:0*4], int0
    mov [es:0*4+2], cs

    sti
    ret