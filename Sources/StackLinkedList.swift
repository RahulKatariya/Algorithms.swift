//
//  StackLinkedList.swift
//  DataStructures
//
//  Created by Rahul Katariya on 14/10/16.
//  Copyright © 2016 RahulKatariya. All rights reserved.
//

import Foundation

public struct StackLinkedList<Element> {
    
    fileprivate var linkedList = LinkedList<Element>()
    
    /// Creates a new, empty `StackLinkedList`.
    public init() {}
    
    public var top: Element? {
        return linkedList.first
    }
    
    public mutating func push(value: Element) {
        linkedList.addFirst(value: value)
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        return linkedList.removeFirst()
    }
    
    public mutating func removeAll() {
        linkedList.removeAll()
    }
    
}

/// Default implementations of core requirements
extension StackLinkedList {
    
    /// A Boolean value indicating whether the stack is empty.
    ///
    /// - Complexity: O(1)
    public var isEmpty: Bool {
        return linkedList.isEmpty
    }
    
    /// The number of elements in the stack array.
    ///
    /// - Complexity: O(*n*)
    public var count: Int {
        return linkedList.count
    }
    
}
