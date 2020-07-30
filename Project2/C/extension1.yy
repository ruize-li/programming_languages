/**
 *Extension 1: I strip off the comments in the C file from the parser.
 * Cornelia(Zixuan) Wang
 * Feb.28 
 */

/* define Digit to make the further use more convenient. */
Digit[0-9]

/* Define the rules for the parser to convert the tokens in C languages into Strings.
 * Also adding the rules for stripping off the comments that are in two types: one-line
 * comments and multiple-line comments. */
%%
[ \t\n]																   ;
";"																	   ;
\/\/(.*)   														   	   ;
\/\*(.*\n)*.*\*\/    												   ; 
{Digit}*								printf("Integer <%s>\n",yytext);
{Digit}*"."{Digit}*						printf("Float <%s>\n",yytext);
if | else | while | for | int | float	printf("Keyword <%s>\n",yytext);
[a-z]+									printf("Identifier <%s>\n",yytext);
"="										printf("Assignment\n");
"=="|"<"|">"|"<="|">="					printf("Comparison <%s>\n",yytext);
"+"|"-"|"*"|"/"							printf("Operator <%s>\n",yytext);
"{"										printf("Open-bracket\n");
"}"										printf("Close-bracket\n");
"("										printf("Open-paren\n");
")"										printf("Close-paren\n");
%%

int main ( int argc, char *argv[] ) {

	yyin = fopen(argv[1], "r");
	yylex();
}

