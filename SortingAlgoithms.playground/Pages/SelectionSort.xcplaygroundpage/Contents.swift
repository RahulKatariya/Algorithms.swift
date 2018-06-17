//: [Previous](@previous)
/*: Sorting Algorithms
 ### Selection Sort - O(n^2)
 
 The selection sort algorithm sorts an array by repeatedly finding the minimum element (considering ascending order) from unsorted part and putting it at the beginning. The algorithm maintains two subarrays in a given array.
 
 1. The subarray which is already sorted.
 2. Remaining subarray which is unsorted.
 */

//import DataStructures

func selectionSort<T: Comparable>(array: [T]) -> [T] {
    var array = array
    for i in 0..<array.count {
        print(i, array[i])
        for j in i+1..<array.count {
            print(i, j, array[i])
            var firstValue = array[i]
            var currentValue = array[j]
            if firstValue > currentValue {
                array[j] = firstValue
                array[i] = currentValue
            }
        }
    }
    return array
}

selectionSort(array: [5,3,4,1,2]) // 1,2,3,4,5
//selectionSort(array: ["e","c","d","b","a"]) // a,b,c,d,e

//: [Next](@next)
