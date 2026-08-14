#include <stdio.h>

int main() {
    printf("3-Address Statements:\n");
    printf("t1 = b * c\n");
    printf("t2 = a + t1\n");
    printf("x  = t2\n\n");

    printf("Target Assembly Code:\n");
    printf("MOV R0, b\n");
    printf("MUL R0, c\n");
    printf("MOV R1, a\n");
    printf("ADD R1, R0\n");
    printf("MOV x, R1\n");
    return 0;
}
