%{
	char *string;

%}
longest [a-zA-z]{8,}

%%
{longest}  {string="yytext";}

%%
#include<stdio.h>
#include<string.h>
void main(){
	yylex();
	printf("Longest string is =%s\n",string);
	printf("Longest string in reverse is =%s\n",strrev(string));

}
int yywrap(void){return 1;}
// /*