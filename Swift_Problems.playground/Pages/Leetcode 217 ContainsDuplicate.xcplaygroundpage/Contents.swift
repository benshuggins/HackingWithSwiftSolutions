//: [Previous](@previous)

import Foundation

//Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

//
//Example 1:
//
//Input: nums = [1,2,3,1]
//Output: true
//Example 2:
//
//Input: nums = [1,2,3,4]
//Output: false
//Example 3:
//
//Input: nums = [1,1,1,3,3,4,3,2,4,2]
//Output: true


// This is a very simple problem that can be solved quickly with a set. A set can only accept unique values.

// First Soltution

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        return Set(nums).count != nums.count
    }
}

//let answer = Solution().containsDuplicate([1,2,3,1])


// Second Solution can use a dictionary. We convert the array to a dictionary of type [(key) Array items : (value) index of array Items]. We check to see if there is already a value inside the dictionary that matches the item we are checking in the array. If there is a duplicate then return true. Dictionaries cant have more than one key.


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

// In this problem we are looping through an array and each element we are checking if we can add a value into a dictionary. If the value for a num in dictionary is nil it means that we dont have a value so add 1 for that value 

// if any value appears twice return true
func containsDuplicate4(_ nums: [Int]) -> Bool {
        var numDictionary = [Int:Int]()
        
        for num in nums {
            if numDictionary[num] == nil { // if it's empty add 1
                numDictionary[num] = 1
                print(numDictionary)
            }
            else {                      // if its not empty return true because that means the array has 2 values
                return true
            }
        }
        return false
    }
containsDuplicate4([1,2,3,1])
