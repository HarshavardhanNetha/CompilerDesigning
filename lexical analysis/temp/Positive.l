%{
	#include<stdio.h>
%}

%%
[-+]?[0-9]*\.[0-9]+ {printf("Float");}
[-+]?[0-9]+ {printf("Int");}
. {printf("Invalid");}
%%

int yywrap(){}
int main(){
	yylex();
	return 0;
}

