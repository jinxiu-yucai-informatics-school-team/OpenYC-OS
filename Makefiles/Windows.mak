#
# Copyright (c) 2024-present Jinxiu Yucai Informatics School Team
# All rights reserved.
#
# Create Time: 2024/01/19
# Author: xk2013
# E-Mail: hzk201312@163.com
#

DD = dd

NASM = nasm
AS64 = as
CCCC = gcc
CXXC = g++
ECHO = echo

OBJCOPY = objcopy
OBJDUMP = objdump
READELF = readelf

BINARYS = build/boot/boot.bin
OBJECTS = 

all: buildImage
	@$(ECHO) "[*] BUILD SUCCESSFUL"

clean:
	@del -f build

buildImage: $(BINARYS)
	@$(DD) if=$(BINARYS) of=build/image/OpenYC-OS.img bs=512 count=1 conv=notrunc

build/boot/%.bin: src/boot/%.asm init
	@$(NASM) $< -o $@

init:
	@bash script/init/windows.sh