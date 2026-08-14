#include <stdio.h>
#include <ctype.h>

int main() {
    char str[50];
    int i = 0, valid = 1;

    printf("Grammar:\n");
    printf("E -> TE'\nE' -> +TE' | e\nT -> FT'\nT' -> *FT' | e\nF -> (E) | id\n\n");
    printf("Enter input string: ");
    scanf("%s", str);

    while (str[i] != '\0') {
        if (isalnum(str[i]) || str[i] == '+' || str[i] == '*' || str[i] == '(' || str[i] == ')') {
            i++;
        } else {
            valid = 0;
            break;
        }
    }

    if (valid)
        printf("String ACCEPTED\n");
    else
        printf("String REJECTED\n");

    return 0;
}
