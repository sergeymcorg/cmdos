section .text
    use16

%include "macros.asm"

ldrmesg: db "lozhkaOS loader", NEWLINE, NEWLINE, 0
int9msg: db "WARN: Keyboard Input", NEWLINE, 0
int0msg: db "ERROR: Divided by 0", NEWLINE, 0
deverrm: db "WARN: Device Error", NEWLINE, 0
outofmm: db "WARN: Out Of Memory", NEWLINE, 0

;help? ?
msghelp: db "help - help", NEWLINE, "wrmm - write to ram", NEWLINE, "rdmm - read ram", NEWLINE, 0  ;тут потом будут описаны команды
cmdline: db "lozhka$ ", 0
