calculator: calculator.o
	gcc -o calculator calculator.o -no-pie

calculator.o: calculator.asm
	nasm -f elf64 -g calculator.asm -o calculator.o -l calculator.lst
