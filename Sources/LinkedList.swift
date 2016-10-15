//
//  LinkedList.swift
//  DataStructures
//
//  Created by Rahul Katariya on 13/10/16.
//  Copyright © 2016 RahulKatariya. All rights reserved.
//

import Foundation

public struct LinkedList<Element> {
    
    public typealias Node = LinkedListNode<Element>
    public fileprivate(set) var head: Node?
    public fileprivate(set) var tail: Node?
    
    /// Creates a new, empty `LinkedList`.
    public init() {}
    
}

/// Default implementations of core requirements
extension LinkedList {
    
    /// A Boolean value indicating whether the stack is empty.
    ///
    /// - Complexity: O(1)
    public var isEmpty: Bool {
        return head == nil
    }

    /// A Boolean value indicating whether the stack is empty.
    ///
    /// - Complexity: O(1)
    public var first: Element? {
        return head?.value
    }
    
    /// A Boolean value indicating whether the stack is empty.
    ///
    /// - Complexity: O(1)
    public var last: Element? {
        return tail?.value
    }
    
    /// The number of elements in the linkedlist.
    ///
    /// - Complexity: O(*n*)
    public var count: Int {
        var i = 1, currentNode = head
        while currentNode?.next != nil {
            i = i+1
            currentNode = currentNode!.next
        }
        return i
    }
    
}

///Access
extension LinkedList {
    
    public func node(at index: Int) -> Node? {
        var i = index, currentNode = head
        while currentNode != nil {
            if i == 0 { return currentNode }
            currentNode = currentNode?.next
            i = i-1
        }
        return nil
    }
    
}

///Add
extension LinkedList {
    
    public mutating func addFirst(value: Element) {
        let newNode = LinkedListNode(value: value)
        if let head = head {
            newNode.next = head
        } else {
            tail = newNode
        }
        head = newNode
    }
    
    public mutating func addLast(value: Element) {
        let newNode = LinkedListNode(value: value)
        if let t = tail {
            t.next = newNode
            tail = newNode
        } else {
            addFirst(value: value)
        }
    }
    
    public func insert(value: Element, at index: Int) {
        let newNode = LinkedListNode(value: value)
        let previousNode = node(at: index-1)
        newNode.next = previousNode?.next
        previousNode?.next = newNode
    }
    
}

///Remove
extension LinkedList {
    
    public mutating func removeFirst() -> Element? {
        let temp = head?.next
        head = head?.next
        return temp?.value
    }
    
    public func remove(at index: Int) {
        let previousNode = node(at: index-1)
        let currentNode = previousNode?.next
        previousNode?.next = currentNode?.next
    }
    
    public mutating func removeAll() {
        head = nil
    }
    
}

///Misc
extension LinkedList {
    
    public func node(fromLast index: Int) -> Node? {
        var i = -index, currentNode = head
        var fromLastNode = head
        while currentNode != nil {
            if (currentNode?.next == nil) && (i < 0) { return nil }
            if i > 0 { fromLastNode = fromLastNode?.next }
            i = i+1
            currentNode = currentNode?.next
        }
        return fromLastNode
    }

}

///CustomStringConvertible
extension LinkedList: CustomStringConvertible {
    
    public var description: String {
        var s = "["
        var node = head
        while node != nil {
            s += "\(node!.value)"
            node = node!.next
            if node != nil { s += ", " }
        }
        return s + "]"
    }
    
}
