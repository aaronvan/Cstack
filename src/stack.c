#include <stdio.h>
#include <stdlib.h>

#include "stack.h"

void push(int number, struct stack **stk_ptr) {
    struct stack *stk, *tmp;
    stk = *stk_ptr;
    tmp = malloc(sizeof(struct stack));
    tmp->number = number;
    tmp->next = stk;
    stk = tmp;
    *stk_ptr = stk;
}

int pop(struct stack **stk_ptr) {
    int number;
    struct stack *stk, *tmp;
    stk = *stk_ptr;
    tmp = stk;
    number = tmp->number;
    stk = stk->next;
    free(tmp);
    *stk_ptr = stk;
    return number;
}
