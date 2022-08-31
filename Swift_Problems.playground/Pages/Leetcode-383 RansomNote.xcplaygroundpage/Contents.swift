//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//383. Ransom Note
//
//Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.
//
//Each letter in magazine can only be used once in ransomNote.
//
//
//
//Example 1:
//
//Input: ransomNote = "a", magazine = "b"
//Output: false
//Example 2:
//
//Input: ransomNote = "aa", magazine = "ab"
//Output: false

//"aab"
//"baa"

// you cant use contains because it just checks on element against a string or an array

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
      
        guard ransomNote.count <= magazine.count else {return false}
        var magazineDict = [Character: Int]()
        
        for letter in magazine {
            if magazineDict[letter] != nil {
                magazineDict[letter]! += 1
            } else {
                magazineDict[letter] = 1
            }
        }
     
        
        for letter in ransomNote {
            if magazineDict[letter] == 0 {
                return false
            }
            if let count = magazineDict[letter]  { //, count != 0 { // unwrap only if count exists and isnt't 0.
                magazineDict[letter]! -= 1
                    
            } else {
                return false
            }
     }
        return true
    }
}

print(Solution().canConstruct("ihgg", "ch"))   // return false
//print(Solution().canConstruct("a", "b"))   // return false
//print(Solution().canConstruct("fffbfg", "effjfggbffjdgbjjhhdegh"))   // return true

//"ihgg"
//"ch"


//
//
//
//func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
//        let ransom = NSCountedSet(array: Array(ransomNote))
//        let mag = NSCountedSet(array: Array(magazine))
//
//        for letter in ransom {
//            if ransom.count(for: letter) > mag.count(for: letter) {
//                return false
//            }
//        }
//
//        return true
//    }
//print(canConstruct("aab", "baa"))   // return true
