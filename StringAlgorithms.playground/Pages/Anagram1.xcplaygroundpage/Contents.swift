/*: String Algorithms
# Anagram
 An anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once. For example, the word anagram can be rearranged into "naga ram".
*/

import SwiftDataStructures

/*:
 ### Using sort - O(nlogn)
 */
func areAnagramUsingSort(first: String, second: String) -> Bool {
    // Remove whitespaces.
    let trimmedFirst = first.removingCharacters(in: .whitespaces)
    let trimmedSecond = second.removingCharacters(in: .whitespaces)
    
    // If the count of trimmed strings are not equal, then it can not be an anagram.
    if trimmedFirst.count != trimmedSecond.count { return false }
    
    // Sort both strings.
    let sortedFirst = quickSort(array: Array(trimmedFirst))
    let sortedSecond = quickSort(array: Array(trimmedSecond))
    
    // If both the strings are equal, then it is an anagram otherwise not.
    return sortedFirst == sortedSecond
}

areAnagramUsingSort(first: "abcd", second: "abcd") // true
areAnagramUsingSort(first: "abcd", second: "dcba") // true
areAnagramUsingSort(first: "ab cd", second: "dcba") // true
areAnagramUsingSort(first: "abcdd", second: "dcba") // false
areAnagramUsingSort(first: "abcd", second: "bcde") // false
