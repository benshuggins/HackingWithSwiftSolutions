//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//2351. First Letter to Appear Twice
//Easy
//
//
//Share
//Given a string s consisting of lowercase English letters, return the first letter to appear twice.
//
//Note:
//
//A letter a appears twice before another letter b if the second occurrence of a is before the second occurrence of b.
//s will contain at least one letter that appears twice.
//
//
//Example 1:
//
//Input: s = "abccbaacz"
//Output: "c"
//Explanation:
//The letter 'a' appears on the indexes 0, 5 and 6.
//The letter 'b' appears on the indexes 1 and 4.
//The letter 'c' appears on the indexes 2, 3 and 7.
//The letter 'z' appears on the index 8.
//The letter 'c' is the first letter to appear twice, because out of all the letters the index of its second occurrence is the smallest.

// The problem is that the items need to be right next to eachother



//
//
//class Solution {
//    func repeatedCharacter(_ s: String) -> Character {
//        var arrS = Array(s)
//        var dictS = arrS.map {($0,1)}
//        var groupDict = Dictionary(dictS, uniquingKeysWith: +)
//        var answer = ""
//
//        print(groupDict)
//        for (i, v) in arrS.enumerated() {
//            print("i:\(i), v:\(v)")
//           // if arrS[i] == arrS[i + 1 {
//                if let val = groupDict[v], val == 2 {
//                answer = String(arrS[i])
//            }
//        }
//        }
//        return Character(answer)
//    }
//}

//print(Solution().repeatedCharacter("abccbaacz"))




class Solution2 {
   func repeatedCharacter(_ s: String) -> Character {
       
      var repeatedCountHashMap: [String:[Int]] = [:]
       for (i,v) in s.enumerated() {
           let key = String(v)
               if let value = repeatedCountHashMap[key] {
                  return Character(key)
               } else {
                   repeatedCountHashMap[key] = [i]
               }
       }
       return Character(repeatedCountHashMap.keys.first!)
   }
}


//print(Solution2().repeatedCharacter("abccbaacz"))



// Based off of this cant a simple dictionary work??

func repeatedCharacter(_ s: String) -> Character {
        
        var set: Set<Character> = []

        for char in s {
            if set.contains(char) {
                return char
            } else {
                set.insert(char)
            }
        }

        return "a"
    }
//print(repeatedCharacter("abccbaacz"))



func repeatedCharacter3(_ s: String) -> Character {
    var arrS = Array(s)
    var dict = [Character: Int]()
    
    for (i , v) in arrS.enumerated() {
        if let val = dict[v] {
            return v
        } else {
            dict[v] = i
        }
    }
    return "a"
}
//print(repeatedCharacter3("abccbaacz"))
print(repeatedCharacter3("abdd"))
