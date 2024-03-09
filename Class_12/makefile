jumping: jumping.o
	gcc -o jumping jumping.o -no-pie

jumping.o: jumping.asm
	nasm -f elf64 -g jumping.asm -o jumping.o -l jumping.lst
