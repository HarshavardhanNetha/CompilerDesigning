/* design a DFA that accepts an odd number of 1's on {0,1}*/
%option noyywrap
%{
%}

%s A B C D DEAD

%%
<INITIAL>A BEGIN B;
<INITIAL>. BEGIN INITIAL;
<INITIAL>\n BEGIN INITIAL; {printf("%s\n", "Not Accepted");}

<B>B BEGIN C;
<B>A BEGIN B;
<B>. BEGIN INITIAL;
<B>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<C>C BEGIN D;
<C>. BEGIN INITIAL;
<C>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<D>\n BEGIN INITIAL; {printf("%s\n", "Accepted");}
<D>. BEGIN DEAD;

<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; {printf("Invalid\n");}
%%

int main()
{
	printf("Enter String\n");
	yylex();
	return 0;
}