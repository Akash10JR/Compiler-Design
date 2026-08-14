#include <stdio.h>
int main() {
    printf("Grammar:\nE -> E + T | T\nT -> T * F | F\nF -> ( E ) | id\n\n");
    printf("TRAILING(F) = { ), id }\n");
    printf("TRAILING(T) = { *, ), id }\n");
    printf("TRAILING(E) = { +, *, ), id }\n");
    return 0;
}
