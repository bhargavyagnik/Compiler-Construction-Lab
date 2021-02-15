%{
    //*********************************************************
    // Program to check Wellformedness of brackets
    //*********************************************************

#include<stdio.h>
#include<string.h>
char temp[10];
int i=0,openbracket=0,closebracket=0;
extern FILE *yyin;
%}

%%
"("[()]*")"";" {
strcpy(temp,yytext);
printf("%s\n",temp);
i=0;
while(temp[i]!=';')
{
if(temp[i]=='(')
openbracket++;
if(temp[i]==')')
closebracket++;
else;
i++;
}
if(openbracket==closebracket)
printf("Well formed input !\n");
else
printf("Not well formed");
}

%%

int main(int argc,char *argv[])
{
FILE *fp = fopen(argv[1],"r");
yyin=fp;
yylex();
close(fp);
return 0;
}
