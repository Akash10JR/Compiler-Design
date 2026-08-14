%{
#include <stdio.h>
%}

%option noyywrap

%%
[a-zA-Z0-9._]+@[a-zA-Z0-9.]+\.[a-zA-Z]{2,} { printf("Valid Email\n"); }
.+                                         { printf("Invalid Email\n"); }
\n                                         ;
%%

int main() {
    printf("Enter Email: ");
    yylex();
    return 0;
}
