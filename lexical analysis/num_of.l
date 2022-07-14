%{
#include <stdio.h>
int words, chars, lines; 
%}

%%
" "+ {words++;}
"\n" {lines++; words++;}
[a-zA-Z] {chars++;}
"$"  {lines++; printf("Words: %d\nLines: %d\nChars: %d\n",words,lines,chars);words=0;lines=0;chars=0;}

%%

int yywrap(){}

int main(){
  yylex();

}
