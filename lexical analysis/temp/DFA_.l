/* design a DFA that accepts an odd number of 1's on {0,1}*/
%option noyywrap
%{
%}

%s A B DEAD

%%
<INITIAL>1 BEGIN B;
<INITIAL>0 BEGIN A;
<INITIAL>[^01\n] BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<A>1 BEGIN B;
<A>0 BEGIN A;
<A>[^01\n] BEGIN DEAD;
<A>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<B>1 BEGIN A;
<B>0 BEGIN B;
<B>[^01\n] BEGIN DEAD;
<B>\n BEGIN INITIAL; {printf("Accepted\n");}


<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL; {printf("Invalid\n");}

%%

int main()
{
	printf("Enter String\n");
	yylex();
	return 0;
}