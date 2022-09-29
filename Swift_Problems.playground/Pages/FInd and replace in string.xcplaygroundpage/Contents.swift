//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"
//
//833. Find And Replace in String
//Medium

//
//Share
//You are given a 0-indexed string s that you must perform k replacement operations on. The replacement operations are given as three 0-indexed parallel arrays, indices, sources, and targets, all of length k.
//
//To complete the ith replacement operation:
//
//Check if the substring sources[i] occurs at index indices[i] in the original string s.
//If it does not occur, do nothing.
//Otherwise if it does occur, replace that substring with targets[i].
//For example, if s = "abcd", indices[i] = 0, sources[i] = "ab", and targets[i] = "eee", then the result of this replacement will be "eeecd".
//
//All replacement operations must occur simultaneously, meaning the replacement operations should not affect the indexing of each other. The testcases will be generated such that the replacements will not overlap.
//
//For example, a testcase with s = "abc", indices = [0, 1], and sources = ["ab","bc"] will not be generated because the "ab" and "bc" replacements overlap.
//Return the resulting string after performing all replacement operations on s.
//
//A substring is a contiguous sequence of characters in a string.
//
//
//
//Example 1:
//
//
//Input: s = "abcd", indices = [0, 2], sources = ["a", "cd"], targets = ["eee", "ffff"]
//Output: "eeebffff"
//Explanation:
//"a" occurs at index 0 in s, so we replace it with "eee".
//"cd" occurs at index 2 in s, so we replace it with "ffff".
//Example 2:
//
//
//Input: s = "abcd", indices = [0, 2], sources = ["ab","ec"], targets = ["eee","ffff"]
//Output: "eeecd"
//Explanation:
//"ab" occurs at index 0 in s, so we replace it with "eee".
//"ec" does not occur at index 2 in s, so we do nothing.
//



class Solution {
    func findReplaceString(_ s: String, _ indices: [Int], _ sources: [String], _ targets: [String]) -> String {
        // need to check starting indices of array for value
        var result = String()
        let array = Array(s)
        
        let firstIndice = indices[0]
        let secondIndice = indices[1]
        
        let splitSecond = array[secondIndice..<array.count]
        //Array(arr[5..<arr.count])
        
        print("splitSecond: ", splitSecond)
        
    var strArr = s.replacingOccurrences(of: sources[0], with: targets[0])
      
        if String(splitSecond) == sources[1] {
    var strArr2 = strArr.replacingOccurrences(of: sources[1], with: targets[1])
       
            
            return strArr2
        }
    }
}

//Solution().findReplaceString("abcd", [0, 2], ["a", "cd"], ["eee", "ffff"])  //eeebffff
Solution().findReplaceString("abcd", [0, 2], ["ab", "ec"], ["eee", "ffff"])   // eeecd


//"abcd"
//[0, 2]
//["ab","ec"]
//["eee","ffff"]
