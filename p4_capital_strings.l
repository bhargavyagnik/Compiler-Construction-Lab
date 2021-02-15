%{
    //*********************************************************
    // Lex Program to print capital strings
    //*********************************************************
/*Definition section*/
%}
%%
[A-Z]+[ \t\n\.\,]    {printf("%s",yytext);}
.   ;
%%
main()
{
    printf("\n Enter some input with capital words in between\n");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}