-----     Project Identifier     -------


Project:         CS333 Project 3
Name:            Ruize Li
Submission Date: 10/02/19


================================================================================
-----     Directory Structure     ------


.
├── 
│
├── C
│	|__cstk.h
│	|__cstk.c
│	|__cstktest.c
├── GoLang
│	|__task1.go
│	|__task2.go
│	|__task3.go
│	|__extension4.go
├── Swift
│	|__task1.playground
│	|__task2.playground
│	|__task3.playground
│	|__exten1_unique_features.playground
│	|__exten2_function.playground
└── C++
│	|__exten3_third_lang.cc
│	|__exten4_builtin_binary.cpp

4 directories, 14 files


================================================================================
-----     OS and Compiler     ----------


Apple LLVM version 9.1.0 (clang-902.0.39.1)
Target: x86_64-apple-darwin17.5.0
Thread model: posix
InstalledDir: /Library/Developer/CommandLineTools/usr/bin


================================================================================
-----     Tasks     --------------------


TASK #1
	Description: Use header files to implement a stack in C. The header file cstk.h includes the necessary structures and declarations of the member functions. The cstk.c implements the functions.
	
	Compile: gcc -o cstktest cstktest.c cstk.c
	Usage:	./cstktest
	Expected output:
		The original list: 0 1 2 3 4 5 6 7 8 9 
		The reversed list: 9 8 7 6 5 4 3 2 1 0
END TASK
================================================================================

TASK #1 -- Selected Language: GoLang
	Description: Demonstrate the rules for identifier naming, variable declarations and scoping.
	Usage: go run task1.go
	Output: the outputs are variables with different types, see wiki page.
		
END TASK

TASK #2 -- Selected Language: GoLang
	Description: Demonstrate binary search
	Usage: go run task2.go
	Output:
		Searching for 56 in list [2 5 8 12 16 23 38 56 72 91]
		Your number was found in position 7 after 3 steps.
	The example shown above indicates the number of steps required to find the item in the array using binary search

END TASK

TASK #3 -- Selected Language: GoLang
	Description: Demonstrate all basic built-in types
	Usage: go run task3.go
	Output:
		The output speficically demonstrates the use of interface in GoLang. The demonstration of basic built-in types has been placed on wiki.

END TASK
================================================================================
Swift:
  This is the selected language programming task in Swift. 

  To compile and run the task, /usr/bin/swift (name of the file).playground/Contents.swift.


  task1:
    We demonstrated the rules for identifier naming, variable declarations and identifier scoping by declaring several variables at the top level of a file and within functions. We tested the scope of global variables and local variables.

  task2:
    We executed a binary search on a list or array of numbers. Swift does not have a built-in method to do binary search, but the grammar is similar the Java.

  task3:
    We demonstrated all of the basic built-in types and how to construct aggregate types. We declared int, string, double, float, and boolean. We also made a class and a struct which had basic types.

  exten1_unique_features:
    I tried to explain the unique features of swift, such as syntax and scoping, by using class and struct as examples. The class and the struct are similar in many ways, but they are indeed different and can be handy in difference circumstances. I have explained in my wiki page.

  exten2_function:
    In Swift, functions can be treated as a type. We can follow the convention of declaring a variable: using the keywords "var" and "let". The detailed information can be found on my wiki page.


================================================================================
-----      Extensions     -------------

-- I did 5 extensions for this projects, including all the extensions for the third selected language.

1**. (Extension 1) We approached the third language, C++ for this project
	Specifically, we did two extensions for C++ as well(see wiki page) 

Compile: gcc -o task*.cc

Usage:

2**. (Extension 2) show unique features of the syntax, naming, or scoping in the selected language.

Usage: In the wiki page -Variables and Scope- I demontrated the special cases where scoping leads to loss in information in GoLang.

3**. (Extension 4) Built-in binary search in GoLang

Usage: go run extension4.go

output:
	found 6 at index 2 in [1 3 6 10 15 21 28 36 45 55]
The output indicates the results of searching items using built-in binary search in GoLang.

4**. (Extension 7) Demonstrate whether functions are a basic data type in the language.
I demonstrated functions are a type in GoLang and C.

Usage: In the wiki page - Variables and Scope - I demonstrated that function is a returnable type(closure) in GoLang.

5**. (Extension 8) Enable the stack to handle overflow errors and more functionalities.
I enabled the stack to handle overflows by doubling its size. I also implemented a peek() method which will return the value on the top of the stack.

Compile: gcc -o cstktest cstktest.c extension8.c

Usage: ./cstktest

Output:
	In the cstktest.c file, it's trying to push 60 items into the stack while the initial capacity is only 50. The solution is to create a new stack with doubled size of length and copy the data from original stack.

	


================================================================================