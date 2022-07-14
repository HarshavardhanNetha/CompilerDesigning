%{
	#include<stdio.h>
	
%}

%%
[\*\(\)#$%&@!^\/+-<>=\{\}] {printf("SpecialChar ");}
"int"|"char"|"if"|"else" {printf("Keyword ");}
[a-zA-Z]+ {printf("Identifier ");}
[0-9]* {printf("Number ");}
[0-9]*[.][0-9]+ {printf("Float ");}
\/\/(.*) {}
\/\*(.|"\n")*\*\/ {}
%%

int yywrap(){}
int main(){	
	extern FILE *yyin;
	yyin = fopen("Hello.c","r");
	//char c = fgetc(yyin);
	//while(c!= EOF){printf("%c", c); c = fgetc(yyin); }
	yylex();
	return 0;
}

