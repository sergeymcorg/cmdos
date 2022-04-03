; компиляция: make all
; запуск: make run
section .text
    use16
    org 0x7C00

; void start()
start:
    ; call printNumber
    pushf
    call initInt8
    mov ax, cs
    mov ds, ax
 
    mov si, ldrmesg
    call puts
    mov si, cmdline
    call puts

%include "std.asm"
%include "text.asm"
%include "interrupts.asm"

finish:
    times 0x1FE-finish+start db 0
    db 0x55, 0xAA