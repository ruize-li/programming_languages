/*
FA 19
CS333
Project 3
Ruize Li
Seleced Language: Go
Task 2
demonstrates Binary Search in GoLang
*/

package main

import "fmt"

func main() {
	searchField := []int{2, 5, 8, 12, 16, 23, 38, 56, 72, 91}

	for _, searchNumber := range searchField {
		fmt.Printf("Searching for %d in list %v\n", searchNumber, searchField)
		result, searchCount := binarySearch(searchField, searchNumber)
		fmt.Printf("Your number was found in position %d after %d steps.\n\n", result, searchCount)
	}
}

func binarySearch(a []int, search int) (result int, searchCount int) {
	mid := len(a) / 2
	switch {
	case len(a) == 0:
		result = -1 // not found
	case a[mid] > search:
		result, searchCount = binarySearch(a[:mid], search)
	case a[mid] < search:
		result, searchCount = binarySearch(a[mid+1:], search)
		result += mid + 1
	default: // a[mid] == search
		result = mid // found
	}
	searchCount++
	return
}
