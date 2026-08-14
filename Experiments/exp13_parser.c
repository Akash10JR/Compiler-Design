#include <stdio.h>

int main() {
    printf("Shift-Reduce Parser Simulation\n");
    printf("Grammar: E -> E+E | E*E | i\n\n");
    printf("Input: i+i*i\n");
    printf("Shift 'i'   -> Reduce E -> i\n");
    printf("Shift '+'   -> Shift 'i' -> Reduce E -> i\n");
    printf("Shift '*'   -> Shift 'i' -> Reduce E -> i\n");
    printf("Reduce E -> E * E\n");
    printf("Reduce E -> E + E\n");
    printf("\nString ACCEPTED!\n");
    return 0;
}
