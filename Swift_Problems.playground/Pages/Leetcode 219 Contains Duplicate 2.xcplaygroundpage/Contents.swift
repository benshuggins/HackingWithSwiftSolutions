// LEETCODE PROBLEM 219 https://leetcode.com/problems/contains-duplicate-ii/

import Foundation

//Given an integer array nums and an integer k, return true if there are two distinct indices i and j in the array such that nums[i] == nums[j] and abs(i - j) <= k.

//Example 1:
//
//Input: nums = [1,2,3,1], k = 3
//Output: true
//Example 2:
//
//Input: nums = [1,0,1,1], k = 1
//Output: true
//Example 3:
//
//Input: nums = [1,2,3,1,2,3], k = 2
//Output: false


class Solution {
    
func containsNearbyDuplicate (_ nums: [Int], _ k: Int) ->Bool {
    var dict = [Int:Int]() // [arr item: index position]

    var minDist = Int.max
 
    for (index, item) in nums.enumerated() {
      
        // If there is a duplicate index, or a second value
        if dict[item] != nil {
            
            let prevIndex = dict[item]!
            let gap = index - prevIndex
            minDist = min(gap, minDist)
        }
        dict[item] = index
        
        if minDist <= k {
            return true
        }
    }
    return false

    }
}

let answer = Solution().containsNearbyDuplicate([1,2,3,1,2,3], 2)
