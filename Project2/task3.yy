/**
 * FA19
 * CS333 Project 2
 * Ruize Li
 * Sep 24, 2019
 * Task 3
 * strips an html file of all tags and comments
 * it also strips the file of all whitespaces except for blank line
 */

// rules that strips tags& comments(regular expressions)
%%
[\t]            ;
(<[^>]*>)       ;


%%

int main ( int argc, char *argv[] ) {
    // reads the file from command line
    if(argc > 1)
        yyin = fopen( argv[1], "r" );
    
    yylex();
    
    return 0;

}
