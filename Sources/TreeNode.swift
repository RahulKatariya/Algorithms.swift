//
//  TreeNode.swift
//  SwiftDataStructures
//
//  Created by Rahul Katariya on 14/10/16.
//  Copyright © 2016 RahulKatariya. All rights reserved.
//

import Foundation

public class TreeNode<Element> {
    
    public var value: Element
    
    public var children = [TreeNode]()
    
    public init(value: Element) {
        self.value = value
    }
    
}

extension TreeNode {
    
    public func add(child: TreeNode) {
        children.append(child)
    }
    
}

extension TreeNode: CustomStringConvertible {
    public var description: String {
        var s = "\(value)"
        if !children.isEmpty {
            s += " {" + children.map { $0.description }.joined(separator: ", ") + "}"
        }
        return s
    }
}
