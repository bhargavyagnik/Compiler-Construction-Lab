
%{ 
    //*********************************************************
    // Flex program to print name when an Enter key is pressed 
    // ********************************************************
    //Global definitions
    #include<stdio.h>
    char Name[10];
%} 
  
%% 
    // Rules 
[\n] {
    printf("\n Hi .. %s... . Good Morning \n",Name); 
    }
. {} //do nothing for anything else
%% 
 // Subroutines  
int yywrap(){} 

int main(){
    char opt;
    do{
        printf("\n\n What is  your name:");
        scanf("%s",Name);
        yylex(); 
        printf("\nPress any key to  continue");
        scanf("%c",&opt);
    }while((opt =="Y")||(opt=="y"));
    return 0; 
}