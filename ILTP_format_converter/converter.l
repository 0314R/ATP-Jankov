%option noyywrap

%{
#include "converter.tab.h"
%}

%%

"%".*	{ ; } /*ignore commented lines*/
[ \t\n]	{ ; }

"("		{ return (*yytext); }
")"		{ return (*yytext); }
","		{ return (*yytext); }
"."		{ return (*yytext); }

"~"		{ return NOT; }
"&"		{ return AND; }
"|"		{ return OR; }
"=>"	{ return IMP; }
"<=>"	{ return BI_IMP; }

"fof("	{ return START; }
"axiom," { return AX; }
"conjecture," { return CON; }
[^ \t\n(),~&|<=>]+ { yylval.id = strdup(yytext); return STRING; /*printf("\"%s\"\n", yytext);*/ }


%%
