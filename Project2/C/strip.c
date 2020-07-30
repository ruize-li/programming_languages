/**
 *Task 3: strip an HTML file of all tags, comments and white space
 * wherever there is a <p> tag
 * Cornelia(Zixuan) Wang
 * Feb.28 
 */


/* using the regular expression to define the rules to strip off the tags and tabs
 *(the white space except newline and the space between words)*/
%%
[\t]			;
(<[^>]*>)		;
%%

int main ( int argc, char *argv[] ) {

	/* open the test file */
	yyin = fopen(argv[1], "r");
	yylex();
}
