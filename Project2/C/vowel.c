/**
 *Task 2: reads in a text file and count the number of rows, characters,
 * and how many of each vowel [a, e, i, o, u] are in the file.
 * Cornelia(Zixuan) Wang
 * Feb.28 
 */



/* declare the initial number of rows, characters and each of vowels*/
	int rows = 1;
	int chars = 0;
	int a = 0;
	int e = 0;
	int i = 0;
	int o = 0;
	int u = 0;
	
/* define the rule to add on the integer variable just declared as the program reaches
 * newline, characters, and vowels*/
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

	/* open the test file */
	yyin = fopen(argv[1], "r");
	yylex();
	printf("rows: %d, characters: %d, 'a's: %d\n,'e's: %d, 'i's: %d, 'o's: %d, 'u's: %d\n", rows, chars,a,e,i,o,u);
}


