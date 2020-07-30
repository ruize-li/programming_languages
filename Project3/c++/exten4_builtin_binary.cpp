/**
Jiyao Chen
CS333 Project 3
Fall 2019
exten3_third_lang : using the third language to introduce the syntax, naming and scoping of the language
*/

#include <algorithm>
#include <vector>
#include <iostream>
using namespace std;


int main () {
    //using built-in binary search method
    vector<int> numArray2 = {3, 5, 7, 24, 76, 79, 103};
    if (binary_search(numArray2.begin(), numArray2.end(), 89)) 
       cout << "15 is in the array!"; 
    else 
       cout << "15 is not in the array..."; 

    return 0;
}