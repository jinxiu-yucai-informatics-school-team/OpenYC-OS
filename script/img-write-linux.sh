if [-f "disk1.vhd"]; then
    mv disk1.vhd disk1.img
fi

if [-f "disk2.vhd"]; then
    mv disk2.vhd disk2.img
fi

dd if=boot.bin   of=$DISK1_NAME bs=512 conv=notrunc count=1
dd if=loader.bin of=$DISK1_NAME bs=512 conv=notrunc seek=1