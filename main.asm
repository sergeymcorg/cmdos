; компиляция: make all
; запуск: make run
section .text
    use16
    org 0x7C00

; void start()
start:
    call initInt8
    mov ax, cs
    mov ds, ax
 
    mov si, message
    call puts
    mov si, cmdmsg0
    call puts
    call cmdLoop
; void cmdLoop()
cmdLoop:
    jmp cmdLoop

%include "std.asm"
%include "text.asm"
%include "interrupts.asm"

finish:
    times 0x1FE-finish+start db 0
    db 0x55, 0xAA