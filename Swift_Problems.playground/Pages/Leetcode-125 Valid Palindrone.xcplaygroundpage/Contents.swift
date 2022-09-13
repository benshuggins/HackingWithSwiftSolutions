//: [Previous](@previous)

import Foundation

//125. Valid Palindrome
//Easy
//
//Share
//A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.
//
//Given a string s, return true if it is a palindrome, or false otherwise.
//
//
//
//Example 1:
//
//Input: s = "A man, a plan, a canal: Panama"
//Output: true
//Explanation: "amanaplanacanalpanama" is a palindrome.
//Example 2:
//
//Input: s = "race a car"
//Output: false
//Explanation: "raceacar" is not a palindrome.
//Example 3:
//
//Input: s = " "
//Output: true
//Explanation: s is an empty string "" after removing non-alphanumeric characters.
//Since an empty string reads the same forward and backward, it is a palindrome.

// Thoughts:

// 


// This is the brute force solution but it does work using swift built in reversed() method
// I need to remove all non alphanumeric numbers

class Solution2 {
    func isPalindrome(_ x: String) -> Bool {
        let unsafeChars = CharacterSet.alphanumerics.inverted
        let lowercased = x.components(separatedBy: unsafeChars).joined(separator: "").lowercased()
           return String(lowercased.reversed()) == lowercased
    }
}

//print(Solution2().isPalindrome("racecar"))
//print(Solution2().isPalindrome("A man, a plan, a canal: Panama"))



func isPalindrome(_ s: String) -> Bool {
        let chars = Array(s.lowercased().filter { $0.isLetter || $0.isNumber })
        print(chars)
        for i in 0..<chars.count/2 {
            print("chars[i]: ", chars[i])
            print("chars[chars.count - 1 - i]: ", chars[chars.count - 1 - i])
            if chars[i] != chars[chars.count - 1 - i] {
                
                return false
            }
        }
        return true
    }

//isPalindrome("racecar")
print(isPalindrome("A man, a plan, a canal: Panama"))
