%{

#include<stdio.h>
#include<string.h>
char *src;
char temp;

void reverseString(char *src,int len)
{
	for(int i=0,j=len-1;i<j;i++,j--)
		{
		temp=src[i];
		src[i]=src[j];
		src[j]=temp;
		}
}

%}
%%

([a-zA-Z0-9])* { src=(char *)malloc(sizeof(char)*yyleng);
		 strcpy(src,yytext);
		 reverseString(src,yyleng);
		 printf("Reverse string is %s\n",src);
		 }
		 
%%
int yywrap(){}



int main()
{
	yylex();
	return 0;
}



