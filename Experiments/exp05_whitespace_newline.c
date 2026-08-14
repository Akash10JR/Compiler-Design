#include <stdio.h>

int main() {
  char str[] = "Hello World\nThis is\tCompiler Lab\n";
  int space = 0, newline = 0;

  for (int i = 0; str[i] != '\0'; i++) {
    if (str[i] == ' ' || str[i] == '\t')
      space++;
    if (str[i] == '\n')
      newline++;
  }

  printf("Whitespaces: %d\nNewlines: %d\n", space, newline);
  return 0;
}
