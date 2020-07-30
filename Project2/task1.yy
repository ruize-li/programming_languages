/**
 * FA19
 * CS333 Project 2
 * Ruize Li
 * Sep 24, 2019
 * takes any character in a-z or A-Z and shifts it 13 spaces forward
 * a--> n
 * b-->o
 */


// shift the alphabet 13 spaces by converting chars to ASKII and modulo by 26(number of alphabets)
%%

[a-z] printf("%c", (yytext[0] - 'a'+13)%26 + 'a');
[A-Z] printf("%c", (yytext[0] - 'A'+13)%26 + 'A');



%%

int main ( int argc, char *argv[] ) {
    // reads file from command line
    if (argc > 1)
        yyin = fopen( argv[1], "r" );
    yylex();   
    return 0;
}
