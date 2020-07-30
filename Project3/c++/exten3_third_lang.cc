/**
Jiyao Chen
CS333 Project 3
Fall 2019
exten3_third_lang : using the third language to introduce the syntax, naming and scoping of the language
*/

#include <stdio.h>
#include <stdlib.h>
#include <algorithm>
#include <vector>
#include <iostream>
// #include <bits/stdc++.h>
// using namespace std;

int a = 20;
double b = 9.9;
float c = 9.99;

int binarySearch(int Array[], int num, int val) {

    int head, tail, mid;
    head = 0;
    tail = num - 1;

    //using a while loop to check all the cases
    while(head <= tail) {
        mid = (head + tail) / 2;
        
        //case 1
        if(Array[mid] == val) {
            return 0;
        }
        else if (val > Array[mid]) {
            head = mid + 1;
        }
        else if (val < Array[mid]) {
            tail = mid - 1;
        }
    }
    return -1;
}

class Animal { 
    public: 
  
    int animalAge; 
  
    void printAge() { 
       printf("The animal is: %d years old \n", animalAge); 
    } 
}; 

int main () {
    int numArray[7] = {3, 5, 7, 24, 76, 89, 99};
    //using defined binary search method
    int searchResult = binarySearch(numArray, 7, 99);
    printf("0 means found! -1 means not found... ====== %d\n", searchResult);

    // //using built-in binary search method
    // vector<int> numArray2 = {3, 5, 7, 24, 76, 79, 103};
    // if (binary_search(numArray2.begin(), numArray2.end(), 89)) 
    //    cout << "15 is in the array!"; 
    // else 
    //    cout << "15 is not in the array..."; 

    // cout << endl;

    //using the class
    Animal whale;
    whale.animalAge = a;
    whale.printAge();

    return 0;
}

