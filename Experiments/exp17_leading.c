#include <stdio.h>

int main() {
    printf("Grammar:\nE -> E + T | T\nT -> T * F | F\nF -> ( E ) | id\n\n");
    printf("LEADING(F) = { (, id }\n");
    printf("LEADING(T) = { *, (, id }\n");
    printf("LEADING(E) = { +, *, (, id }\n");
    return 0;
}
