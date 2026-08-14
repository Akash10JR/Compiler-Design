%{
#include <stdio.h>
int comments = 0;
%}
%option noyywrap
%%
"//".*          { comments++; }
"/*"[^"*"]*"*/" { comments++; }
.|\n            { putchar(yytext[0]); }
%%
int main() {
    yyin = fopen("input.c", "r");
    yylex();
    printf("\nTotal comments removed: %d\n", comments);
    return 0;
}