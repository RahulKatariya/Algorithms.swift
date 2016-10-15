//
//  QueueArray.swift
//  SwiftDataStructures
//
//  Created by Rahul Katariya on 14/10/16.
//  Copyright © 2016 RahulKatariya. All rights reserved.
//

import Foundation

public struct QueueArray<Element> {
    
    fileprivate var array = Array<Element>()
    
    public mutating func enqueue(_ element: Element) {
        array.append(element)
    }
    
    public mutating func dequeue() -> Element? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
}

/// Default implementations of core requirements
extension QueueArray {
    
    /// A Boolean value indicating whether the stack is empty.
    ///
    /// - Complexity: O(1)
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    /// The number of elements in the stack array.
    ///
    /// - Complexity: O(1)
    public var count: Int {
        return array.count
    }
    
}
