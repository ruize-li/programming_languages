CS333 - Project 2 - README
Ruize Li
09/25/2019

Directory Layout:
Project2/
|
|
|
|  |__/task1.yy
|  |__/task2.yy
|  |__/task3.yy
|  |__/task4.yy
|  |__/extension1.yy
|  |__/extension3.yy
|__/swift/(in my partner Jiyao Chen's filer)
|  |
|  |__/main.swift
|
|__/GO/
|  |
|  |__/task1.go

Run and build configuration for C:
OSX El Capitan 10.11.6 - Apple LLVM version 7.3.0 (clang-703.0.31)

Description for each subsection:
C:
  Task1.create a encoder that shifts characters 13 spaces forward in the alphabet
  The task1.yy is the file to test using flex. Input.txt is the test txt file.
  
  Compile:
		flex task1.yy
    gcc lex.yy.c -ll
  Run:
		./a.out intput.txt
  Output:
    Uryyb jbeyq guvf vf n grfg svyr sbe rapbqr(encoded output for input.txt)
    running encode on the text again gives us the original file.

  Task2.reads in a text file and counts the number of rows, characters, and vowels[a,e,i,o,u] in the file
  
  Compile:
		flex task2.yy
    	gcc lex.yy.c -ll
  Run:
		./a.out intput.txt
  Output:
    rows: 1, characters: 42, 'a's: 1
    ,'e's: 5, 'i's: 3, 'o's: 4, 'u's: 0

  Task3. strips html file of all tags and comments
  
  Compile:
		flex task3.yy
    gcc lex.yy.c -ll
  Run:
		./a.out intput.txt
  Output:
		This is a page title



		Here is a header


		Here is some body text in a paragraph


		Here is a link to cs.colby.edu
		inside a paragraph.

		As expected, the tags and comments are parsed from the html document.

	Task4. implement a parser for Clite which outputs a sequence of strings
  
  Compile:
		flex task4.yy
    	gcc lex.yy.c -ll
  Run:
		./a.out p2-example.c
  Output:
  		Identifier - <int>
		Identifier - <main>
		Open-paren - 
		Close-paren - 
		Open-bracket - 
		Identifier - <int>
		Identifier - <a>
		Assignment -
		Integer - <6>
		Identifier - <int>
		Identifier - <b>
		Assignment -
		Float - <5.0>
		Identifier - <if>
		Open-paren - 
		Identifier - <a>
		Comparison - <<>
		Identifier - <b>
		Close-paren - 
		Open-bracket - 
		Identifier - <a>
		Assignment -
		Identifier - <a>
		Operator - <+>
		Identifier - <b>
		Close-bracket - 
		Close-bracket - 
	The output indicates that the clite file has been successfully parsed based on our rules

  Extension:
    I took two extensions for this project.
     First, I get comments working correctly in the parser for Clite.
     Compile:
		 	flex extension1.yy
       		gcc lex.yy.c -ll
     Run:
		 	./a.out input.txt
     Output:
     	There is no "*" in the output, meaning that comments can work appropriately

     Second, I enable the parser to parse print statements and return statements. I worked on this extension with the help from my classmate Jiyao Chen and Zixuan Wang.

	 Compile:
		 	flex extension3.yy
       		gcc lex.yy.c -ll
     Run:
		 	./a.out input.txt
     Output:
     	I get more statements in the print-outs: different than Task4, there's now print and return statements.


Swift:
  This is the selected language programming task in Swift. 

  To compile the task, it would be more convenient to do it in XCode.

  To run any task, run main.swift

  task1:
    We were asked to print out "hello world". We did something special by asking the 
    user to enter a word. The program will print out a heart shape and the word five
    times in five lines next to the heart.



GO:
   This is the selected language programming task in GoLang. 

   To run any task, simply execute 
  	go run task1.go

   task1:
	 	Write a "Hello World" program for the language.
	 	I write the go program to take in user input and concatenate the strings together

	 Output:
			 Your First Name: 
			Ruize
			Your Last Name: 
			Li
			Your Name: Ruize Li





