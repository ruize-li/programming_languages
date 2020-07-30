/**
 * FA19
 * CS333 Project 2
 * Ruize Li
 * Sep 24, 2019
 * Extension 3
 * Make the parser more interesting by enabling it to parse by print statements, return statements
 * 
 */

DIGIT    [0-9]

/*Defines the set of rules for the parser to convert the tokens into strings
*
*The extension in this part is that it could parse print statements, return statements
*/

%%
[ \t\n] ;
"return "[^;]*                         printf("%s\n",yytext);
";" ;
\/\/(.*) ;     
\/\*(.*\n)*.*\*\/  ; 
(\#include.*)                           printf("Import-%s\n",yytext); 
("printf(".*\))                         printf("PrintStatement\n");
else|if|while|for|int|float              printf("Keyword-%s\n", yytext);
{DIGIT}+"."{DIGIT}*                      printf("Float-%s\n",yytext);
{DIGIT}+                                 printf("Integer-%s\n",yytext);
"="                                      printf("Assignment\n");
"<"|"=="|">"|"<="|">="           printf("Comparison-%s\n",yytext);
"+"|"-"|"*"|"/"                    printf("Operator-%s\n", yytext);
"["                                 printf("Open-squareBracket\n");
"]"                                 printf("Close-squareBracket\n");
"{"                                      printf("Open-bracket\n");
"}"                                      printf("Close-bracket\n");
"("                                      printf("Open-paren\n");
")"                                      printf("Close-paren\n");
","                                       printf("Comma\n");
[A-Za-z_][A-Za-z_0-9]*       printf("Identifier-%s\n",yytext);
    
%%
    
int main ( int argc, char *argv[] ) {
    // reads file from command line
    if (argc > 0)
        yyin =fopen(argv[1], "r");
    else
        yyin = stdin;
    yylex();
    
    return 0;
}
