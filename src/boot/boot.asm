; Copyright (C) 2024-present Jinxiu Yucai Informatics School Team
;
; This program is free software: you can redistribute it and/or modify
; it under the terms of the GNU Affero General Public License as published
; by the Free Software Foundation, either version 3 of the License, or any
; later version.
;
; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU Affero General Public License for more details.
;
; You should have received a copy of the GNU Affero General Public License
; along with this program.  If not, see <https://www.gnu.org/licenses/>.
;
; CREATE TIME: 2024/01/19
; AUTHOR: xk2013
; E-MAIL: hzk201312@163.com
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
    mov bp, message
    int 0x10

    ; 重置软盘
    xor ah, ah
    xor dl, dl
    int 0x13

    hlt

message:
    db "Loading System Loader... "
    db 0x0d
    db 0x0a
    db "Error: Can't Find Kernel."

    times 510 - ($ - $$) db 0x00
    db 0x55
    db 0xaa
