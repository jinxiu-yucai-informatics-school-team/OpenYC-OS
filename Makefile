ASMARGS = 
GCCARGS =
GPPARGS =
LNKARGS = 

OBJECTS = lib/boot/boot.o

lib/boot/%.o: %.asm
	as $(ASMARGS) -o $c

