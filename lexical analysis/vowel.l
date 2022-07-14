%{
#include <stdio.h>
// we can also write regex as [aeiou]
int vowel_count,con_count;
%}

%%
"a"|"e"|"i"|"o"|"u" {vowel_count++;}
. {con_count++;}
"\n" {printf("Vowels: %d\nConsonants: %d\n",vowel_count,con_count); vowel_count=0;con_count=0;}
%%

int yywrap(){}

int main(){
  yylex();
}

