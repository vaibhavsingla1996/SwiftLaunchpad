//
//  Lecture10.swift
//  SwiftLaunchpad
//
//  Created by Vaibhav Singla on 28/09/19.
//  Copyright © 2019 Vaibhav Singla. All rights reserved.
//


// Below question will be done by recursion
import Foundation

class Lecture10 {
    func calculateSum(_ array: [Int], len: Int) -> Int {
        if len <= 0 {
            return 0
        }
        let sum = calculateSum(array, len: len-1) + array[len-1]
        return sum
    }
    
    func calculateFactorial(input: Int) -> Int {
        if input == 1 || input == 0 {
            return 1
        }
        let fact = input*calculateFactorial(input: input-1)
        return fact
    }
    
    func calculateFibonacci(till input: Int) -> Int? {
        if input < 0 {
            return nil
        } else if input < 2 {
            return input
        }
        let sum = calculateFibonacci(till: input-1)! + calculateFibonacci(till: input-2)!
        return sum
    }
    
    func searchElement(array inputArray: [Int], startIndex: Int, arraycount count: Int, key: Int) -> Bool {
        if startIndex == count {
            return false
        }
        
        if inputArray[startIndex] == key {
            return true
        }
        return searchElement(array: inputArray, startIndex: startIndex+1, arraycount: count, key: key)
    }
    
    func searchFirstIndex(array inputArray: [Int], startIndex: Int, arrayCount count: Int, key: Int) -> Int? {
        if startIndex >= count {
            return nil
        }
        
        if inputArray[startIndex] == key {
            return startIndex
        } 
        return searchFirstIndex(array: inputArray, startIndex: startIndex+1, arrayCount: count, key: key)
    }
    
    func findLastIndexInArray(array inputArray: [Int], startIndex: Int, count: Int, key: Int) -> Int? {
        
        if startIndex == count {
            return nil
        }
        
        if inputArray[startIndex] == key {
            if let index = findLastIndexInArray(array: inputArray, startIndex: startIndex+1, count: count, key: key) {
                return index
            } else {
                return startIndex
            }
        }
        return findLastIndexInArray(array: inputArray, startIndex: startIndex+1, count: count, key: key)
        
    }
    
    func isSorted(array inputArray: [Int], startIndex: Int, count: Int) -> Bool {
        if startIndex == count-1 {
            return true
        }
        
        let bool = isSorted(array: inputArray, startIndex: startIndex+1, count: count)
        if inputArray[startIndex] <= inputArray[startIndex+1] && bool {
            return true
        }
        return false
    }
    
    func binarySearch(array inputArray: [Int], startIndex: Int, endIndex: Int, key: Int) -> Bool {
        if startIndex > endIndex {
            return false
        }
        let mid = (startIndex+endIndex)/2
        if inputArray[mid] == key {
          return true
        } else if inputArray[mid] > key {
            return binarySearch(array: inputArray, startIndex: startIndex, endIndex: mid-1, key: key)
        } else {
            return binarySearch(array: inputArray, startIndex: mid+1, endIndex: endIndex, key: key)
        }
    }
    
}

