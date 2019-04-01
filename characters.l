
%{ 
#include<stdio.h> 
#include<string.h> 
int countCharacters= 0; 
%} 
  
%% 
.  {countCharacters++;}
  
\n {printf("Number of characters are %d\n",countCharacters); countCharacters=0;}
%% 
  
int yywrap(){} 
  
int main() 
{    
    
    yylex(); 
   
  
    return 0; 
} 

