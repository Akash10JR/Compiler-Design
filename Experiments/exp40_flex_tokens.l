%{
#include <stdio.h>
%}

%option noyywrap

%%
"#include".*    { printf("Header: %s\n", yytext); }
"void"|"main"|"int" { printf("Keyword: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("Identifier: %s\n", yytext); }
[0-9]+          { printf("Number: %s\n", yytext); }
\"[^\"]*\"      { printf("String: %s\n", yytext); }
"="|"+"         { printf("Operator: %s\n", yytext); }
"{"|"}"|"("|")"|";"|"," { printf("Separator: %s\n", yytext); }
[ \t\n]+        ;
.               ;
%%

int main() {
    yyin = fopen("sample.c", "r");
    yylex();
    return 0;
}
