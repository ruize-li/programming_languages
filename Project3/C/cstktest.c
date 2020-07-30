/**
 * Test code for Stack 
 *
 * Ying Li
 * 08/01/2016
 */

#include "cstk.h"
#include <stdio.h>
#include <stdlib.h>

int main (int argc, char **argv) {
	Stack *s = stk_create(CSTK_MAX);
	
	int i;
	for(i = 0; i < 60; i++) {
		stk_push(s, i);
	} 
	
	printf("The original list: ");
	stk_display(s, 0);
	
	printf("The reversed list: ");
	stk_display(s, 1);
	int ret = stk_peek(s);
	printf("the returned value is %d", ret);
	stk_destroy(s);
	
	return 0;
}