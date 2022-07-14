%{
  #include<stdio.h>
  #include"y.tab.h"
  int yylval;
%}
%%
a {return ID;}
. {return  yytext[0];}
[\n] {return 0;}
%%
int yywrap(){}


