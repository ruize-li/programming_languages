/**
 *Extension 2: Make the encoder (in task 1) more complex by encoding
 *a with z, b with y, c with x... x with c, b with y and z with a,
 *which is the symmetrical position in the alphabet. 
 * Cornelia(Zixuan) Wang
 * Feb.28 
 */
 
 /* define the rules for the new encoder. */
%%
[a-z] printf("%c\n", 'z'-(yytext[0]- 'a'));
[A-Z] printf("%c\n", 'Z'-(yytext[0]- 'A'));

%%

int main ( int argc, char *argv[] ) {

	yylex();
}