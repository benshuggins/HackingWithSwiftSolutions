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

// Thoughts:

// Check if subsequence has a left neighbor
// convert the array to a set

// Sorting is O(nlogn) so its too slow for linear time
// I was missing something: Longest consecutive sequence is 1 incrementing (has to be inorder)

// Count each letter find the most common subsequence

// How to find longest subsequence??, sort the array, remove group by length with uniquing keys in dictionary

// find where length of iteration element changes


func longestConsecutive(_ nums: [Int]) -> Int {
      if nums.isEmpty { return 0 }
      if nums.count == 1 { return 1 }
      
      let distinctNums = Set(nums)
      let sorted = distinctNums.sorted()

      var prev = sorted[0]
      var count = 1
      var maxCount = 0
      for i in 1..<sorted.count {
          if sorted[i] == prev+1 {
              count += 1
              maxCount = max(maxCount, count)
          }
          else {
              count = 1
          }
          prev = sorted[i]
      }
      maxCount = max(maxCount, count)
      return maxCount
  }

print(longestConsecutive([100,4,200,1,3,2]))



// Here is an easy Solution:

// Remember Consecutive Sequence is referred to whole numbers, incrementing one after the other.

// Sort it first

// we want to line up previous lags 1 behind nums, so if previous + 1 == nums then we know we are incrementing by 1 and we want to increase our maxCount, else we havent incremented by 1 so increase our tempMax by 1. then our previousNumber is assigned to. We wouldnt make it inside the for loop for instance because previousNumber may be 100 and so nums == 101 doesn't work

// The trick is that previous starts out as 1 and has to remain behind nums by 1 because that is our check to see if nums == lastNumber + 1, and if it does then we know we have incremented by 1 from teh last numebr

class SolutionEasy {
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return nums.count }
        
        let sortedNums: [Int] = Array(Set(nums)).sorted()
        var maxCount: Int = 1   // because we wont make it in tne first iteration
        var tmpMax: Int = 1
        guard var previousNumber: Int = sortedNums.first else { // previous number is the first element in sorteNums
            return 0
        }
        print("sortedNums: ", sortedNums)
        
        for num in sortedNums {   //1,2,3,4,100,200
          
            print("previousNumber + 1: ", previousNumber + 1)   // or lowest Number
            if num == previousNumber + 1 { //n - 2, p - 2 //
                print("num: ", num)
               
                tmpMax += 1             // 2
                maxCount = max(maxCount, tmpMax)
                print("maxCount: ", maxCount)
            } else {
                tmpMax = 1
            }
            
            previousNumber = num
            print("previousNumber: ", previousNumber)
        }
        
        return maxCount
    }
}
print(SolutionEasy().longestConsecutive([100,4,200,2,3,1]))


// Longest Sequence thoughts:

// We cant use a sorted Array because sort is O(nlogn) so we have to use a Set.










//func longestConsecutive(_ nums: [Int]) -> Int {
//        var res = 0
//        var map = [Int:Bool]()
//
//    for n in nums {
//        map[n] = true }
//         print("map: ", map)
//
//        for var num in nums where map[num-1] != true {
//            print(num)
//            var c = 1
//            num+=1
//            while map[num] == true {
//                c+=1
//                num+=1
//                print("map: ", map)
//            }
//            print("map: ", map)
//            print("res: ", res)
//            print("c: ", c)
//            res = max(res,c) // take the highest c value
//        }
//        return res
//    }
//
//print(longestConsecutive([100,4,200,1,3,2]))
//
//
//class Solution {
//    func longestConsecutive(_ nums: [Int]) -> Int {
//      var set = Set(nums)
//      var maxSeq = 0
//
//      for num in set{
//        if !set.contains(num - 1){ // if num - 1 is not in set, this is the start of a sequence
//          var cur = num + 1
//          while set.contains(cur){ // while the next higher number is in the set we have a sequence that we can count
//            set.remove(cur)
//            cur += 1
//          }
//          maxSeq = cur - num > maxSeq ? cur - num : maxSeq // update the max sequence
//        }
//      }
//
//      return maxSeq
//    }
//}



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





