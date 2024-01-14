/*
* Copyright (c) 2024-present Jinxiu Yucai Informatics School Team.
* All rights reserved.
*
* Create Time: 2024/01/14
* Author: xk2013
* E-Mail: hzk201312@163.com
*/

#include "boot.h"

.code16
.text
.global boot

boot:
    mov $0, %ax
    mov %ax, %ds
    mov %ax, %es
    mov %ax, %fs
    mov %ax, %gs
    mov %ax, %ss

    jmp .
    
.section boot_end, "ax"

boot_sig:
    .byte 0x55, 0xaa
