%{
	#include<stdio.h>
%}

%%
"A"[a-zA-Z]{2}" " {printf("%s",yytext);printf(" ");}
. {}
%%

int yywrap(){}

int main(){
	yylex();
	return 0;
}