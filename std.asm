section .text
    use16

; void rpush()
rpush:
    push ax
    push bx
    push cx
    push dx
    ret
; void rpop()
rpop:
    pop dx
    pop cx
    pop bx
    pop ax
    ret

; ; void printNumber(uint16_t number, char newline)
; printNumber:
;     push ax
;     ret

; void puts(const char *message)
puts:
    cld
    mov ah, 0x0E
    mov bh, 0x00
    lodsb
    test al, al
    jz puts_exit
    int 0x10
    jmp puts
puts_exit: ret
putc:
    mov ah, 0x0E
    mov bl, 0
    mov bh, 0
    int 0x10
    ret
reboot:
    popf
    int 0x19