%{
#include<stdio.h>
#include<stdlib.h>
%}

%token A B

%%

start: S '\n' {return 0;}
S: A S B
| ;

%%

int main()
{
	printf("Enter string: \n");
	yylex();
	if(yyparse() == 0)
	{
		printf("Valid String\n");
	}
	
}

int yyerror()
{
	printf("Invalid string\n");
	exit(0);
}

int yywrap()
{
	return 1;
}
