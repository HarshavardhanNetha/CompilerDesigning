NUM [0-9]+

%%
NUM {printf("Num");}
%%

int yywrap(void){}

int main(){
	yylex();
}
