%{
#include <stdio.h>
%}

%option noyywrap

%%
"int"|"float"|"char"|"if"|"else"|"while"|"for"|"return" { printf("Keyword: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*                                   { printf("Identifier: %s\n", yytext); }
.|\n                                                    ;
%%

int main() {
    printf("Enter code snippet: ");
    yylex();
    return 0;
}
