/**
 * FA19
 * CS333
 * Project 3
 * Ruize Li
 * Extension 7
 * demonstrates that function is a data type in C
 */
#include <stdio.h>

int func(){
    return 100;
}

int main(int argc, char **argv)
{
	//make a variable holding a function
    int a = func();
    printf("a is %d\n", a);
    
}