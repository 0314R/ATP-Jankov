%option noyywrap

%{
int status = -1;
%}

%%

\n									{ ; } //Ignore newlines
"% Status (intuit.) : Theorem"		{ printf("Theorem\n") ; } /*ignore commented lines*/
"% Status (intuit.) : Non-Theorem"	{ printf("\t\t\t\t\t\tNon-Theorem\n") ; } /*ignore commented lines*/
"% Status (intuit.) : Unsolved"		{ printf("\t\t\t\t\t\tUnsolved\n") ; } /*ignore commented lines*/
.*									{ ; } //Ignore all other inputs
%%

int main(int argc, char **argv)
{
	yylex();
    return 0;
}
