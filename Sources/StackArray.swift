//
//  StackArray.swift
//  DataStructures
//
//  Created by Rahul Katariya on 14/10/16.
//  Copyright © 2016 RahulKatariya. All rights reserved.
//

import Foundation

public struct StackArray<Element>: Stackable {
    
    fileprivate var array = Array<Element>()
    
    /// Creates a new, empty `StackArray`.
    public init() {}
    
    public var top: Element? {
        return array.first
    }
    
    public mutating func push(_ element: Element) {
        array.append(element)
    }
    
    public mutating func pop() -> Element? {
        let last = array.last
        array.removeLast()
        return last
    }
    
}

/// Default implementations of core requirements
extension StackArray {
    
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
