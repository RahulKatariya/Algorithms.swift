//
//  BubbleSort.swift
//  SwiftDataStructures
//
//  Created by Rahul Katariya on 15/10/16.
//  Copyright © 2016 RahulKatariya. All rights reserved.
//

import Foundation

public func bubbleSort(array: [Int]) -> [Int] {
    
    var array = array
    var i = 0
    while i < array.count {
        var j = 0
        while j < array.count-1-i {
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
