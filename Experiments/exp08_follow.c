#include <stdio.h>

int main() {
    printf("Grammar:\nS -> AaAb | BbBa\nA -> e\nB -> e\n\n");
    printf("FOLLOW(S) = { $ }\n");
    printf("FOLLOW(A) = { a, b }\n");
    printf("FOLLOW(B) = { a, b }\n");
    return 0;
}