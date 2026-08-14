%{
#include <stdio.h>
int consonants = 0;
%}

%option noyywrap

%%
[aeiouAEIOU]    ;
[a-zA-Z]        { consonants++; }
.|\n            ;
%%

int main() {
    printf("Enter sentence: ");
    yylex();
    printf("Number of Consonants: %d\n", consonants);
    return 0;
}
