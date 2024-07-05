//MARK: Binary Search algorithm

/*
 This is a simple algorithm where you look for the index in the array.
 halving the array each time it loops, getting to the middle value
 check if it is the target, if not update the low or the high index
 cut it in half.
 It has O(log n) time complexity and O(1) for space complexity.
*/

import Foundation

func binarySearch(_ nums: [Int], _ target: Int) -> Int {
    var low = 0
    var high = nums.count - 1
    
    while low <= high {
        var middle = (high + low) / 2
        if nums[middle] == target {
            return middle
        }
        if nums[middle] < target {
            low = middle + 1
        } else if nums[middle] > target {
            high = middle - 1
        }
    }
    
    return -1
}


func createOrderedArray() -> [Int] {
    var arrayToReturn = [Int]()
    for num in 0..<20 {
        let randomNumber = Int.random(in: 0..<40)
        if !arrayToReturn.contains(randomNumber) {
            arrayToReturn.append(randomNumber)
        }
    }
    arrayToReturn.sort()
    
    return arrayToReturn
}

func targetValueForOrderedArray(arr: [Int]) -> Int {
    let randonIndexToReturn = Int.random(in: 0..<arr.count - 1)
    for index in arr.indices {
        if index == randonIndexToReturn {
            return arr[index]
        }
    }
    
    return -1
}

func testBinarySeachResult(_ index: Int, _ IndexInArray: Int) -> Bool {
    return index == IndexInArray
}

let array1 = createOrderedArray()
let array2 = createOrderedArray()
let array3 = createOrderedArray()
let array4 = createOrderedArray()
let array5 = createOrderedArray()
let array6 = createOrderedArray()
let array7 = createOrderedArray()

let targetValurForArray1 = targetValueForOrderedArray(arr: array1)
let targetValurForArray2 = targetValueForOrderedArray(arr: array2)
let targetValurForArray3 = targetValueForOrderedArray(arr: array3)
let targetValurForArray4 = targetValueForOrderedArray(arr: array4)
let targetValurForArray5 = targetValueForOrderedArray(arr: array5)
let targetValurForArray6 = targetValueForOrderedArray(arr: array6)
let targetValurForArray7 = targetValueForOrderedArray(arr: array7)

let binarySearchResultArray1 = binarySearch(array1, targetValurForArray1)
let binarySearchResultArray2 = binarySearch(array2, targetValurForArray2)
let binarySearchResultArray3 = binarySearch(array3, targetValurForArray3)
let binarySearchResultArray4 = binarySearch(array4, targetValurForArray4)
let binarySearchResultArray5 = binarySearch(array5, targetValurForArray5)
let binarySearchResultArray6 = binarySearch(array6, targetValurForArray6)
let binarySearchResultArray7 = binarySearch(array7, targetValurForArray7)

let firstIndexOfTargetValurForArray1 = array1.firstIndex(of: targetValurForArray1) ?? 0
let firstIndexOfTargetValurForArray2 = array2.firstIndex(of: targetValurForArray2) ?? 0
let firstIndexOfTargetValurForArray3 = array3.firstIndex(of: targetValurForArray3) ?? 0
let firstIndexOfTargetValurForArray4 = array4.firstIndex(of: targetValurForArray4) ?? 0
let firstIndexOfTargetValurForArray5 = array5.firstIndex(of: targetValurForArray5) ?? 0
let firstIndexOfTargetValurForArray6 = array6.firstIndex(of: targetValurForArray6) ?? 0
let firstIndexOfTargetValurForArray7 = array7.firstIndex(of: targetValurForArray7) ?? 0

testBinarySeachResult(binarySearchResultArray1, firstIndexOfTargetValurForArray1)

testBinarySeachResult(binarySearchResultArray2, firstIndexOfTargetValurForArray2)

testBinarySeachResult(binarySearchResultArray3, firstIndexOfTargetValurForArray3)

testBinarySeachResult(binarySearchResultArray4, firstIndexOfTargetValurForArray4)


testBinarySeachResult(binarySearchResultArray5, firstIndexOfTargetValurForArray5)

testBinarySeachResult(binarySearchResultArray6, firstIndexOfTargetValurForArray6)

testBinarySeachResult(binarySearchResultArray7, firstIndexOfTargetValurForArray7)



