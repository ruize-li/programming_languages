/**
Jiyao Chen
CS333 Project 3
Fall 2019
exten2_function : make a function type
*/
import Cocoa

func addingTwoNum(val1:Int, val2:Int) -> Int {
    return val1 + val2
}

//declaring a variable
var addFunction: (Int, Int) -> Int = addingTwoNum
let addFunction2 = addingTwoNum

//calling the variable
print("Result: \(addFunction(49, 51))")
print("Result: \(addFunction2(49, 51))")
