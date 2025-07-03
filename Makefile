# Makefile to build Kairo OS bootloader

all: boot

boot:
	nasm -f bin boot.asm -o boot.img

run: boot
	qemu-system-x86_64 -drive format=raw,file=boot.img

clean:
	rm -f boot.img
