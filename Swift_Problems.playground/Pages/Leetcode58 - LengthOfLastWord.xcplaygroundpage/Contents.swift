//: [Previous](@previous)

import Foundation
import CoreFoundation

//58. Length of Last Word
//
//Given a string s consisting of words and spaces, return the length of the last word in the string.
//
//A word is a maximal substring consisting of non-space characters only.

// &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&+++++========================================
//
class Solution {
    let timefirst = CFAbsoluteTimeGetCurrent()
    func lengthOfLastWord(_ s: String) -> Int {
        guard s.count > 0 else { return 0}
        let lastWord = s.components(separatedBy: " ")
        let newWord = lastWord.filter { $0 != ""}
        let timeSecond = CFAbsoluteTimeGetCurrent()
        print("time: ", timeSecond - timefirst)
        return newWord.last!.count

    }
}
print(Solution().lengthOfLastWord("   fly me   to   the moon  "))

//"   fly me   to   the moon  "

// &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&+++++========================================

//Example 1:
//
//Input: s = "Hello World"
//Output: 5
//Explanation: The last word is "World" with length 5.
//Example 2:
//
//Input: s = "   fly me   to   the moon  "
//Output: 4
//Explanation: The last word is "moon" with length 4.
//Example 3:
//
//Input: s = "luffy is still joyboy"
//Output: 6
//Explanation: The last word is "joyboy" with length 6.


//func lengthOfLastWord2(_ s: String) -> Int {
//    // parameter s is immutable
//    var str = s
//    // drop the whitespaces at the end of the string
//    while str.last == " " {
//        str.removeLast()
//    }
//    // main functionality
//    var len = 0
//    for char in str.reversed(){
//        if char == " " {
//            break
//        }
//        
//        len += 1
//    }
//    return len
//}
//
//
//print(lengthOfLastWord2("   fly me   to   the moon  "))
