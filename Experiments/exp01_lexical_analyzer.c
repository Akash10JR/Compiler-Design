#include <ctype.h>
#include <stdio.h>
#include <string.h>
int main() {
  char str[] = "int a = 10 ;";
  char buffer[20];
  int i = 0, j = 0;
  printf("Input Code: %s\n\n", str);
  while (str[i] != '\0') {
    if (isalnum(str[i])) {
      buffer[j++] = str[i];
    } else {
      if (j != 0) {
        buffer[j] = '\0';
        j = 0;
        if (strcmp(buffer, "int") == 0 || strcmp(buffer, "float") == 0 ||
            strcmp(buffer, "char") == 0)
          printf("%s -> Keyword\n", buffer);
        else if (isdigit(buffer[0]))
          printf("%s -> Constant\n", buffer);
        else
          printf("%s -> Identifier\n", buffer);
      }
      if (str[i] == '=' || str[i] == '+' || str[i] == '-' || str[i] == '*')
        printf("%c -> Operator\n", str[i]);
    }
    i++;
  }
  return 0;
}