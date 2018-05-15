//: [Previous](@previous)
/*: String Algorithms
 # Anagram
 An anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once. For example, the word anagram can be rearranged into "naga ram".
 */

import SwiftDataStructures

/*:
 ### Using count - O(n)
 */
func areAnagramUsingCount(first: String, second: String) -> Bool {
    // Remove whitespaces
    let trimmedFirst = first.removingCharacters(in: .whitespaces)
    let trimmedSecond = second.removingCharacters(in: .whitespaces)
    
    // If the count of trimmed strings are not equal, then it can not be an anagram.
    if trimmedFirst.count != trimmedSecond.count { return false }
    
    // Create a count dict of total unicode characters prefilled with 0.
    let keys: [UInt32] = Array(1...100)
    var countDict = Dictionary(uniqueKeysWithValues: keys.lazy.map {($0, 0)})
    
    // Increase count dict by 1 for character in first word and decrease by 1 for character in second word.
    zip(Array(trimmedFirst), Array(trimmedSecond)).forEach {
        countDict[$0.0.ascii!] = countDict[$0.0.ascii!]! + 1
        countDict[$0.1.ascii!] = countDict[$0.1.ascii!]! - 1
    }
    
    // If the value of all keys in count dict is 0, then it is an anagram otherwise not.
    return countDict.keys.reduce(true, { $0 && countDict[$1] == 0 })
}

areAnagramUsingCount(first: "abcd", second: "abcd") // true
areAnagramUsingCount(first: "abcd", second: "dcba") // true
areAnagramUsingCount(first: "ab cd", second: "dcba") // true
areAnagramUsingCount(first: "abcdd", second: "dcba") // false
areAnagramUsingCount(first: "abc", second: "bcd") // false

//: [Next](@next)
