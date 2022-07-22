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


//BENS NOTES ON THE PROBLEM:
// OUR TARGET SUM IS 0

// we could check if 2 items added together equals 0 and then we could see if the third item also add to 0, so check 2 first .

//class Solution {
//    func threeSum(_ nums: [Int]) -> [Int] {
//        
//       var dict = [Int:Int]()   //[index: item]
//        
//        for (i, n) in nums.enumerated() {
//            
//            print("i: \(i), n: \(n)")
//            
//            if nums[i] + nums[i+1]
//            
//            dict[i] = n
//            print("dict: ", dict)
//            
//        }
//        return []
//    }
//}
//
//print(Solution().threeSum([-1,0,1,2,-1,-4]))
