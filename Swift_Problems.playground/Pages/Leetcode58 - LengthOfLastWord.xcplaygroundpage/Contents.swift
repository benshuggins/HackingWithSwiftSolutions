//: [Previous](@previous)

import Foundation

//58. Length of Last Word
//
//Given a string s consisting of words and spaces, return the length of the last word in the string.
//
//A word is a maximal substring consisting of non-space characters only.


func lengthOfLastWord(_ s: String) -> Int {
    
    guard s.count > 0 else { return 0}
    let lastWord = s.components(separatedBy: " ")
    print(lastWord)
    var newWord = lastWord.filter { $0 != ""}
    print(newWord)
    return newWord.last!.count

}

//print(lengthOfLastWord("Hello World"))
print(lengthOfLastWord("   fly me   to   the moon  "))

"   fly me   to   the moon  "



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
