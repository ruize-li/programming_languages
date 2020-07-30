/**
*Task 1: encode English characters, ([a-z], [A-Z]) by shifting its 
*position in alphabet by 13 forward with wraparound from z to a, using its ASCII code. 
*Cornelia(Zixuan) Wang
*Feb.28 
*/

/*define the rules for the encoding: shift the character in alphabet by 13 forward*/
%%

[a-z] printf("%c\n", (yytext[0]- 'a'+13)%26 + 'a');
[A-Z] printf("%c\n", (yytext[0]- 'A'+13)%26 + 'A');

%%

int main ( int argc, char *argv[] ) {

	yylex();
}