//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//567. Permutation in String
//Medium
//
//
//Share
//Given two strings s1 and s2, return true if s2 contains a permutation of s1, or false otherwise.
//
//In other words, return true if one of s1's permutations is the substring of s2.
//
//
//
//Example 1:
//
//Input: s1 = "ab", s2 = "eidbaooo"
//Output: true
//Explanation: s2 contains one permutation of s1 ("ba").
//Example 2:
//
//Input: s1 = "ab", s2 = "eidboaoo"
//Output: false

// Permutation is a reordering in any order

// could a set work??

// Need to check that consecutive s1 elements are present in s2 in any order
//class Solution {
//    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
//
//        guard s1 == s2 else {return true}
//
//        var permutation = Array(s1 + s1)  // abab
//
//        var s1Reversed = String(s1.reversed())
//        var setS1 = Set(permutation)
//
//        print(setS1)
//
//        if s2.contains(setS1) {
//            return true
//        } else {
//
//        return false
//    }
//
//    }
//}
//
////print(Solution().checkInclusion("ab", "eidbaooo")) // true
//
////print(Solution().checkInclusion("ab", "eidboaoo")) // false
//
////print(Solution().checkInclusion("ab", "ab"))  // true
//
//print(Solution().checkInclusion("abc", "bbbca")) // true



// We are just adding left and right together over and over for the same for loop
func challenge14(string : String, string2: String, current: String = "") -> Bool {
   let length = string.count
   let strArray = Array(string)
   
    if (length == 0) {
  print(current)
      print("******")
   } else {
      print(current)
      // loop through every character
      for i in 0 ..< length {
         // get the letters before me
         let left = String(strArray[0 ..< i])
         // get the letters after me
         let right = String(strArray[i+1 ..< length])
         // put those two together and carry on
          print("left : ", left)
          print("right: ", right)
          print("current: ", current + String(strArray[i]))
       
          
          challenge14(string: left + right, string2: string2, current: current +
String(strArray[i]))
          
}
       
   }
    
    if string2.contains(current) {
        return true
    } else {
        
        return false
    }
    
    
}

challenge14(string: "ab", string2: "eidbaooo") // true

//s1 = "ab", s2 = "eidbaooo" // true
