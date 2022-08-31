import Foundation

//35. Search Insert Position
//Easy

//Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
//
//You must write an algorithm with O(log n) runtime complexity.

//Example 1:
//
//Input: nums = [1,3,5,6], target = 5
//Output: 2
//Example 2:
//
//Input: nums = [1,3,5,6], target = 2
//Output: 1
//Example 3:
//
//Input: nums = [1,3,5,6], target = 7
//Output: 4



    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        var dict = [Int: Int]()
        var n = nums.count
        var answerIndex: Int = 0
        
        
        
        for (index, item) in nums.enumerated() {
            
            if dict[target] != nil {
               print(index)
            }
            
            
            dict[item] = index
            print("dict: ", dict)
            
        }

        return answerIndex
        
    }

//searchInsert([1,3,5,6], 5)


    func searchInsert2(_ nums: [Int], _ target: Int) -> Int {
        for i in 0...nums.count-1 {
            if nums[i] >= target {
                return i
            }
        }
        return nums.count
    }


searchInsert2([1,3,5,6], 2)





func containsDuplicate2(_ nums: [Int]) -> Bool {
    var dict = [Int: Int]()
    for (index, items) in nums.enumerated() {
        if dict[items] != nil {
            return true
        }
        dict[items] = index
        print("dict", dict)
    }
return false
}

//let answer2 = containsDuplicate2([1,2,3,1])

