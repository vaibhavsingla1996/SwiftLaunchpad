//
//  main.swift
//  SwiftLaunchpad
//
//  Created by Vaibhav Singla on 28/09/19.
//  Copyright © 2019 Vaibhav Singla. All rights reserved.
//

import Foundation

print("Hello, World!")


//  Lecture 1
print("please enter a integer to check odd even")
if let input = readLine(), let intInput = Int(input) {
    Lecture1().isEven(input: intInput) ? print("\(input) is EVEN") : print("\(input) is ODD")
} else {
    print("bad input")
}



