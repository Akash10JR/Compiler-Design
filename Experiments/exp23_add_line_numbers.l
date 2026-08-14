%{
#include <stdio.h>
int line = 1;
%}

%option noyywrap

%%
^.*     { printf("%d: %s", line++, yytext); }
\n      { printf("\n"); }
%%

int main() {
    yyin = fopen("sample.c", "r");
    yylex();
    return 0;
}
