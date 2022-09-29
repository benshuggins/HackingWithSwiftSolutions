//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//2315. Count Asterisks

//
//Share
//You are given a string s, where every two consecutive vertical bars '|' are grouped into a pair. In other words, the 1st and 2nd '|' make a pair, the 3rd and 4th '|' make a pair, and so forth.
//
//Return the number of '*' in s, excluding the '*' between each pair of '|'.
//
//Note that each '|' will belong to exactly one pair.
//
//
//
//Example 1:
//
//Input: s = "l|*e*et|c**o|*de|"
//Output: 2
//Explanation: The considered characters are underlined: "l|*e*et|c**o|*de|".
//The characters between the first and second '|' are excluded from the answer.
//Also, the characters between the third and fourth '|' are excluded from the answer.
//There are 2 asterisks considered. Therefore, we return 2.
//Example 2:
//
//Input: s = "iamprogrammer"
//Output: 0
//Explanation: In this example, there are no asterisks in s. Therefore, we return 0.
//Example 3:
//
//Input: s = "yo|uar|e**|b|e***au|tifu|l"
//Output: 5
//Explanation: The considered characters are underlined: "yo|uar|e**|b|e***au|tifu|l". There are 5 asterisks considered. Therefore, we return 5.


// Step 1: need to break separated word into an array and then loop through and check if any starting words contain and *

// or loop through and entire array and srated and stop based on spaces and asterisks

//!!! Asterisks between characters are the only ones that count

// consectutive: meaning every other word.



class Solution {
    func countAsterisks(_ s: String) -> Int {
        
        guard s.contains("*") else { return 0}
        
        var countAsterisk = 0
        var componentSpacing = s.replacingOccurrences(of: "|", with: " ")
        print("componentSpacing: ", componentSpacing)
        var components = componentSpacing.components(separatedBy: " ")
       
        print("components: ", components)
        var index = 0
        for word in components {
            if word.contains("*") && index % 2 == 0 {
                   countAsterisk += word.filter({ $0 == "*"}).count
                }
                index += 1
            
        }
        return countAsterisk
    }
}

//print(Solution().countAsterisks("l|*e*et|c**o|*de|")) //2

//print(Solution().countAsterisks("yo|uar|e**|b|e***au|tifu|l")) //5

print(Solution().countAsterisks("|**|*|*|**||***||")) //6
"|**|*|*|**||***||"


