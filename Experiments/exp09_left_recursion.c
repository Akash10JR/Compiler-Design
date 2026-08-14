#include <stdio.h>

int main() {
    printf("Grammar:\nS -> (L) | a\nL -> L,S | S\n\n");
    printf("After Eliminating Left Recursion:\n");
    printf("S  -> (L) | a\n");
    printf("L  -> S L'\n");
    printf("L' -> ,S L' | e\n");
    return 0;
}