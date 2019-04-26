%{
	#include<stdio.h>
%}
%%
[ \t]+$	    printf("Removed");
\n         {printf("%s",yytext);}
%%
int yywrap(){} 
int main(){
	printf("\nRemove tab from end of lines\n");
	printf("Enter Input\t:\t");
    yylex();
	printf("End of Program\n");
	return 0;
}
