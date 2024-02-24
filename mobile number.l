%{
#include <stdio.h>
%}

DIGIT [0-9]
ALPHA [A-Za-z]

%%
^(\+91|0)?[789][0-9]{9}$    printf("Valid mobile number: %s\n", yytext);
^.*$                         printf("Invalid mobile number: %s\n", yytext);
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}
