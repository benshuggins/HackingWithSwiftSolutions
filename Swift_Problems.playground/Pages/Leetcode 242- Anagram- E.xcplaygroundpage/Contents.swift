//: [Previous](@previous)

import Foundation
//
//242. Valid Anagram
//Easy
//
//6377
//
//234
//
//Add to List
//
//Share
//Given two strings s and t, return true if t is an anagram of s, and false otherwise.
//
//An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
//
//
//
//Example 1:
//
//Input: s = "anagram", t = "nagaram"
//Output: true
//Example 2:
//
//Input: s = "rat", t = "car"
//Output: false



// THOUGHTS

// This is the least amount of code
// Sort both arrays and then compare them

 
class Solution2 {
        func isAnagram(_ s: String, _ t: String) -> Bool {
            
            guard s.count != t.count else { return false }
            return s.sorted() == t.sorted()

            }
        }

  //  Solution2().isAnagram("rat", "car")

var students = ["Ben", "Ivy", "Jordell", "Maxime"]
if let i = students.firstIndex(of: "Maxime") {
    students[i] = "Max"
}
print(students)
// Prints "["Ben", "Ivy", "Jordell", "Max"]"


// SOLUTION 2 

//You could write a naïve solution to this problem by taking a variable copy of the second input string, then looping over the first string and checking each letter exists in the second. If it does, remove it so it won’t be counted again; if not, return false. If you get to the end of the first string, then return true if the second string copy is now empty, otherwise return false.


func challenge3a(string1: String, string2: String) -> Bool {
   var checkString = string2
   for letter in string1 {
      if let index = checkString.firstIndex(of: letter) {
         checkString.remove(at: index)
      } else {
         return false
      }
}
   return checkString.count == 0
}
