//: Playground - noun: a place where people can play

import DataStructures

func swapNumbersXOR(num1: Int, num2: Int) -> (Int, Int) {
    var num1 = num1
    var num2 = num2

    num1 = num1 ^ num2
    num2 = num1 ^ num2
    num1 = num1 ^ num2
    
    return (num1, num2)
}

swapNumbersXOR(num1: 10, num2: 22)

func swapNumbersSum(num1: Int, num2: Int) -> (Int, Int) {
    var num1 = num1
    var num2 = num2
    
    num1 = num1 + num2
    num2 = num1 - num2
    num1 = num1 - num2
    
    return (num1, num2)
}

swapNumbersSum(num1: 10, num2: 22)
