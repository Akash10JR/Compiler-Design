%{
#include <stdio.h>
%}

%option noyywrap

%%
"#include".*    { printf("%s -> Preprocessor Directive\n", yytext); }
"void"|"main"|"int" { printf("%s -> Keyword\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("%s -> Identifier\n", yytext); }
[0-9]+          { printf("%s -> Constant\n", yytext); }
\"[^\"]*\"      { printf("%s -> String Literal\n", yytext); }
"="|"+"         { printf("%s -> Operator\n", yytext); }
"{"|"}"|"("|")"|";"|"," { printf("%s -> Separator\n", yytext); }
[ \t\n]+        ;
.               ;
%%

int main() {
    yyin = fopen("sample.c", "r");
    yylex();
    return 0;
}
