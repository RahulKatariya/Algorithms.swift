//
//  Tree.swift
//  DataStructures
//
//  Created by Rahul Katariya on 14/10/16.
//  Copyright © 2016 RahulKatariya. All rights reserved.
//

import Foundation

public class Tree<Element> {
    
    public typealias Node = TreeNode<Element>
    public private(set) var root: Node?
    
    public init() { }
    
    public init(root: Node) {
        self.root = root
    }
    
}

extension Tree: CustomStringConvertible {
    public var description: String {
        if let root = root {
            return "{\(root.description)}"
        }
        return "{}"
    }
}
