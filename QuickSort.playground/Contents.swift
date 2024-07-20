//MARK: Quick sort algorithm

/*
 This is a sorting algorithm, where it take a pivot value, and verifies
 the values that are less, equal and greated in a loop, so calling
 recusiverly the method, it will get this new splited array and
 verfies which one is less, equal or greater, this until all the array is sorted.
 It has O(nlog n) in the best and avarege scenarious or O(n²) and
 time complexity and O(1) for space complexity.
*/


func quickSort(arr: [Int]) -> [Int] {
    
    var lessVal = [Int]()
    var equalVal = [Int]()
    var greaterVal = [Int]()
    
    if arr.count > 1 {
        let pivotVal = arr[arr.count / 2]
        
        for x in arr {
            if x < pivotVal {
                lessVal.append(x)
            }
            
            if x == pivotVal {
                equalVal.append(x)
            }
            
            if x > pivotVal {
                greaterVal.append(x)
            }
        }
        
        return quickSort(arr: lessVal)+equalVal+quickSort(arr: greaterVal)
    }
    
    
    return arr
}

var unsortedArray = [4, 22, 1, 33, 14, 2, 9, 10]

print(quickSort(arr: unsortedArray))
