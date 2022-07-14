%%
[0-9]+ {printf("Num");}
"if"|"else" {printf("keyword");}
^[a-zA-Z][a-zA-Z]* {printf("%s",yytext);}
^[^a-zA-Z] {printf("invalid");}
%%

int yywrap(){}

int main(){
	yylex();
}
