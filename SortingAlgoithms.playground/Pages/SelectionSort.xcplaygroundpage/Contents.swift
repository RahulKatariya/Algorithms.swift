//: [Previous](@previous)
/*: Sorting Algorithms
 ### Selection Sort - O(n2)
 
 The selection sort algorithm sorts an array by repeatedly finding the minimum element (considering ascending order) from unsorted part and putting it at the beginning. The algorithm maintains two subarrays in a given array.
 
 1. The subarray which is already sorted.
 2. Remaining subarray which is unsorted.
 */

func selectionSort<T: Comparable>(array: [T]) -> [T] {
    var array = array
    var i = 0
    while i < array.count {
        
        i = i+1
    }
    return array
}

selectionSort(array: [4,3,5,2,1]) // 1,2,3,4,5
selectionSort(array: ["e","c","d","b","a"]) // a,b,c,d,e

//: [Next](@next)
