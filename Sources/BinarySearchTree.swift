//
//  BinarySearchTree.swift
//  SwiftDataStructures
//
//  Created by Rahul Katariya on 14/10/16.
//  Copyright © 2016 RahulKatariya. All rights reserved.
//

import Foundation

public struct BinarySearchTree<Element: Comparable> {
    
    public typealias Node = BinaryTreeNode<Element>
    public private(set) var root: Node?
    
    public init() {}
    
    public mutating func insert(value: Element) {
        guard let r = root else { root = Node(value: value); return}
        var parent: Node? = r
        let newNode = Node(value: value)
        while case let p? = parent {
            if value > p.value {
                if p.right != nil {
                    parent = parent?.right
                } else {
                    p.right = newNode
                }
            } else {
                if p.left != nil {
                    parent = parent?.left
                } else {
                    p.left = newNode
                }
            }
        }
    }
    
}
