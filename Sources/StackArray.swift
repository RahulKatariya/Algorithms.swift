//
//  StackArray.swift
//  SwiftDataStructures
//
//  Created by Rahul Katariya on 14/10/16.
//  Copyright © 2016 RahulKatariya. All rights reserved.
//

import Foundation

public struct StackArray<Element> {
    
    fileprivate var array = Array<Element>()
    
    /// Creates a new, empty `StackArray`.
    public init() {}
    
    public var top: Element? {
        return array.first
    }
    
    public mutating func push(value: Element) {
        array.append(value)
    }
    
    public mutating func pop() -> Element? {
        let last = array.last
        array.removeLast()
        return last
    }
    
    public mutating func removeAll() {
        array.removeAll()
    }
    
    public func evaluateInfix(infix: String) {
        
    }
    
    public func evaluatePrefix(prefix: String) {
        
    }
    
    public func evaluatePostfix(postfix: String) {
        
    }
    
    public func convertInfixToPostfix(infix: String) -> String {
        let postfix = infix
        return postfix
    }
    
    public func convertPostfixToInfix(postfix: String) -> String  {
        let infix = postfix
        return infix
    }
    
    public func convertInfixToPrefix(infix: String) -> String  {
        let prefix = infix
        return prefix
    }
    
    public func convertPrefixToInfix(prefix: String) -> String  {
        let infix = prefix
        return infix
    }
    
    public func convertPrefixToPostfix(prefix: String) -> String  {
        let postfix = prefix
        return postfix
    }
    
    public func convertPostfixToPrefix(postfix: String) -> String  {
        let postfix = postfix
        return postfix
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
