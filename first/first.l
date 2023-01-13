/* lex program to recognize keywords, numbers, words etc. */

%{
#include<stdio.h>
%}

%%

for | else | if | while | int | float | printf | scanf | double {printf("%s is a keyword\n", yytext);}
[0-9]+ {printf("%s is a number\n", yytext);}
[a-zA-Z]+ {printf("%s is a random word\n", yytext);}
.|\n {ECHO;}

%%

int main()
{
	printf("\n Enter string: ");
	yylex();
}

int yywrap()
{
	return 1;
}
