//: Playground - noun: a place where people can play

import SwiftDataStructures

var str = "Hello, playground"

//BinaryTree
var bst = BinarySearchTree<Int>()
bst.insert(value: 10)
bst.insert(value: 8)
bst.insert(value: 3)
bst.insert(value: 4)
bst.insert(value: 5)
bst.insert(value: 6)
bst.insert(value: 7)
bst.insert(value: 3)

let preOrder = bst.root?.preOrder()
let inOrder = bst.root?.inOrder()
let postOrder = bst.root?.postOrder()

////LinkedList
//var linkedList = LinkedList<Int>()
//linkedList.addFirst(value: 4)
//linkedList.addFirst(value: 3)
//linkedList.addFirst(value: 2)
//linkedList.addFirst(value: 1)
//linkedList.addLast(value: 7)
//linkedList.addLast(value: 8)
//linkedList.addLast(value: 9)
//linkedList.addLast(value: 10)
//linkedList.insert(value: 5, at: 4)
//linkedList.insert(value: 6, at: 5)
//linkedList.remove(at: 9)
//print(linkedList)
//
////Trees
//let root = TreeNode<String>(value: "beverages")
//
//let hotNode = TreeNode<String>(value: "hot")
//let coldNode = TreeNode<String>(value: "cold")
//
//let teaNode = TreeNode<String>(value: "tea")
//let coffeeNode = TreeNode<String>(value: "coffee")
//let chocolateNode = TreeNode<String>(value: "cocoa")
//
//let blackTeaNode = TreeNode<String>(value: "black")
//let greenTeaNode = TreeNode<String>(value: "green")
//let chaiTeaNode = TreeNode<String>(value: "chai")
//
//let sodaNode = TreeNode<String>(value: "soda")
//let milkNode = TreeNode<String>(value: "milk")
//
//let gingerAleNode = TreeNode<String>(value: "ginger ale")
//let bitterLemonNode = TreeNode<String>(value: "bitter lemon")
//
//root.add(child: hotNode)
//root.add(child: coldNode)
//
//hotNode.add(child: teaNode)
//hotNode.add(child: coffeeNode)
//hotNode.add(child: chocolateNode)
//
//coldNode.add(child: sodaNode)
//coldNode.add(child: milkNode)
//
//teaNode.add(child: blackTeaNode)
//teaNode.add(child: greenTeaNode)
//teaNode.add(child: chaiTeaNode)
//
//sodaNode.add(child: gingerAleNode)
//sodaNode.add(child: bitterLemonNode)
//
//let tree = Tree(root: root)
//print(tree)
