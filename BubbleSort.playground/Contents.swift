//MARK: Bubble Sort algorithm

/*
 So it is a not so effecient algorithm where it goes twice in the
 same array, verifying if the actual value is greater than the next value
 until it reaches the last value minus 1 minus the position in the index, so it
 will be - 1 than - 2 than - 3.
 It has O(n²) time complexity and O(1) for space complexity.
*/

func bubbleSort(arr: inout [Int]) {
    for i in arr.indices {
        for j in 0..<(arr.count - 1) - i {
            if arr[j] > arr[j + 1] {
                let temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
            }
        }
    }
}

var array: [Int] = [244, 4, 5, 1, 10, 34, 2, 11, 200]

bubbleSort(arr: &array)
print(array)
