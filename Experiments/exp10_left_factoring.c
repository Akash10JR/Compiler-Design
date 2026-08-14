#include <stdio.h>

int main() {
    printf("Grammar:\nS -> iEtS | iEtSeS | a\nE -> b\n\n");
    printf("After Eliminating Left Factoring:\n");
    printf("S  -> iEtS S' | a\n");
    printf("S' -> eS | e\n");
    printf("E  -> b\n");
    return 0;
}
