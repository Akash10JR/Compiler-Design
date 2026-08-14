%{
#include <stdio.h>
%}

%option noyywrap

%%
(0[1-9]|[12][0-9]|3[01])\/(0[1-9]|1[0-2])\/[12][0-9]{3} { printf("Valid DOB (DD/MM/YYYY)\n"); }
.+                                                       { printf("Invalid DOB Format\n"); }
\n                                                       ;
%%

int main() {
    printf("Enter DOB (DD/MM/YYYY): ");
    yylex();
    return 0;
}
