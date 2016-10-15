//
//  LinearSearch.swift
//  SwiftDataStructures
//
//  Created by Rahul Katariya on 15/10/16.
//  Copyright © 2016 RahulKatariya. All rights reserved.
//

import Foundation

func linearSearch<T: Equatable>(_ array: [T], _ object: T) -> Int? {
    for (index, obj) in array.enumerated() where obj == object {
        return index
    }
    return nil
}
