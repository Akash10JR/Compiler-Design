%{
#include <stdio.h>
int pos = 0, neg = 0;
%}

%option noyywrap

%%
\+?[0-9]+   { pos++; }
-[0-9]+     { neg++; }
.|\n        ;
%%

int main() {
    printf("Enter numbers: ");
    yylex();
    printf("Positive: %d, Negative: %d\n", pos, neg);
    return 0;
}
