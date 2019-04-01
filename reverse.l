%{

#include<stdio.h>
#include<string.h>
char *src;
char temp;

void reverseString(char *src)
{
	for(int i=0,j=strlen(src)-1;i<j;i++,j--)
		{
		temp=src[i];
		src[i]=src[j];
		src[j]=temp;
		}
}

%}
%%

(.)* { src=(char *)malloc(sizeof(char)*yyleng);
		 strcpy(src,yytext);
		 reverseString(src);
		 printf("Reverse string is %s\n",src);
		 }
		 
%%
int yywrap(){}



int main()
{
	yylex();
	return 0;
}


