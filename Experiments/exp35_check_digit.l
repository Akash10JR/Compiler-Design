%{
#include <stdio.h>
%}

%option noyywrap

%%
^[0-9]$ { printf("It is a Single Digit\n"); }
^[0-9]+$ { printf("It is a Number (Digits)\n"); }
.+       { printf("Not a Digit\n"); }
\n       ;
%%

int main() {
    printf("Enter character/digit: ");
    yylex();
    return 0;
}
