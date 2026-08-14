%{
#include <stdio.h>
%}

%option noyywrap

%%
(http|https):\/\/[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}.* { printf("Valid URL\n"); }
.+                                              { printf("Invalid URL\n"); }
\n                                              ;
%%

int main() {
    printf("Enter URL: ");
    yylex();
    return 0;
}
