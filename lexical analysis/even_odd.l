%{
#include <stdio.h>
int x;
%}

%%
[0-9]+ {
  x = atoi(yytext);
  if(x%2==0){printf("Even");}
  else{printf("Odd");}
}
. {printf("");}
"\n" {printf("\n");}
%%

int yywrap() {}

void main(){
  yylex();
}
