#makefile for hello.asm

hello_1: hello_1.o
	gcc -o hello_1 hello_1.o -no-pie
hello_1.o: hello_1.asm
	nasm -f elf64 -g -F dwarf hello_1.asm -l hello_1.lst