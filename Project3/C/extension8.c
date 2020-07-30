/**
 *  FA19 CS333
 *  Ruize Li
 *  01/10/19
 *  Extension 8
 *  Handling overflow for stacks in C
 */

#include <stdio.h>
#include <stdlib.h>
#include "cstk.h"

int CSTK_MAX = 50;

//create a stack
Stack *stk_create(int size){	
	Stack *stk;
	stk = (Stack*)malloc(sizeof(Stack));
	stk->stack = (int*)malloc(sizeof(int)*size);
	stk->top = -1;
	return stk;

}

//recycles a stack
void stk_destroy (Stack* s){
	free(s->stack);
	free(s);
	
}

//adds a new value to the top of the stack
// handles overflow by copying data to a new 
// stack with doubled size of length
void stk_push(Stack* s, int value){
    s->stack[++(s->top)] = value;
   int length = (int)(sizeof(s->stack)/sizeof(s->stack[0]));
    if (s->top == length-1){
        Stack *a = stk_create(length*2);
        for (int i = 0; i < (s->top)+1 ; i++){
            a->stack[i] = s->stack[i];
        }
        s = a;  
    }
    

}

//removes a value from the top of the stack
int stk_pop(Stack* s){
	return s->stack[(s->top)--];
}

//prints out the list in the reverse order if the int value is 1, otherwise, 
//prints out in the original order
void stk_display(Stack* s, int value){
	if (value == 1){
		for (int i = 0; i <= s->top; i++){
			printf("%d\n", s->stack[i]);
		}
	}
	else{
		for (int i = s->top; i >= 0; i--){
			printf("%d\n", s->stack[i]);
		}
	
	}
}

int stk_peek(Stack* s){
    int ret =  s->stack[(s->top)--];
    return ret;
}