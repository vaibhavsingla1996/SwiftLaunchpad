//
//  Lecture11.swift
//  SwiftLaunchpad
//
//  Created by Vaibhav Singla on 29/09/19.
//  Copyright © 2019 Vaibhav Singla. All rights reserved.
//

import Foundation

class Lecture11 {
    
    
    func towerOfHanoi(numberOfDiscs count: Int, source: String, helper: String, destination: String) {
        if count == 0 {
            return
        }
        towerOfHanoi(numberOfDiscs: count-1, source: source, helper: destination, destination: helper)
        print("taking \(count) th from \(source) to \(destination)")
        towerOfHanoi(numberOfDiscs: count-1, source: helper, helper: source, destination: destination)
    }

    
    // TODO - check and update below implementation
    func printSubSequence(inputArray inputString: inout [String], outputArray outputString: inout [String], startIndex: Int, outputIndex: Int) {
        if startIndex == inputString.count {
            print(outputString)
            return
        }
        // consider
        outputString[outputIndex] = inputString[startIndex]
        printSubSequence(inputArray: &inputString, outputArray: &outputString, startIndex: startIndex+1, outputIndex: outputIndex+1)
        
        
        // not considered
        printSubSequence(inputArray: &inputString, outputArray: &outputString, startIndex: startIndex+1, outputIndex: outputIndex)
    }
    
    func printPermutation(inputArray inputString: inout [String], startIndex: Int) {
        
        if startIndex == inputString.count {
            print(inputString)
            return
        }
        
        var outputIndex = startIndex
        while outputIndex < inputString.count {
            //swap(input[startIndex], input[outputIndex])
            inputString =  swap(arr: inputString, index1: startIndex, index2: outputIndex)
            printPermutation(inputArray: &inputString, startIndex: startIndex+1)
            // done due to backtracking
            inputString =  swap(arr: inputString, index1: startIndex, index2: outputIndex)
            outputIndex += 1
        }
        
    }
    
    func swap<Element: Comparable>(arr: [Element], index1: Int, index2: Int) -> [Element] {
        var tempArray = arr
        let temp = arr[index1]
        tempArray[index1] = tempArray[index2]
        tempArray[index2] = temp
        return tempArray
    }
    
    // refer https://www.raywenderlich.com/977854-data-structures-algorithms-in-swift/lessons/8
    func mergeSort<Element: Comparable>(array: [Element]) -> [Element] {
        if array.count == 1 {
            return array
        }
        let middle = array.count/2
        let leftArray = mergeSort(array: Array(array[..<middle]))
        let rightArray = mergeSort(array: Array(array[middle...]))
        return merge(leftArray, rightArray)
        
    }
    
    func merge<Element: Comparable>(_ left: [Element], _ right: [Element]) -> [Element] {
        var leftIndex = 0
        var rightIndex = 0
        var resultArray: [Element] = []
        
        while leftIndex < left.count && rightIndex < right.count {
            let leftElement = left[leftIndex]
            let rightElement = right[rightIndex]
           
            if leftElement < rightElement {
                // append left array element in result array
                resultArray.append(leftElement)
                leftIndex += 1
            } else if rightElement < leftElement {
                // append right array element in result arraty
                resultArray.append(rightElement)
                rightIndex += 1
            } else {
                // equal element found
                resultArray.append(leftElement)
                leftIndex += 1
                
                resultArray.append(rightElement)
                rightIndex += 1
            }
        }
        
        // appending rest of elements of left array if left
        if leftIndex < left.count {
            resultArray.append(contentsOf: left[leftIndex...])
        }
        
        // appending rest of elements of right array if left
        if rightIndex < right.count {
            resultArray.append(contentsOf: right[rightIndex...])
        }
        
        return resultArray
    }
    
    func quickSort<Element: Comparable>(startIndex: Int, endIndex: Int, array: [Element]) -> [Element] {
        if startIndex >= endIndex {
            return array
        }
        let tuple = partition(startIndex: startIndex, endIndex: endIndex, array)
        
        let newArray =  quickSort(startIndex: startIndex, endIndex: tuple.partitionIndex-1, array: tuple.array)
        return quickSort(startIndex: tuple.partitionIndex+1, endIndex: endIndex, array: newArray)
        
    }
    
    func partition<Element: Comparable>(startIndex: Int, endIndex: Int, _ array: [Element]) -> (array: [Element], partitionIndex: Int) {
        var tempArray = array
        let pivotElement = array[endIndex-1]
        var i = startIndex-1
        
        for (index, element) in tempArray[startIndex..<endIndex].enumerated() {
            // shifting small element of array in the begining of array to divide it in 2 parts
//            if index == tempArray.count-1 {
//                break
//            }
            if element <= pivotElement {
                i += 1
                tempArray = swap(arr: array, index1: i, index2: index)
            }
        }
        let pivotIndex = i+1
        // replacing pivot index to its orignal sorted position
        tempArray = swap(arr: tempArray, index1: endIndex-1, index2: pivotIndex)
        
        return (array, pivotIndex)
    }
    
    
    
    func nQueenProblem(matrix:[[Int]], index: Int, count: Int) -> Bool {
        if index == count {
            
        }
        
        return false
    }

    func checkWeatherPositionIsValidForQueen(matrix:[[Int]], rowIndex: Int, columnIndex: Int, count: Int) -> Bool {
       return true
    }
    
    
    
    // rat in a maze
    
    // sudoku
}
