/**
Jiyao Chen
CS333 Project 3
Fall 2019
task3 : demonstrates all of the basic built-in types and how to construct aggregate types
*/
import Cocoa

//string type
var myStr = "Hello"
var myStr2 = String("World")
var myStr3:String = "!"
print("Swift can concatenate strings, but cannot *number with a string like python")
print("\(myStr + myStr2 + myStr3)\n") //concatenate strings, but cannot *number like python

//integer type
var myInt = 5
var myInt2 = Int(10)
print("Swift can do + - * / operations with same type variables")
print("+:\(myInt + myInt) -:\(myInt-myInt2) *:\(myInt*myInt2) /:\(myInt/myInt2)")

var myDouble = 9.9
var myFloat:Float = 9.9
//print(myInt2 * myDouble)    //operator cannot be applied to two types!!!!
print("\nSwift cannot apply operators to variable with different types!!!!")

var myBoo = true


class Derek {
    
    var name = ""
    var age = 0
    var lovesStudy = true
    
    func beHonest(status:Bool) {
        lovesStudy = status
    }
}

struct Lucas {
    
    var name = ""
    var age = 0
    var lovesStudy = false
    
    init(status:Bool) {
        self.lovesStudy = status
    }
}

var oneGuy = Derek()
oneGuy.name = "Ye"
oneGuy.age = 3

var anotherGuy = Lucas(status: true)
anotherGuy.name = "Chen"
anotherGuy.age = 4




