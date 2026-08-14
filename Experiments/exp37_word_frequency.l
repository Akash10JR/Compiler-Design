%{
#include <stdio.h>
#include <string.h>
char word[20] = "compiler";
int freq = 0;
%}

%option noyywrap

%%
[a-zA-Z]+ { if (strcmp(yytext, word) == 0) freq++; }
.|\n      ;
%%

int main() {
    printf("Searching frequency of '%s'. Enter text: ", word);
    yylex();
    printf("Frequency of '%s': %d\n", word, freq);
    return 0;
}
