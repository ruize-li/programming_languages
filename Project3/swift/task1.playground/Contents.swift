/**
 Jiyao Chen
 CS333 Project 3
 Fall 2019
 task1 : demonstrates the rules for identifier naming, variable declarations and identifier scoping
 */
import Cocoa

//defines variables that are accessible anywhere within the current module
var myStr = "Hello"
var myInt = 5               //variables do not need to be typed

let myDouble = 9.9          //let makes a varialbe unchangeable
let myFloat:Float = 9.9     //but you can explicitly give it a type


func testScope() {
    var localVar = 100
    localVar += 1;
    print("The local variable was 100 and it is: \(localVar) now.")
    
    myInt += 1;
    print("The global variable was 5 and it is: \(myInt) now.")
}
//print(localVar)
//we cannot access the local variable localVar outside the function

testScope()
print("The global variable was 5 and it is: \(myInt) now.")

