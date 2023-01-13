/* lex program to count the number of vowels and consonants from given string */

%{
#include<stdio.h>
int v= 0, c = 0;
%}

%%

[ \t\n]+ ;
[aeiouAEIOU] {v++;}
[^aeiouAEIOU] {c++;}

%%

int main()
{
	printf("Enter a word/sentence: ");
	yylex();
	printf("Number of vowels: %d\n", v);
	printf("Number of consonants: %d\n", c);
}

int yywrap()
{
	return 1;
}

