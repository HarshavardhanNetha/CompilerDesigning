%%
^A[a-zA-Z]{2} {printf("%s",yytext);}
. {printf(" ");}
"\n" {printf("\n");}
%%

int yywrap(){}

void main(){
  yylex();
}
