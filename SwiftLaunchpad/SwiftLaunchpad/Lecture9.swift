//
//  Lecture9.swift
//  SwiftLaunchpad
//
//  Created by Vaibhav Singla on 30/09/19.
//  Copyright © 2019 Vaibhav Singla. All rights reserved.
//

import Foundation

class Lecture9 {
    //[[1, 2, 3, 4], [5, 6, 7, 8], [9, 10 ,11, 12], [13, 14, 15, 16]]
    func spiralPrint(inputArray: [[Int]]) {
        var startRow = 0
        var startColumn = 0
        var endColumn = inputArray.count-1
        var endRow = inputArray.count-1
        
        // printig array
        for i in 0..<inputArray.count {
            for j in 0..<inputArray.count {
                print("\(inputArray[i][j])", terminator:" ")
            }
            print("")
        }
        
        // iterating no. of spiral
        while startRow<=endRow && startColumn<=endColumn {
            
            // iterating top left to top right
            for i in startColumn...endColumn {
                print(inputArray[startRow][i])
            }
            startRow += 1
            
            // iterating  right corner to right bottom corner
            for i in startRow...endRow {
                print(inputArray[i][endColumn])
            }
            endColumn -= 1
            
            // iterating right bottom corner to left bottom corner
            if startRow<=endRow {
                for index in stride(from: endColumn, through: startColumn, by: -1) {
                    print(inputArray[endRow][index])
                }
                endRow -= 1
            }
            
            // iterating left bottom corner to top left corner
            if startColumn<=endColumn {
                for index in stride(from: endRow, through: startRow, by: -1) {
                    print(inputArray[index][startColumn])
                }
                startColumn += 1
            }
        }
    }
    
    func wavePrint(inputArray: [[Int]]) {
        let startRow = 0
        let startColumn = 0
        let endColumn = inputArray.count-1
        let endRow = inputArray.count-1
        
        // iterating colunm as in wave print we print colunms only
        for columnIndex in startColumn...endColumn {
            // check index of column to predict top to bottom or bottom to top printing
            if (columnIndex%2) == 0 {
                //even case go top to bottom
                for rowIndex in startRow...endRow {
                    print(inputArray[rowIndex][columnIndex])
                }
            } else {
                // odd case  go bottom to top
                for rowIndex in stride(from: endRow, through: startRow, by: -1) {
                    print(inputArray[rowIndex][columnIndex])
                }
            }
        }
    }
}
