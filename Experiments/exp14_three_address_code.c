#include <stdio.h>

int main() {
    printf("Input: x = a + b * c\n\n");
    printf("Three Address Code:\n");
    printf("t1 = b * c\n");
    printf("t2 = a + t1\n");
    printf("x  = t2\n");
    return 0;
}
