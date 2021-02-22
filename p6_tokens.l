%{
/*Program to recognize white spaces, identifier, tokens etc*/
int single_line_comments=0;
int keywords=0;
int identifiers=0;
int lines= 0;
int spaces=0;
int nonidentifiers=0;
int multi_line_comments=0;
int total_comments=0;
int i=0;

%}
%%

auto|double|struct|break|long|case|char|return|short|goto|int|float|while|do|if|else|for|switch {keywords++;  }
[ \t]+ {spaces++;}
[a-zA-Z][a-zA-Z0-9]* {identifiers++;}
[0-9]* {nonidentifiers++;}
\n {lines++;}
\/\/.* {single_line_comments++;}
\/\*[^*]*\*\/ {multi_line_comments++;}

%%

int yywrap(){
    return 1;
}


int main(int argc,char **argv)
{
    if(argc>1)
    {
        FILE  *file;
        file = fopen(argv[1],"r");
        if(!file)
        {
            printf("Coulnt not open %s\n",argv[1]);
            exit(0);

        }
        yyin=file;
    }
    yylex();
    total_comments=single_line_comments+multi_line_comments;
    i=identifiers-keywords;
    printf("\nTotal Comments %d",total_comments);
    printf("\nKeywords %d",keywords);
    printf("\nIdentifiers %d",i);
    printf("\n\n");
    return 0;
}