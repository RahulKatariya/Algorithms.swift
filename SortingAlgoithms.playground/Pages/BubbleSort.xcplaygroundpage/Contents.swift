/*: Sorting Algorithms
 ### Bubble Sort - O(n^2)
 
 Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping the adjacent elements if they are in wrong order.
 */

import DataStructures

func bubbleSort<T: Comparable>(array: [T]) -> [T] {
    var array = array
    // Run the sort block {array.count} times to push the maximum value to the end of unsorted block
    for i in 0..<array.count {
        // Iterate over the array and swap adjacent values in the unsorted array.
        for j in 0..<array.count-1-i {
            let currentValue = array[j]
            let nextValue = array[j+1]
            if nextValue < currentValue {
                array[j+1] = currentValue
                array[j] = nextValue
            }
        }
    }
    return array
}

bubbleSort(array: [4,3,5,2,1]) // 1,2,3,4,5
bubbleSort(array: ["e","c","d","b","a"]) // a,b,c,d,e
