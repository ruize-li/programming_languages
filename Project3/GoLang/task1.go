/*
FA 19
CS333
Project 3
Ruize Li
Seleced Language: Go
Task 1
demonstrates the rules for identifier naming, variable declarations and identifier scoping
*/

// package main

// import "fmt"

// func main() {

// 	var a = "initial"
// 	fmt.Println(a)

// 	var b, c int = 1, 2
// 	fmt.Println(b, c)

// 	var d = true
// 	fmt.Println(d)

// 	var e int
// 	fmt.Println(e)

// 	f := "apple"
// 	fmt.Println(f)
// }

package main

import "fmt"

var variable = 50

func innerScope() {
	variable := 10
	fmt.Printf("In SomeFunc, x: %d\n", variable)
}

func main() {
	variable := 100
	fmt.Printf("var before: %d\n", variable)
	// scoping in functions
	innerScope()
	fmt.Printf("var after: %d\n", variable)
}

// func doComplex() (string, error) {
//     return "Success", nil
// }

// func main() {
//     var val string
//     num := 32

//     switch num {
//     case 32:
//         val, err := doComplex()
//         if err != nil {
//             panic(err)
//         }
//         if val == "" {
//             // do something else
//         }
//     }
//     fmt.Println(val)
// }
