//
//  DoublyLinkedList.swift
//  DataStructures
//
//  Created by Rahul Katariya on 16/06/18.
//  Copyright © 2018 RahulKatariya. All rights reserved.
//

import Foundation

public struct DoublyLinkedList<Element> {
    
    public typealias Node = LinkedListNode<Element>
    public fileprivate(set) var head: Node?
    public fileprivate(set) var tail: Node?
    
    /// Creates a new, empty `LinkedList`.
    public init() {}
    
}
