

import Foundation

//
//387. First Unique Character in a String
//
//Share
//Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.
//Example 1:
//
//Input: s = "leetcode"
//Output: 0
//Example 2:
//
//Input: s = "loveleetcode"
//Output: 2
//Example 3:
//
//Input: s = "aabb"
//Output: -1

// Thoughts are:




func firstUniqChar(_ s: String) -> Int {
    
    let arrS = Array(s)
    var newdict = s.map { ($0,1)}
   // print(newdict)
    var dictAddUp = Dictionary(newdict, uniquingKeysWith: +) //[value: count]
    print(dictAddUp)
  
    for (i,v) in arrS.enumerated() {
        print("i:\(i), v:\(v)")
      
       print(dictAddUp[v]!)
        
        if let val = dictAddUp[v], val < 2 {
            return i
        }
    
    }
    return -1
}

//firstUniqChar("leetcode") // l answer = 0
firstUniqChar("loveleetcode")   // 2

//Input: s = "leetcode"
//Output: 0
//Example 2:
//
//Input: s = "loveleetcode"
//Output: 2
//Example 3:
//


class Solution {
func firstUniqChar(_ s: String) -> Int {
    var map = [Character:Int]()
    for c in s {
        if let v = map[c] {
            map[c] = v + 1
        } else {
            map[c] = 1
        }
    }
    print("map[c]: ", map)
    
    
    for (idx,c) in s.enumerated() {
        if let val = map[c], val == 1 {  // has a value and/ or value is 1
            return idx
        }
    }
    return -1
}
}

print(Solution().firstUniqChar("leetcode"))
