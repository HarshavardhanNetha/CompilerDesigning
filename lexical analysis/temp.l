
%%
[0-9]+ {printf("Phone number");}
[^0-9] {printf("Phone NUmb 2");}

%%

int yywrap(){}

int main(){
  yylex();
}

