%{
#include <stdio.h>
int c = 0, w = 0, l = 0;
%}
%option noyywrap
%%
\n          { l++; c++; }
[ \t]+      { c += yyleng; }
[a-zA-Z0-9_]+ { w++; c += yyleng; }
.           { c++; }
%%
int main() {
    yyin = fopen("sample.c", "r");
    yylex();
    printf("Characters: %d\nWords: %d\nLines: %d\n", c, w, l);
    return 0;
}