//
//  StringExtensions.swift
//  DataStructures
//
//  Created by Rahul Katariya on 15/05/18.
//  Copyright © 2018 RahulKatariya. All rights reserved.
//

import Foundation

extension String {
 
    public func removingCharacters(in characterSet: CharacterSet) -> String {
        return components(separatedBy: characterSet).joined()
    }
    
}
