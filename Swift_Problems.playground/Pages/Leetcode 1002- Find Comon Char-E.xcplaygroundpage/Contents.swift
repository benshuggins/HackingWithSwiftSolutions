//: [Previous](@previous)

import Foundation

//Given a string array words, return an array of all characters that show up in all strings within the words (including duplicates). You may return the answer in any order.
//
//Example 1:
//
//Input: words = ["bella","label","roller"]
//Output: ["e","l","l"]
//
//Example 2:
//
//Input: words = ["cool","lock","cook"]
//Output: ["c","o"]
//


// Things to note

// cant this be checked with a dictionary because a dictionary can only have unique keys

// intersection would be very useful here !!!

//class Solution {
//    func commonChars(_ words: [String]) -> [String] {
//
//
//
//
//        var charArr = [Character]()
//
//        for word in words {
//            print(word)
//
//            for letter in word {
//                if  {
//
//                }
//                print(letter)
////                if word.contains(letter) {
////                    charArr.append(letter)
////                }
//            }
//
//        }
//
//        return []
//    }
//}

//print(Solution().commonChars(["bella","label","roller"])) //e,l,l

// take the first word and compare it to all other letters using intersection comparing set to the full array



func commonChars(_ words: [String]) -> [String] {
      //Find characters common to all words
      var set = Set(Array(words[0]))
      for i in 1..<words.count {
          set = set.intersection(Set(Array(words[i])))
           print("set: ", set) // these are the commn letters w/o correct count because sets cant hold count. e,l
          
      }
      
      //Find the amount of each char
      var final = [String]()
      for char in set {     // we are only checking e and l
          var low = Int.max // This is used to find the lowest
          print("low: ", low)
          for word in words {  // check the count of e in all 3 words
              
              low = min(low, word.filter{$0 == char}.count ) // we want the lowest count of all the same letters
              print("low: ", low)
              print("char: ", char)
              print("word: ", word)
              print("word.filter{$0 == char}.count: ", word.filter{$0 == char}.count)
              
          }
          print("lowInLoop", low)
          for i in 0..<low {
              final.append(String(char))
              print("final: ", final)
          }
      }
                    
     return final
  }
print(commonChars(["cool","lock","cook"])) //e,l,l




