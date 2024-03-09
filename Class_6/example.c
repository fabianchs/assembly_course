#include <stdio.h>

#define FORMAT_STRING "%s"
#define MESSAGE "Hello, world!\n"

int main(int argc, char *argv[]){
    printf(FORMAT_STRING,MESSAGE);
    return 0;
}

//gcc -E -P example.c

//para transformar mi código a ensamblador
//gcc -S -masm=intel example.c