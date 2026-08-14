#include <stdio.h>

int main() {
  printf("Grammar:\nS -> AaAb | BbBa\nA -> e\nB -> e\n\n");
  printf("FIRST(S) = { a, b }\n");
  printf("FIRST(A) = { e }\n");
  printf("FIRST(B) = { e }\n");
  return 0;
}
