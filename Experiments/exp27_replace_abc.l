%{
#include <stdio.h>
%}

%option noyywrap

%%
"abc"   { printf("ABC"); }
.       { putchar(yytext[0]); }
\n      { putchar('\n'); }
%%

int main() {
    printf("Enter string: ");
    yylex();
    return 0;
}
