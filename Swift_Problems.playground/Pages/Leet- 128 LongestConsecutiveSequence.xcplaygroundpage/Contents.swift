//: [Previous](@previous)

import Foundation

//128. Longest Consecutive Sequence
//Medium
//
//Example 1:
//
//Input: nums = [100,4,200,1,3,2]
//Output: 4
//Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.
//Example 2:
//
//Input: nums = [0,3,7,2,5,8,4,6,0,1]
//Output: 9



func longestConsecutive(_ nums: [Int]) -> Int {
        var res = 0
        var map = [Int:Bool]()
        
    for n in nums {
        map[n] = true }
         print("map: ", map)
        
        for var num in nums where map[num-1] != true {
            print(num)
            var c = 1
            num+=1
            while map[num] == true {
                c+=1
                num+=1
                print("map: ", map)
            }
            print("map: ", map)
            print("res: ", res)
            print("c: ", c)
            res = max(res,c) // take the highest c value
        }
        return res
    }

print(longestConsecutive([100,4,200,1,3,2]))


class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
      var set = Set(nums)
      var maxSeq = 0
      
      for num in set{
        if !set.contains(num - 1){ // if num - 1 is not in set, this is the start of a sequence
          var cur = num + 1
          while set.contains(cur){ // while the next higher number is in the set we have a sequence that we can count
            set.remove(cur)
            cur += 1
          }
          maxSeq = cur - num > maxSeq ? cur - num : maxSeq // update the max sequence
        }
      }
      
      return maxSeq
    }
}



//
//var numbers = [2, 3, 4, 6, 9]
//let theNumber = 4
//print("Numbers old: \(numbers)")
//for var number in numbers {
//    if number == theNumber {
//        print("Numbers are identical")
//        number = 10
//        /*save the changed number in array*/
//    }
//}
//print("Numbers new: \(numbers)")
