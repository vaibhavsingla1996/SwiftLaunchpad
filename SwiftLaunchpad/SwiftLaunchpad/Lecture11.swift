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
    
    func swap(arr: [String], index1: Int, index2: Int) -> [String] {
        var tempArray = arr
        let temp = arr[index1]
        tempArray[index1] = tempArray[index2]
        tempArray[index2] = temp
        return tempArray
    }
    
    func nQueenProblem(matrix:[[Int]], index: Int, conut: Int) -> Bool {
        if index == conut {
            
        }
        return false
    }
    
}
