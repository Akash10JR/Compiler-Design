%{
#include <stdio.h>
#include <string.h>
int max_len = 0;
char longest[50];
%}

%option noyywrap

%%
[a-zA-Z]+ {
            if (yyleng > max_len) {
                max_len = yyleng;
                strcpy(longest, yytext);
            }
          }
.|\n      ;
%%

int main() {
    printf("Enter sentence: ");
    yylex();
    printf("Longest Word: %s (Length: %d)\n", longest, max_len);
    return 0;
}
