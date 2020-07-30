/**
Jiyao Chen
CS333 Project 3
Fall 2019
exten_unique_features : exlpain the unique features of swift, i.e. syntax and scoping
*/
import Cocoa

//make a class
class Animal {
    
    var name = ""
    var age = 0
    var isEndangered = false
    
    init(status:Bool) {
        self.isEndangered = status
    }
}

//make a child class
class Whales : Animal {
    
    var kinds = 1000
    
}

//make a struct, cannot be inheritted
struct Animal2 {
    
    var name = ""
    var age = 0
    var isEndangered = false
    
    init(status:Bool) {
        self.isEndangered = status
    }
}

//creating two instances with let and var
let instance1 = Animal(status:true)
var instance2 = Animal(status: true)

//instance1 = Animal(status: false) //not permitted
instance2 = Animal(status: false)   //permitted


//---------------------------------------------------------------

//make a copy and see if it's reference or a value
var instance3 = Animal2(status: true)
var classCopy = instance2
var structCopy = instance3

//changing the value
classCopy.age = 100
structCopy.age = 100

if classCopy.age == instance2.age {
    print("class is a reference type.")
}
else {
    print("class is a value type.")
}

if structCopy.age == instance3.age {
    print("struct is a reference type.")
}
else {
    print("struct is a value type.")
}
