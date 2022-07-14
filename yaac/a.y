%{
#include<stdio.h>
%}
%token ID
%%
A:S {printf("accepted");}
S:S S '+'
 |S S '*'
 |ID;
%%
int main()
{
 	printf("Enter string:");
 	yyparse();
}
void yyerror(char *f)
{
printf("error");
}

