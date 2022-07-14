%option noyywrap
%{

}%

%s A B DEAD

%%
<INITIAL>[0-9] BEGIN INITIAL;
<INITIAL>\. BEGIN A;
<INITIAL>\n BEGIN INITIAL; {printf("Invalid\n");}

<A>[0-9] BEGIN A;
<A>. BEGIN DEAD;
<A>\n BEGIN DEAD;

<DEAD>\n BEGIN INITIAL; {printf("Invalid\n");}
%%

int main(){
    yylex();
    return 0;
}