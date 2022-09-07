//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//1678. Goal Parser Interpretation
//
//You own a Goal Parser that can interpret a string command. The command consists of an alphabet of "G", "()" and/or "(al)" in some order. The Goal Parser will interpret "G" as the string "G", "()" as the string "o", and "(al)" as the string "al". The interpreted strings are then concatenated in the original order.
//
//Given the string command, return the Goal Parser's interpretation of command.


// zip could be useful

class Solution {
    func interpret(_ command: String) -> String {
        let comArr = command.replacingOccurrences(of: "()", with: "o")
        var comArr2 = comArr.replacingOccurrences(of: "(al)", with: "al")
        return comArr2
    }
}
//print(Solution().interpret("G()(al)"))
print(Solution().interpret("(al)G(al)()()G"))
//Example 1:
//
//Input: command = "G()(al)"
//Output: "Goal"
//Explanation: The Goal Parser interprets the command as follows:
//G -> G
//() -> o
//(al) -> al
//The final concatenated result is "Goal".
//Example 2:
//
//Input: command = "G()()()()(al)"
//Output: "Gooooal"
//Example 3:
//
//Input: command = "(al)G(al)()()G"
//Output: "alGalooG"
