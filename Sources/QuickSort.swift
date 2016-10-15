//
//  QuickSort.swift
//  SwiftDataStructures
//
//  Created by Rahul Katariya on 15/10/16.
//  Copyright © 2016 RahulKatariya. All rights reserved.
//

import Foundation

public func quickSort(array: [Int]) -> [Int] {
    
    guard array.count > 1 else { return array }
    let pivot = array.last!
    let leftArray = array.dropLast().filter { $0 <= pivot }
    let rightArray = array.dropLast().filter { $0 > pivot }
    return quickSort(array: leftArray) + Array<Int>([pivot]) + quickSort(array: rightArray)
    
}
