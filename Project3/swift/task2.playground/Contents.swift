/**
Jiyao Chen
CS333 Project 3
Fall 2019
task2 : executes a binary search on a list or array of numbers.
*/
import Cocoa

let numArray = [1, 3, 5, 6, 8, 14, 43, 64, 65, 77, 87]

func binarySearch(arg1 value: Int, arg2 array: [Int]) -> Bool {
    
    var lIndex = 0
    var rIndex = array.count - 1
    
    while lIndex <= rIndex {
        
        let midIndex = (lIndex + rIndex) / 2
        let midVal = array[midIndex]
        
        //first case: the value in the middle is the one we want
        if midVal == value {
            return true
        }
        
        //second case: the value is in the left half
        if value < midVal {
            rIndex = midIndex - 1
        }
        
        //third case: the value is in the right half
        if value > midVal {
            lIndex = midIndex + 1
        }
    }
    
    //fourth case: no value found
    return false
}

print(binarySearch(arg1: 6, arg2: numArray))
