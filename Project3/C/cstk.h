/**
 *  Language C: the Header file. Build a struct to include the structure and the member
 *  functions.
 *  FA19 CS333
 *  Ruize Li
 *  01/10/19
 */
 
 //Build a struct with a pointer to indicate the elements in the stack and a integer 
 //top to save the position of the top element in the stack

typedef struct stack {
    int* stack;
    int top;
} Stack;
extern int CSTK_MAX;
Stack *stk_create(int);
void stk_destroy (Stack*);
void stk_push(Stack*, int);
int stk_pop(Stack*);
void stk_display(Stack*, int);
int stk_peek(Stack*);





