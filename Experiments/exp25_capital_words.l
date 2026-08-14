%{
#include <stdio.h>
%}

%option noyywrap

%%
[A-Z][a-zA-Z]*  { printf("Capital Word: %s\n", yytext); }
.|\n            ;
%%

int main() {
    printf("Enter string: ");
    yylex();
    return 0;
}
