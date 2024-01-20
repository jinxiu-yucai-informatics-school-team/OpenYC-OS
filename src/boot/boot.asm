;
; Copyright (c) 2024-present Jinxiu Yucai Informatics School Team
; All rights reserved.
;
; Create Time: 2024/01/19
; Author: xk2013
; E-Mail: hzk201312@163.com
;

org 0x7c00

start:
    ; 初始化段寄存器
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, 0x7c00

    ; 清空屏幕
    mov ax, 0x0600
    int 0x10

    ; 设置光标
    mov ax, 0x0200
    mov bx, 0x0000
    mov dx, 0x0000

    ; 显示
    mov ax, 0x1301
    mov bx, 0x000f
    mov cx, 52
    mov dx, ds
    mov es, dx
    mov dx, 0x0000
    mov bp, StartBootMessage
    int 0x10

    ; reset floppy
    xor ah, ah
    xor dl, dl
    int 0x13

    hlt

StartBootMessage:
    db "Loading System Loader... "
    db 0x0d
    db 0x0a
    db "Error: Can't Find Kernel."

    times 510 - ($ - $$) db 0x00
    db 0x55
    db 0xaa
