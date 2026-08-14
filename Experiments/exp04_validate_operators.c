#include <stdio.h>
int main() {
  char op;
  printf("Enter operator (+, -, *, /): ");
  scanf(" %c", &op);
  if (op == '+' || op == '-' || op == '*' || op == '/')
    printf("Valid Arithmetic Operator: %c\n", op);
  else
    printf("Invalid Operator\n");

  return 0;
}
