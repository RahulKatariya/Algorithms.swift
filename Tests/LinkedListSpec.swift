//
//  LinkedListSpec.swift
//  DataStructures
//
//  Created by Rahul Katariya on 13/10/16.
//  Copyright © 2016 RahulKatariya. All rights reserved.
//

import Quick
import Nimble
@testable import SwiftDataStructures

class LinkedListSpec: QuickSpec {
    
    override func spec() {
        
        describe("LinkedList") {
            
//            it("is empty list") {
//                let linkedList = LinkedList<String>()
//                expect(linkedList.isEmpty) == true
//                expect(linkedList.count) == 0
//                expect(linkedList.node(at: 0)?.value).to(beNil())
//                expect(linkedList.first).to(beNil())
//                expect(linkedList.last).to(beNil())
//            }
//            
//            it("has a single item") {
//                let linkedList = LinkedList<String>()
//                linkedList.append(value: "Swift")
//                expect(linkedList.first?.value) == "Swift"
//                expect(linkedList.last?.value) == "Swift"
//                expect(linkedList.count) == 1
//                expect(linkedList.node(at: 0)?.value) == "Swift"
//                expect(linkedList.node(at: 1)?.value).to(beNil())
//            }
//            
//            it("has two items") {
//                let linkedList = LinkedList<String>()
//                linkedList.append(value: "Swift")
//                linkedList.append(value: "Hello")
//                expect(linkedList.first?.value) == "Hello"
//                expect(linkedList.last?.value) == "Swift"
//                expect(linkedList.count) == 2
//                expect(linkedList.node(at: 0)?.value) == "Hello"
//                expect(linkedList.node(at: 1)?.value) == "Swift"
//                expect(linkedList.node(at: 2)?.value).to(beNil())
//            }
//            
//            it("has five items") {
//                let linkedList = LinkedList<String>()
//                linkedList.append(value: "Rahul")
//                linkedList.append(value: "From")
//                linkedList.append(value: "DataStructures")
//                linkedList.append(value: "Swift")
//                linkedList.append(value: "Hello")
//                expect(linkedList.first?.value) == "Hello"
//                expect(linkedList.last?.value) == "Rahul"
//                expect(linkedList.count) == 5
//                expect(linkedList.node(at: 0)?.value) == "Hello"
//                expect(linkedList.node(at: 1)?.value) == "Swift"
//                expect(linkedList.node(at: 2)?.value) == "DataStructures"
//                expect(linkedList.node(at: 3)?.value) == "From"
//                expect(linkedList.node(at: 4)?.value) == "Rahul"
//                expect(linkedList.node(at: 5)?.value).to(beNil())
//                expect(linkedList.node(fromLast: 0)?.value) == "Rahul"
//                expect(linkedList.node(fromLast: 1)?.value) == "From"
//                expect(linkedList.node(fromLast: 2)?.value) == "DataStructures"
//                expect(linkedList.node(fromLast: 3)?.value) == "Swift"
//                expect(linkedList.node(fromLast: 4)?.value) == "Hello"
//                expect(linkedList.node(fromLast: 5)?.value).to(beNil())
//            }
//            
//            it("inserts value at index") {
//                let linkedList = LinkedList<String>()
//                linkedList.append(value: "Rahul")
//                linkedList.append(value: "From")
//                linkedList.append(value: "Swift")
//                linkedList.append(value: "Hello")
//                linkedList.insert(value: "DataStructures", at: 2)
//                linkedList.insert(value: "Katariya", at: 5)
//                expect(linkedList.node(at: 0)?.value) == "Hello"
//                expect(linkedList.node(at: 1)?.value) == "Swift"
//                expect(linkedList.node(at: 2)?.value) == "DataStructures"
//                expect(linkedList.node(at: 3)?.value) == "From"
//                expect(linkedList.node(at: 4)?.value) == "Rahul"
//                expect(linkedList.node(at: 5)?.value) == "Katariya"
//            }
            
        }
        
    }
    
}
