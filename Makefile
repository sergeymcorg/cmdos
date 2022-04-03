OUTPUT=lozhka
FILES=main.asm

clean:
	rm -rfv *.bin *.img
all: clean
	nasm ${FILES} -f bin -o ${OUTPUT}.bin
	# dd if=${OUTPUT}.bin bs=512 of=${OUTPUT}.img
run: all
	qemu-system-x86_64 -fda ${OUTPUT}.bin
egg:
	echo Easter egg!!!