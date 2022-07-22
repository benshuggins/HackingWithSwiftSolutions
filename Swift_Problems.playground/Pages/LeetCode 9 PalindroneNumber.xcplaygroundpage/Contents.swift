//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//
//Given an integer x, return true if x is palindrome integer.
//
//An integer is a palindrome when it reads the same backward as forward.
//
//For example, 121 is a palindrome while 123 is not.
//

// What if I add both numbers together to double them?

//let reversedWord = String(word.reversed())
//print(reversedWord)
//// Prints "sdrawkcaB"
///


// This is the brute force solution but it does work using swift built in reversed() method

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        
        guard x > 0 else {return false}
        
        let arrWord = Array(String(x))
        let reversedWord = String(x).reversed()
        
       
      print("reversedArr:", Array(reversedWord))
      print("arrWord", arrWord)
        
        if Array(reversedWord) == arrWord {
            return true
        } else {
        return false
    }
    }
}

print(Solution().isPalindrome(101))
