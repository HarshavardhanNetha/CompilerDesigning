%{
#include <stdio.h>
int float_n, int_n;
%}

%%
[+-]?([0-9]*[.][0-9]+) {float_n++;}
[+-]?([0-9]*) {int_n++;}
"\n" {printf("Integers: %d\nFloat: %d",int_n,float_n); int_n=0;float_n=0;}
%%

int yywrap(){ };

void main(){
  yylex();
}
