/* lex program to identify all-capital words from a sentence */

%{
#include<stdio.h>
%}

%%

[A-Z]+[ \t\n] {printf("%s\n", yytext);}
. ;

%%

int main()
{
	printf("Enter a sentence: \n");
	yylex();
}

int yywrap()
{
	return 1;
}
