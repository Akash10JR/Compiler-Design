%{
#include <stdio.h>
#include <stdlib.h>
int a, b;
char op;
%}

%option noyywrap

%%
[0-9]+  {
            if (a == 0) a = atoi(yytext);
            else {
                b = atoi(yytext);
                if (op == '+') printf("Result: %d\n", a + b);
                if (op == '-') printf("Result: %d\n", a - b);
                if (op == '*') printf("Result: %d\n", a * b);
                if (op == '/') printf("Result: %d\n", a / b);
            }
        }
"+"|"-"|"*"|"/" { op = yytext[0]; }
[ \t\n]+        ;
%%

int main() {
    printf("Enter expression (e.g. 10 + 20): ");
    a = 0; b = 0;
    yylex();
    return 0;
}
