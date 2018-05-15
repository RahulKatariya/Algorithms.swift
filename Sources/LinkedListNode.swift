//
//  LinkedListNode.swift
//  DataStructures
//
//  Created by Rahul Katariya on 14/10/16.
//  Copyright © 2016 RahulKatariya. All rights reserved.
//

import Foundation

public class LinkedListNode<Element> {
    
    public var value: Element
    var next: LinkedListNode?
    
    public init(value: Element) {
        self.value = value
    }
    
}
