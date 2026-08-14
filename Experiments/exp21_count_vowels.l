%{
#include <stdio.h>
int vowels = 0;
%}
%option noyywrap
%%
[aeiouAEIOU]    { vowels++; }
.|\n            ;
%%
int main() {
    printf("Enter sentence: ");
    yylex();
    printf("Number of Vowels: %d\n", vowels);
    return 0;
}
