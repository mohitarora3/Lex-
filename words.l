
%{ 
#include<stdio.h> 
#include<string.h> 
int countWords= 0; 
%} 
  

%% 
([^\t \n ' '])*    {countWords++;} 
"\n" {printf("Number of words are:%d\n", countWords); countWords = 0;} 
%% 
  
int yywrap(){} 
  
int main() 
{    
    
    yylex(); 
  
    return 0; 
} 

