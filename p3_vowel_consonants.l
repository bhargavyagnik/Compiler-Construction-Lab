%{
    //*********************************************************
    // Program to count Vowels and Consonants
    //*********************************************************
/*Definition section*/
int vowel_cnt=0,consonant_cnt=0;
%}
vowel[aeiou]+
consonant[^aeiou]
eol \n
%%
{eol} return 0;
[\t]+ ;
{vowel} {vowel_cnt++;}
{consonant} {consonant_cnt++;}

%%
int main()
{
    printf("\nEnter some input string:");
    yylex();
    printf("\nVowels=%d and Consonants=%d \n",vowel_cnt,consonant_cnt);
    return 0;
}
int yywrap(){
    return 1;
}