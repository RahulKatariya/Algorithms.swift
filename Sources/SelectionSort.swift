//
//  SelectionSort.swift
//  DataStructures
//
//  Created by Rahul Katariya on 15/10/16.
//  Copyright © 2016 RahulKatariya. All rights reserved.
//

import Foundation

public func selectionSort(array: [Int]) -> [Int] {
    
    var array = array
    var i = 0
    while i < array.count {
        var j = i + 1
        var minimumIndex = i
        while j < array.count {
            if array[j] < array[minimumIndex] {
                minimumIndex = j
            }
            j += 1
        }
        let temp = array[minimumIndex]
        array[minimumIndex] = array[i]
        array[i] = temp
        i += 1
    }
    return array
    
}
