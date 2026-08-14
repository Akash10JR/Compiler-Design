%{
#include <stdio.h>
#include <string.h>
%}

%option noyywrap

%%
"hello" { printf("WELCOME"); }
.       { putchar(yytext[0]); }
\n      { putchar('\n'); }
%%

int main() {
    yyin = fopen("sample.c", "r");
    yylex();
    return 0;
}
