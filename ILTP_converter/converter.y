
%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int yylex(void);
int yyerror(char* s);

char* concat(const char *s1, const char *s2)
{
    char *result = malloc(strlen(s1) + strlen(s2) + 1); // +1 for the null-terminator
    if(malloc == NULL)
		printf("Malloc failed!\n");

    strcpy(result, s1);
    strcat(result, s2);
    return result;
}

char* doubleConcat(const char *s1, const char *s2, const char *s3)
{
    char *result = malloc(strlen(s1) + strlen(s2) + strlen(s3) + 1); // +1 for the null-terminator
    if(malloc == NULL)
		printf("Malloc failed!\n");

    strcpy(result, s1);
    strcat(result, s2);
    strcat(result, s3);
    return result;
}

%}

%union { int num; char *id; }
%type <id> axioms axiom conjecture formula literal term beginAx beginCon end

%token COMMENT START AX CON
%token NOT OR BI_IMP IMP
%token <id> STRING

%nonassoc NOT
%right AND
%right OR
%right IMP
%nonassoc BI_IMP

%%

input: conjecture { printf("%s", $1); }
| axioms conjecture { printf("%s\n   => %s", $1, $2); }
;

axioms: axiom { $$ = $1; }
| axioms axiom { $$ = doubleConcat($1, "\n   & ", $2); }
;

axiom: beginAx formula end { $$ = $2; }
;

conjecture: beginCon formula end { $$ = $2; }
;

formula: literal
| NOT '(' formula ')' { /*printf("~\n");*/ $$ = doubleConcat("((", $3, ")=>\'#\')"); }
| '(' formula ')' { /*printf("( )\n");*/ $$ = doubleConcat("(", $2, ")"); }
| formula AND formula { /*printf("and\n");*/ $$ = doubleConcat($1, "&", $3); }
| formula OR formula { /*printf("or\n");*/ $$ = doubleConcat($1, "/", $3); }
| formula IMP formula { /*printf("imp\n");*/ $$ = doubleConcat($1, "=>", $3); }
| formula BI_IMP formula { /*printf("bimp\n");*/ $$ = doubleConcat($1, "<=>", $3); }
;

beginAx: START term ',' AX { $$ = doubleConcat("fof(",$2,",axiom,"); /*printf("fof(%s,axiom,", $2);*/ }
;

beginCon: START term ',' CON { $$ = doubleConcat("fof(",$2,",conjecture,");  /*printf("fof(%s,conjecture,", $2);*/ }
;

literal: term
| NOT literal { /*printf("~\n");*/ $$ = doubleConcat("(", $2, "=>\'#\')");}
;

term: STRING { /*printf("%s", $1)*/; }
;

end: ')' '.' { $$ = (")."); /*printf(").\n")*/; }
;


%%

int main(int argc, char **argv)
{
	printf("?- test(");
    yyparse();
	printf(").\n?- halt.\n");

    return 0;
}

int yyerror(char *s)
{
    fprintf(stderr, "error: %s\n", s);

	return 0;
}
