//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//14. Longest Common Prefix
//
//Write a function to find the longest common prefix string amongst an array of strings.
//
//If there is no common prefix, return an empty string "".
//
//Example 1:
//
//Input: strs = ["flower","flow","flight"]
//Output: "fl"
//Example 2:
//
//Input: strs = ["dog","racecar","car"]
//Output: ""
//Explanation: There is no common prefix among the input strings.Longest Common Prefix


func longestCommonPrefix(_ strs: [String]) -> String {
    
   
  var result = strs[0]
    
    for str in strs {
       // print(str)
        //while word doesn't have the same prefix
        while !str.hasPrefix(result) { // every word has the prefix
            //print("str: ", str)
            print("result: ", result)
            result.removeLast()
        }
        if result == "" {
            return ""
        }
    }
  
    return result
    
}

longestCommonPrefix(["flower","flow","flight"])

















// hasPrefix returns true

func longestCommonPrefix2(_ strs: [String]) -> String {
    if strs.count == 0 {
        return ""
    }
    var result = strs[0]    // start with first
    print("result: ", result)
    for str in strs {
        print("str: ", str)
        while !str.hasPrefix(result) {
            print("result: ", result)
            result.removeLast()
            print("result: ", result)
            
        }
        if result == "" {
            return ""
        }
    }
    return result
}

//longestCommonPrefix2(["flower","flow","flight"])



func longestCommonPrefix3(_ strs: [String]) -> String {
    if strs.count == 0 {
        return ""
    }
    var result = strs[0]    // start with first
    print("result: ", result)
    for str in strs {
        print("str: ", str)
        while !str.hasPrefix(result) {
            print("result: ", result)
            result.removeLast()         // remove until it does match
            print("result: ", result)
        }
        if result == "" {
            return ""
        }
    }
    return result
}

//longestCommonPrefix3(["flower","flow","flight"])


var flower = "flower"

var flow = "flow"

print(!flow.hasPrefix("flower"))  // while first doesn't have prefix
