//
//  main.swift
//  SwiftLaunchpad
//
//  Created by Vaibhav Singla on 28/09/19.
//  Copyright © 2019 Vaibhav Singla. All rights reserved.
//

import Foundation

print("Hello, World!")



let lecture = Lecture11()





//  Lecture 1
/*
print("please enter a integer to check odd even")
if let input = readLine(), let intInput = Int(input) {
    Lecture1().isEven(input: intInput) ? print("\(input) is EVEN") : print("\(input) is ODD")
} else {
    print("bad input")
}
*/

// Lecture 9
/*let inputArray: [[Int]] = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]

print("\n\n\n<-----------spiralPrint------------->")
lecture.spiralPrint(inputArray: inputArray)

print("\n\n\n<-----------wavePrint------------->")
lecture.wavePrint(inputArray: inputArray)
*/


// Lecture 10

/*// Printing sum of array
print("<-----------Printing sum of array------------->")
let array = [1, 2, 3, 4, 5]
let sum = lecture.calculateSum(array, len: array.count)
print("Sum is \(sum)")

// Printing factorial
print("\n\n\n<-----------Printing factorial------------->")
let factInput = 5
let factorialOfInput = lecture.calculateFactorial(input: factInput)
print("Factorial of \(factInput) is \(factorialOfInput)")

// Printing nth fibonacci number
print("\n\n\n<-----------Printing nth fibonacci number------------->")
let n = 5
if let fibonacciOfInput = lecture.calculateFibonacci(till: n) {
    print("nth sequence of \(n) is \(fibonacciOfInput)")
} else {
    print("Error - Enter a whole number")
}

// Search key in an array
print("\n\n\n<-----------Search key in an array------------->")
let toSearchArray = [1, 2, 3, 4, 5 , 6, 7]
let keyToBeSearched = 7
lecture.searchElement(array: toSearchArray, startIndex: 0, arraycount: toSearchArray.count, key: keyToBeSearched) ? print("Found element \(keyToBeSearched)") : print("Not Found element \(keyToBeSearched)")


// first index of key in array
print("\n\n\n<-----------Search key's first elemennt in an array------------->")
if let index = lecture.searchFirstIndex(array: toSearchArray, startIndex: 0, arrayCount: toSearchArray.count, key:  keyToBeSearched) {
    print("Found element first index at \(index)")
} else {
    print("Not Found \(keyToBeSearched) in \(toSearchArray) on any index")
}
// last index in array
print("\n\n\n<-----------Search key's last elemennt in an array------------->")
if let index = lecture.findLastIndexInArray(array: toSearchArray, startIndex: 0, count: toSearchArray.count, key: keyToBeSearched) {
    print("Found element last index at \(index)")
} else {
    print("Not Found \(keyToBeSearched) in \(toSearchArray) on any index")
}

// Check an array is sorted or not
print("\n\n\n<-----------Check an array is sorted or not------------->")
lecture.isSorted(array: toSearchArray, startIndex: 0, count: toSearchArray.count) ? print("the given array is Sorted") : print("the given array is NOT Sorted")

// Binary search
print("\n\n\n<-----------Binary search------------->")
lecture.binarySearch(array: toSearchArray, startIndex: 0, endIndex: toSearchArray.count, key: keyToBeSearched) ? print("Found \(keyToBeSearched) in \(toSearchArray)") : print("Not Found \(keyToBeSearched) in \(toSearchArray)")
*/


// lecture 11

lecture.towerOfHanoi(numberOfDiscs: 3, source: "A", helper: "B", destination: "C")

var ar = ["A", "B", "C"]
var out: [String] = Array.init(repeating: "", count: ar.count)
lecture.printSubSequence(inputArray: &ar, outputArray: &out, startIndex: 0, outputIndex: 0)

print("\n\n\n<-----------print Permutation------------->")
lecture.printPermutation(inputArray: &ar, startIndex: 0)

print("\n\n\n<-----------merge sort------------->")
print(lecture.mergeSort(array: [2, 3, 10, 30, 55, 43, 23, 50]))
print(lecture.mergeSort(array: ["2", "3", "10", "30", "55", "43", "23", "50"]))

