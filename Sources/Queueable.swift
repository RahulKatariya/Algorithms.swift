//
//  Queueable.swift
//  DataStructures-iOS
//
//  Created by Rahul Katariya on 16/06/18.
//  Copyright © 2018 RahulKatariya. All rights reserved.
//

import Foundation

protocol Queueable {
    
    associatedtype Element
    
    mutating func enqueue(_ element: Element)
    mutating func dequeue() -> Element?
    
}
