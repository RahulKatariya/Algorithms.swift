/*: Sorting Algorithms
 ### Bubble Sort - O(n2)
 
 Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping the adjacent elements if they are in wrong order.
 */

func bubbleSort<T: Comparable>(array: [T]) -> [T] {
    var array = array
    var i = 0
    while i < array.count {
        var j = i
        while j < array.count {
            let previousValue = array[i]
            let nextValue = array[j]
            if nextValue < previousValue {
                array[j] = previousValue
                array[i] = nextValue
            }
            j = j+1
        }
        i = i+1
    }
    return array
}

bubbleSort(array: [4,3,5,2,1]) // 1,2,3,4,5
bubbleSort(array: ["e","c","d","b","a"]) // a,b,c,d,e
