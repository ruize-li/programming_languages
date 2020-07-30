/**
 * FA19
 * CS333 Project 2
 * Ruize Li
 * Sep 24, 2019
 * Task 2
 * reads in a text; outputs the number of rows and characters;
 * outputs the number of each vowel[a,e,i,o,u] in the file
 */
// defines the number of rows, chars, and number of vowels
    int rows = 1;
    int chars = 0;
    int a = 0;
    int e = 0;
    int  i = 0;
    int o = 0;
    int u = 0 ;

// defines the rules for counting
%%
a	a++; chars++;
e	e++; chars++;
i	i++; chars++;
o	o++; chars++;
u	u++; chars++;
\n	rows++;
.	chars++;


%%

int main ( int argc, char *argv[] ) {
    // reads file from command line
    if(argc > 1)
        yyin = fopen( argv[1], "r" );
    
    yylex();
    printf("rows: %d, characters: %d, 'a's: %d\n,'e's: %d, 'i's: %d, 'o's: %d, 'u's: %d\n", rows, chars,a,e,i,o,u);
    
    return 0;

}
