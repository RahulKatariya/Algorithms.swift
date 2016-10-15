//
//  BinaryTreeNode.swift
//  SwiftDataStructures
//
//  Created by Rahul Katariya on 14/10/16.
//  Copyright © 2016 RahulKatariya. All rights reserved.
//

import Foundation

public class BinaryTreeNode<Element: Comparable> {
    
    public var value: Element
    weak var parent: BinaryTreeNode?
    public var left: BinaryTreeNode?
    public var right: BinaryTreeNode?
    
    public init(value: Element) {
        self.value = value
    }
    
}

///Traversals
extension BinaryTreeNode {
    
    public func preOrder() -> [Element] {
        let node = self
        var elements = [Element]()
        var stack = StackArray<BinaryTreeNode>()
        stack.push(value: node)
        while !stack.isEmpty {
            let topNode = stack.pop()
            elements.append(topNode!.value)
            if let right = topNode?.right {
                stack.push(value: right)
            }
            if let left = topNode?.left {
                stack.push(value: left)
            }
        }
        return elements
    }
    
    public func inOrder() -> [Element] {
        let node = self
        var elements = [Element]()
        var stack = StackArray<BinaryTreeNode>()
        var parent: BinaryTreeNode? = node
        while parent != nil {
            stack.push(value: parent!)
            parent = parent?.left
        }
        while !stack.isEmpty {
            var topNode = stack.pop()
            elements.append(topNode!.value)
            if topNode?.right != nil {
                topNode = topNode?.right!
                while topNode != nil {
                    stack.push(value: topNode!)
                    topNode = topNode?.left
                }
            }
        }
        return elements
    }
    
    public func postOrder() -> [Element] {
        let node = self
        var elements = [Element]()
        var stack = StackArray<BinaryTreeNode>()
        stack.push(value: node)
        while !stack.isEmpty {
            let topNode = stack.pop()
            elements.append(topNode!.value)
            if let left = topNode?.left {
                stack.push(value: left)
            }
            if let right = topNode?.right {
                stack.push(value: right)
            }
        }
        return elements
    }
    
}
