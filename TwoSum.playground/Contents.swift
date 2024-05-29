//MARK: Two Sum algorithm

/*
This is a simple one, the idea here is with just one loop, verify the compliment that lacks
to match the target, like if the target is 6, the number in the actual index is 3, so the compliment
of it is 3, so if there is any other 3 in the array so we found the two needed numbers.
The way in swift is just create a dictinary to keep the compliment needed and the index of the original value,
do a for loop verifiy if the value in the actual index value is in the dict if yea we found the compliment and current
index to return, if not so it will fall here in the first loop, it will do the math of target minus the value
and the value will be the index.
*/

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    
    for (index, value) in nums.enumerated() {
        if let compliment = dict[value] {
            return [compliment, index]
        } else {
            dict[target - value] = index
        }
    }
    
    return []
}


print(twoSum([2, 3, 4], 6))
print(twoSum([2, 7, 11, 15], 9))
print(twoSum([3, 3], 6))
print(twoSum([1, 10, 5], 6))
print(twoSum([10, 111, 20, 1, 72], 92))
