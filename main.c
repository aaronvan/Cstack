/* running the stack */

#include <stdio.h>
#include <stdlib.h>

#include "stack.h"

int main() {
    struct stack *stk = NULL;
    push(7, &stk);
    push(2, &stk);
    push(9, &stk);
    push(12, &stk);
    push(88, &stk);
    printf("%d\n", pop(&stk));
    printf("%d\n", pop(&stk));
    printf("%d\n", pop(&stk));
    printf("%d\n", pop(&stk));
    printf("%d\n", pop(&stk));

    return EXIT_SUCCESS;
}
