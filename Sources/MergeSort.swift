//
//  MergeSort.swift
//  DataStructures
//
//  Created by Rahul Katariya on 15/10/16.
//  Copyright © 2016 RahulKatariya. All rights reserved.
//

import Foundation

public func mergeSort(array: [Int]) -> [Int] {
    
    guard array.count > 1 else { return array }
    let middleIndex = array.count/2
    let leftArray = mergeSort(array: Array(array[0..<middleIndex]))
    let rightArray = mergeSort(array: Array(array[middleIndex..<array.count]))
    return merge(leftArray: leftArray, rightArray: rightArray)
    
}

fileprivate func merge(leftArray: [Int], rightArray: [Int]) -> [Int] {
    
    var leftIndex = 0
    var rightIndex = 0
    var orderedArray = [Int]()
    
    while leftIndex < leftArray.count && rightIndex < rightArray.count {
        if leftArray[leftIndex] < rightArray[rightIndex] {
            orderedArray.append(leftArray[leftIndex])
            leftIndex += 1
        } else if leftArray[leftIndex] > rightArray[rightIndex] {
            orderedArray.append(rightArray[rightIndex])
            rightIndex += 1
        } else {
            orderedArray.append(leftArray[leftIndex])
            leftIndex += 1
            orderedArray.append(rightArray[rightIndex])
            rightIndex += 1
        }
    }
    
    while leftIndex < leftArray.count {
        orderedArray.append(leftArray[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < rightArray.count {
        orderedArray.append(rightArray[rightIndex])
        rightIndex += 1
    }
    
    return orderedArray
    
}
