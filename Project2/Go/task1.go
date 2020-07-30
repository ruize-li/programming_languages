/*
FA 19 CS333
Project 2
Ruize Li & Jiyao Chen
Golang
Demonstrates some simple functionalities in GO
*/


package main
 
import "fmt"
 
func main() {

    fmt.Print("Your First Name: \n")   
    var first string    
    //taking in user input
    fmt.Scanln(&first)                  
    fmt.Print("Your Last Name: \n")
    var second string
    fmt.Scanln(&second)
    //Concatenating two strings
    fmt.Print("Your Name: " + first + " " + second + "\n")           
}