%{
#include <stdio.h>
int macros = 0, headers = 0;
%}

%option noyywrap

%%
"#define".*     { macros++; printf("Macro: %s\n", yytext); }
"#include".*    { headers++; printf("Header: %s\n", yytext); }
[0-9]+          { printf("Constant: %s\n", yytext); }
.|\n            ;
%%

int main() {
    yyin = fopen("sample.c", "r");
    yylex();
    printf("Macros: %d, Headers: %d\n", macros, headers);
    return 0;
}
