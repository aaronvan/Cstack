/* protoypes */

struct stack {
    int number;
    struct stack *next;
};

void push(int number, struct stack **stk_ptr);
int pop(struct stack **stk_ptr);
