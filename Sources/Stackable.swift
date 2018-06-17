//
//  Stackable.swift
//  DataStructures-iOS
//
//  Created by Rahul Katariya on 16/06/18.
//  Copyright © 2018 RahulKatariya. All rights reserved.
//

import Foundation

protocol Stackable {
    
    associatedtype Element
    
    mutating func push(_ element: Element)
    mutating func pop() -> Element?
    
}
