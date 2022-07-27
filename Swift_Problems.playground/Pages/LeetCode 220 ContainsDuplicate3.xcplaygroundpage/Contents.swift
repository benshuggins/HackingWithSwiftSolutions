//: [Previous](@previous)

import Foundation

//Given an integer array nums and two integers k and t, return true if there are two distinct indices i and j in the array such that abs(nums[i] - nums[j]) <= t and abs(i - j) <= k.
//
// Value = t
// Index Spread = k

// First thoughts are that
// 1) - 2 indices who have corresponding value spread is less than t
// 2) - 2 indices wh0 themselves are less than k


class Solution {

func containsNearbyAlmostDuplicate(_ nums1: [Int], k: Int, t: Int) -> Bool {

    var dict = [Int:Int]() //[array item: array item index]
    
    var nums = nums1.sorted()

    for (index, item) in nums.enumerated() {
      
        var i = index
        var j = index+1

        if dict[item] != nil {

           // let prevIndex = dict[item]!
            var indexSpread = abs(i - j)

           // minDistIndex = min(UInt(indexSpread), minDistIndex)

            let valueSpread = abs(nums[i] - nums[j])
            
            
           // minValueSpread = min(UInt(valueSpread), minValueSpread)
            
            if valueSpread > t && i == k { return false }

            if indexSpread > k {
                return false
            }

        }

        dict[item] = index
        print("Dict: ", dict)
        
        
       
    }
    return true
}
}
//print(Solution().containsNearbyAlmostDuplicate([8,7,15,1,6,1,9,15], k: 1, t: 3)) // answer is true
                             //  Index //abs(i - j) <= k
                             //  value //abs(nums[i] - nums[j]) <= t



class Solution2 {
    func containsNearbyAlmostDuplicate(_ nums: [Int], _ k: Int, _ t: Int) -> Bool {
        let sortedIndices = nums.indices.sorted{ nums[$0] < nums[$1] } // we can sort indices or items
        let sortedArray = nums.sorted()
        print("sortedIndices", sortedIndices)
        print("sortedArray", sortedArray)
        for (index, i) in sortedIndices.dropLast().enumerated() {
           print("index: \(index), i: \(i)")
            for j in sortedIndices[(index+1)...] where nums[j] - nums[i] <= t {
                if abs(i - j) <= k {
                    return true
                }
            }
        }
        return false
    }
}

print(Solution2().containsNearbyAlmostDuplicate([8,7,15,1,6,1,9,15], 1, 3)) // answer is true
