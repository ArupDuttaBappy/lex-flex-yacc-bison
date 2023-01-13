/*anbn0.y */
%{
	#include <stdio.h>
    int yylex();
    int yyerror(const char *);
    extern int yylineno;
    extern FILE* yyin;
%}

%error-verbose
%token A B

%%
program:
	    program anbne '\n' { printf("This is indeed in \"anbn\" language\n"); }
        | program error '\n'
        |   /* null */
        ;
anbne:  /* anbne is an added nonterminal to allow null string followed by a \n */
        anbn
        |
        ; 
anbn:
        A B
	    | A anbn B
        ;
%%

int main(int argc, char *argv[]) {
    if(argc>1)
        {
        yyin = fopen(argv[1],"r");
        if(yyin == 0)
            yyin = stdin;
        }
    else
        yyin = stdin;

    yyparse();
    printf("Done\n");
    return 0;
}

int yyerror(const char *s ) { 
	fprintf( stderr, "String *not* in \"anbn\" language. Enter Cntrl-D (i.e., EOF) to get rid of me.\n");
    return 1;
    }
