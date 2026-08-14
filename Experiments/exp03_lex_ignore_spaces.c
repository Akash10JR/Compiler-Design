#include <stdio.h>

int main() {
  char str[] = "int   a  =   5; // comment";
  printf("Original:%s\nClean:", str);
  for (int i = 0; str[i] != '\0'; i++) {
    if (str[i] == '/' && str[i + 1] == '/')
      break;
    if (str[i] != ' ' && str[i] != '\t' && sstr[i] != '\n') {
      printf("%c", str[i]);
    }
  }
  printf("\n");
  return 0;
}
