; boot.asm -First bootloader
[org 0x7c00]       ; BIOS loads this at 0x7C00
mov ah, 0x0E       ; BIOS teletype function (print char)

print:
    mov si, message
.loop:
    lodsb           ; Load next byte from message into AL
    or al, al       ; Check for null (0)
    jz halt
    int 0x10        ; Print character in AL
    jmp .loop

halt:
    jmp $

message db "Welcome to KairoOS!", 0
times 510 - ($ - $$) db 0   ; Pad boot sector to 510 bytes
dw 0xAA55                   ; Bootable disk signature
