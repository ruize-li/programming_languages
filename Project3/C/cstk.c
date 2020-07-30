/**
 *  FA19 CS333
 *  Ruize Li
 *  01/10/19
 *  implementing stack in C using cstk.h header file
 */

#include <stdio.h>
#include <stdlib.h>
#include "cstk.h"

// specify the capacity of stack as a global variable
int CSTK_MAX = 50;

// create a stack with specified size
Stack *stk_create(int size){
    Stack *stk;
    stk = (Stack*)malloc(sizeof(Stack));
    stk->stack = (int*)malloc(sizeof(int)*size);
    stk->top = -1;
    return stk;
}

// recycles a stack
void stk_destroy(Stack* s){
    free(s->stack);
    free(s);
}
// adds an item on the top of the stack
void stk_push(Stack* s, int value){
    s->stack[++(s->top)] = value;
}

// pops up an item from the top of the stack
int stk_pop(Stack* s){
    return s->stack[(s->top)--];
}

// prints out the list in the reverse order
// if the int value is 1, otherwises prints our in the original order
void stk_display(Stack* s, int value){
    if(value == 1){
        for(int i = 0; i <= s->top; i++){
            printf("%d\n", s->stack[i]);
        }
    }
    else{
        for(int i = s->top; i >= 0; i--){
            printf("%d\n", s->stack[i]);
        }
    }
}

 
