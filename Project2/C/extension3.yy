/**
 *Extension 3: make the parser (in task 4) more interesting by letting it
 * to parse main statement, print statement, return statement and libraries included.
 * Cornelia(Zixuan) Wang
 * Feb.28 
 */

/* define Digit to make the further use more convenient. */
DIGIT    [0-9] 


/* Define the rules for the parser to convert the tokens in C languages into Strings and
 * add the rules for stripping off the comments. Also let it to parse main statement,
 * print statement, return statement and libraries included. */   
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
     
    if (argc > 0)
        yyin =fopen(argv[1], "r");
    else
        yyin = stdin;
    yylex();
    
}

