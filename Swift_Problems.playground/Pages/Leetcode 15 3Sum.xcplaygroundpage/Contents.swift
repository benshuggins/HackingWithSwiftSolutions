//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.
//
//Notice that the solution set must not contain duplicate triplets.
//
//Input: nums = [-1,0,1,2,-1,-4]
//Output: [[-1,-1,2],[-1,0,1]]
//Explanation:
//nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
//nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
//nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
//The distinct triplets are [-1,0,1] and [-1,-1,2].
//Notice that the order of the output and the order of the triplets does not matter.


//
//Input: nums = [-1,0,1,2,-1,-4]
//Output: [[-1,-1,2],[-1,0,1]]
//Explanation:
//nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
//nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
//nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
//The distinct triplets are [-1,0,1] and [-1,-1,2].
//Notice that the order of the output and the order of the triplets does not matter.
//Example 2:
//
//Input: nums = [0,1,1]
//Output: []
//Explanation: The only possible triplet does not sum up to 0.
//Example 3:
//
//Input: nums = [0,0,0]
//Output: [[0,0,0]]
//Explanation: The only possible triplet sums up to 0.


//BENS NOTES ON THE PROBLEM:
// OUR TARGET SUM IS 0

// we could check if 2 items added together equals 0 and then we could see if the third item also add to 0, so check 2 first .

// Find 3 numbers in the array that when added together equal 0.

// !! You cant check 2 at a time because they might not need to equal 0 for instance -1+-1 = -2 and a third + 2 would equal 0. You have to check 3 at a time!! So the compliment is checked after the first 2 have been added together

// Find a compliment that when added to the first two equals 0 .


//////////////////
////// We have 3 subscripts when added together all equal 0
///i != j, i != k, and j != k
/// But

///
/// Rule #1 is that all subscrpts have to be unique
/// Rule #2 nums[i] + nums[j] + nums[k] == 0
///
/// 

// let negatives = array.filter { $0 < 0 }

class Solution {
    func threeSum(_ nums: [Int]) -> [Int] {
        
        guard nums.count >= 3 else { return [] }
        
        let negatives = nums.filter { $0 < 0 }
        let positives = nums.filter {$0 >= 0 }
       // var result = Array<Any>()
        print("negatives: ", negatives)
        print("positives: ", positives)
        
        
        for i in nums {
            if negatives[i] + negatives[i+1] + positives[i] == 0 {
                print("[negatives[i], negatives[i+1], positives[i]]")
            }
      
            
        }
        
        
        return []
    }
}

print(Solution().threeSum([-1,0,1,2,-1,-4]))









//
//            if nums[i] + nums[j] + nums[k] == 0 && i != j, i != k, j != k  {
//                return [nums[i], nums[j], nums[k]]
//
//            } else {
//                return []
//            }
