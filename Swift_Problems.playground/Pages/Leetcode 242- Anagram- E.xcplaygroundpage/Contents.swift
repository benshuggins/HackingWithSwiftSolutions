//: [Previous](@previous)

import Foundation
//
//242. Valid Anagram
//Easy
//
//6377
//
//234
//
//Add to List
//
//Share
//Given two strings s and t, return true if t is an anagram of s, and false otherwise.
//
//An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
//
//
//
//Example 1:
//
//Input: s = "anagram", t = "nagaram"
//Output: true
//Example 2:
//
//Input: s = "rat", t = "car"
//Output: false



// THOUGHTS

// This is the least amount of code
// Sort both arrays and then compare them

// This is the 1 liner:


class Solution2 {
        func isAnagram(_ s: String, _ t: String) -> Bool {
            
            guard s.count != t.count else { return false }
            return s.sorted() == t.sorted()

            }
        }

  //  Solution2().isAnagram("rat", "car")

// SOLUTION 2 

// Here we are going to create a checkstring from one of the inputs and then loop over the second input and using firstIndex(of:) check if that letter exists in the checkString if it doesn't then we want to return false immediately, otherwise we want to remove that letter from

func challenge3a(string1: String, string2: String) -> Bool {
   var checkString = string2
   for letter in string1 {
      if let index = checkString.firstIndex(of: letter) {
         checkString.remove(at: index)
      } else {
         return false
      }
}
   return checkString.count == 0
}


// SOLUTION 3 -> USE HASHMAPS


    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }

        var map: [Character: Int] = [:] // we have the same dictionary for both s and t

        s.forEach({ map[$0, default: 0] += 1 })
        print("map s: ", map)
        t.forEach({ map[$0, default: 0] -= 1 })
        print("map t: ", map)
        return map.filter({ $0.value != 0 }).count == 0 // if every value doesn't equal 0 then its not true
    }

//isAnagram("anagram", "nagaram")



class Solution5 {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        
        var dictS: [Character: Int] = [:]
        s.forEach { (c) in
            dictS[c, default: 0] += 1
        }
        
        var dictT: [Character: Int] = [:]
        t.forEach { (c) in
            dictT[c, default: 0] += 1
        }
        
        return dictS == dictT
    }
}

//print(Solution5().isAnagram("anagram", "nagaram"))




    func isAnagram3(_ s: String, _ t: String) -> Bool {
        
        var sDictionary = [Character: Int]() // key: the character, value: the count
        for sChar in s {
            let count = sDictionary[sChar, default: 0] // make dictionary
            sDictionary[sChar] = count + 1
            print("sDictionary", sDictionary)
        }
        
        for tChar in t {
            let count = sDictionary[tChar, default: 0]
            sDictionary[tChar] = count - 1
        }
        
        return sDictionary.values.filter({ $0 != 0 }).isEmpty
    }
//isAnagram3("anagram", "nagaram")


// there is only 1 hashmap

func isAnagram4(_ s: String) -> Bool {
    // there is no Int value for a string we havent enumerated or anyting so it just takes the default which is 0 so every Character is assigned 0
    
    var sDictionary = [Character: Int]() // key: the character, value: the count
    for sChar in s {
        let count = sDictionary[sChar, default: 0] // make dictionary
        print("count: ", count)
        print("sDictionaryBefore: ", sDictionary)
        sDictionary[sChar] = count + 1          // without adding 1 the dictionary
        print("sDictionaryAfterAdding1: ", sDictionary)
    }
    
//    for tChar in t {
//        let count = sDictionary[tChar, default: 0]
//        sDictionary[tChar] = count - 1
//    }
    
    return sDictionary.values.filter({ $0 != 0 }).isEmpty
}
//isAnagram4("anagram")

// this doessnt make sense because there is a value for each why is it taking the default


func isAnagram5(_ s: String, _ t: String) -> Bool {
           if s.count != t.count {return false}

let sChars = Array(s).map{($0,1)}  // returns characters array as key value pair tuple.
let sCharCountDict = Dictionary(sChars, uniquingKeysWith: +) // adds all values when a duplicate is encountered.
print (sCharCountDict)

let tChars = Array(t).map{($0,1)}  // returns characters array as key value pair tuple.
let tCharCountDict = Dictionary(tChars, uniquingKeysWith: +) // adds all values when a duplicate is encountered.

print (tCharCountDict)

return sCharCountDict == tCharCountDict
}

isAnagram5("anagram", "nagaram" )


//Input: s = "anagram", t = "nagaram"
//Output: true
