/* anbn0.l */
%{
    #include "y.tab.h"
    void yyerror(const char *);
%}

%option yylineno noyywrap

%%
a 	return (A);
b 	return (B);
\n  return ('\n');
. 	return (yytext[0]);
%%

/*int yywrap() { 
	yyin = stdin; 
    return 1; 
} */

