#include <stdio.h>
int main() {
  char str[100];
  printf("Enter a line: ");
  fgets(str, sizeof(str), stdin);
  if (str[0] == '/' && str[1] == '/')
    printf("Single line comment\n");
  else if (str[0] == '/' && str[1] == '*')
    printf("Multi line comment\n");
  else
    printf("Not a comment\n");
  return 0;
}