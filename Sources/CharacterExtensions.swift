//
//  CharacterExtensions.swift
//  SwiftDataStructures
//
//  Created by Rahul Katariya on 14/05/18.
//  Copyright © 2018 RahulKatariya. All rights reserved.
//

import Foundation

extension Character {
    
    public var ascii: UInt32? {
        return String(self).unicodeScalars.first?.value
    }
    
}
