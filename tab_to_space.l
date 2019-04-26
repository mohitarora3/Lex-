%{
	#include<stdio.h>
%}
%%
[ \t]+	    {printf(" ");}
\n          {printf("%s",yytext);}
%%
int yywrap(){} 
int main(){
	printf("\nConvert Tab to single Space\n");
	printf("Enter Input:\t");
    yylex();
	return 0;
}
