%{
#include <stdio.h>
%}

%option noyywrap

%%
"<"[^>]+">"     { printf("HTML Tag: %s\n", yytext); }
.|\n            ;
%%

int main() {
    yyin = fopen("sample.html", "r");
    yylex();
    return 0;
}
