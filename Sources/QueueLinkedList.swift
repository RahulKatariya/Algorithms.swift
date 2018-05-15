//
//  QueueLinkedList.swift
//  DataStructures
//
//  Created by Rahul Katariya on 14/10/16.
//  Copyright © 2016 RahulKatariya. All rights reserved.
//

import Foundation

public struct QueueLinkedList<Element> {
    
    fileprivate var linkedList = LinkedList<Element>()
    
    public mutating func enqueue(_ element: Element) {
        linkedList.addLast(value: element)
    }
    
    public mutating func dequeue() -> Element? {
        if isEmpty {
            return nil
        } else {
            return linkedList.removeFirst()
        }
    }
    
}

/// Default implementations of core requirements
extension QueueLinkedList {
    
    /// A Boolean value indicating whether the stack is empty.
    ///
    /// - Complexity: O(1)
    public var isEmpty: Bool {
        return linkedList.isEmpty
    }
    
    /// The number of elements in the stack array.
    ///
    /// - Complexity: O(1)
    public var count: Int {
        return linkedList.count
    }
    
}

