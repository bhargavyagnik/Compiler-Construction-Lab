**Compiler Construction Programs with lex and yacc**

Installing lex and yacc on Windows Subsystem for Linux.
Open WSL and run the following commands 

    sudo apt upgrade
    sudo apt update
    sudo apt install flex
    sudo apt install yacc

Then check if it is installed properly
using

    which flex
    which bison

You will see something like
<img which.jpg>

To directly use this project, just fork this repository and using comand line go to the directory where it is downloaded.
in WSL you can do it using `cd /mnt/d/cc_codes/` 
If your code is in D drive in the folder "cc_codes"

|  Program  | Description | Commands | 
|--|--|--|
| Hi -> Hello World | This program prints as "Hello World" input string matches as "Hi" | `flex p1_hello_world.l  gcc lex.yy.c  ./a.out `|
| Print Name from Input | This program takes input from the user and prints user name with a hello message | `flex p2_print_name.l  gcc lex.yy.c  ./a.out `|
| Count Vowels and Consonants | This program counts the vowels and consonants in the string | `flex p3_vowel_consonants.l  gcc lex.yy.c  ./a.out `|
| Print only Capital Strings | This program prints all the capital words in the sentence | `flex p4_capital_strings.l  gcc lex.yy.c  ./a.out `|
| Wellformed Parenthesis | This program reads a file b.c and checks if the parenthesis are properly closed and prints if there is any unclosed parenthesis  | `flex p5_parenthesis.l  gcc lex.yy.c  ./a.out b.c `|
