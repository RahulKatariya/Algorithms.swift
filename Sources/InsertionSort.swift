//
//  InsertionSort.swift
//  SwiftDataStructures
//
//  Created by Rahul Katariya on 15/10/16.
//  Copyright © 2016 RahulKatariya. All rights reserved.
//

import Foundation

public func insertionSort(array: [Int]) -> [Int] {
    
    var array = array
    var i = 0
    while i < array.count {
        var j = 0
        while j < array.count-i-1 {
            if array[j] > array[j+1] {
                let temp = array[j]
                array[j] = array[j+1]
                array[j+1] = temp
            }
            j += 1
        }
        i += 1
    }
    return array
    
}

func newSort(array: [Int]) -> [Int] {
    var array = array
    var i = 0
    while i < array.count {
        var j = i+1
        while j < array.count {
            if array[j] < array[i] {
                let temp = array[j]
                array[j] = array[i]
                array[i] = temp
            }
            j += 1
        }
        print(array)
        i += 1
    }
    return array
}
