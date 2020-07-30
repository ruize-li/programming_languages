/**
 * FA19
 * CS333 Project 2
 * Ruize Li
 * Sep 24, 2019
 * Task 4
 * Parser for Clite
 * parses the Clite code by the regular expressions below
 */

/* Defines digit*/
Digit[0-9]

/* Defines the rules for parsing Clite files*/
%%
[ \t\n]																   ;
";"																	   ;
{Digit}*								printf("Integer - <%s>\n",yytext);
{Digit}*"."{Digit}*						printf("Float - <%s>\n",yytext);
if | else | while | for | int | float	printf("Keyword - <%s>\n",yytext);
[a-z]+									printf("Identifier - <%s>\n",yytext);
"="										printf("Assignment -\n");
"=="|"<"|">"|"<="|">="					printf("Comparison - <%s>\n",yytext);
"+"|"-"|"*"|"/"							printf("Operator - <%s>\n",yytext);
"{"										printf("Open-bracket - \n");
"}"										printf("Close-bracket - \n");
"("										printf("Open-paren - \n");
")"										printf("Close-paren - \n");


%%

int main ( int argc, char *argv[] ) {
    // reads file from command line
    if(argc > 1)
        yyin = fopen( argv[1], "r" );
    
    yylex();
    
    return 0;

}
