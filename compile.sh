#/usr/bin/sh
nasm -f aout -o start.o start.s
gcc -Wall -O -fstrength-reduce -fomit-frame-pointer -finline-functions -nostdinc -fno-builtin -I./include -c -m32 -o main.o main.c
ld -T link.ld -melf_i386 -o kernel.bin start.o main.o
