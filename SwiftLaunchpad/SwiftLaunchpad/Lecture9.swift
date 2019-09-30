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
        
        while startRow<=endRow && startColumn<=endColumn {
            for i in startColumn...endColumn {
                print(inputArray[startRow][i])
            }
            startRow += 1
            
            for i in startRow...endRow {
                print(inputArray[i][endColumn])
            }
            endColumn -= 1
            
            if startRow<=endRow {
                for index in stride(from: endColumn, to: startColumn, by: -1) {
                    print(inputArray[endRow][index])
                }
                endRow -= 1
            }
            
            if startColumn<=endColumn {
                for index in stride(from: endRow, through: startRow, by: -1) {
                    print(inputArray[index][startColumn])
                }
                startColumn += 1
            }
        }
    }
}
