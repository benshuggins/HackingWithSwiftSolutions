//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//Given an array of strings words, return the words that can be typed using letters of the alphabet on only one row of American keyboard like the image below.
//
//In the American keyboard:
//
//the first row consists of the characters "qwertyuiop",
//the second row consists of the characters "asdfghjkl", and
//the third row consists of the characters "zxcvbnm".


//Example 1:
//
//Input: words = ["Hello","Alaska","Dad","Peace"]
//Output: ["Alaska","Dad"]
//Example 2:
//
//Input: words = ["omk"]
//Output: []
//Example 3:
//
//Input: words = ["adsdf","sfd"]
//Output: ["adsdf","sfd"]

// There are 3 rows need to find what words are contained inside each row

// Brute force - double for loop

// Need to know grouping

// need to break this down into characters
//
//Easy Leetcode 500
//
//There is a problem though it says only return from one Row and most answers don’t seem to take this into account.
//
//Question 500 => return words that fall within keyboard rows.
//
//And that  let s1 = Set("qwertyuiop".map({$0})) can build us a character string.
//
//Approach #1:
//
//The solution is to remove the characters from the word that are in the row. If all of the characters can be removed the word then we know that every letter of the word is contained within the row.
//
//This is done with: lowcase.removeAll(where: { s1.contains($0) })
//
//!! You can compare a set to an array with intersection, union and symmetricDifference
//
//Other possibilities
//
//Use intersection or isSubset.
//
//         let array1 = ["a", "b", "c"]
//        let array2 = ["a", "b", "d"]
//
//        let set1:Set<String> = Set(array1)
//        let set2:Set<String> = Set(array2)
//
//        print(set1.union(set2))// Union of two sets // combines both ==              a,b,c,d
//        set1.intersection(set2)// Intersection of two sets // remains what they both have  ==     a,b
//        set1.symmetricDifference(set2)// exclusiveOr // what they both have         ==          c,d
//


// The solution uses 


class Solution {
    func findWords()  {
        let array1 = ["a", "b", "c"]
        let array2 = ["a", "b", "d"]

        let set1:Set<String> = Set(array1)
        let set2:Set<String> = Set(array2)
        
        print(set1.union(set2))// Union of two sets // combines both
        set1.intersection(set2)// Intersection of two sets // remains what they both have
        set1.symmetricDifference(set2)// exclusiveOr // what they both have
        
      

    }
}

print(Solution().findWords()) // alaska, dad




class Solution2 {
    func findWords(_ words: [String]) -> [String] {
        let top = Set("qwertyuiop")
        let middle = Set("asdfghjkl")
        let bottom = Set("zxcvbnm")
      
        var output = [String]()

        for word in words {
            let chars = Set(word.lowercased()) // lowercase the word.
            
            if chars.count == chars.intersection(top).count || chars.count == chars.intersection(middle).count || chars.count ==
                
                chars.intersection(bottom).count {
        
        print("chars.intersection(top).count: ", chars.intersection(middle).count)
                output.append(word)
            }
        }
        return output
    }
}


print(Solution2().findWords(["Hello","Alaska","Dad","Peace"]))

// Isnt this answer wrong because it all has to come from 1 row

// learnd what intersection is and isSubset

class Solution3 {
    func findWords(_ words: [String]) -> [String] {
              let s1 = Set("qwertyuiop".map({$0}))
              let s2 = Set("asdfghjkl".map({$0}))
              let s3 = Set("zxcvbnm".map({$0}))
       
        print(s1)
     
        var result = [String]()
        
        for word in words {
                   var lowcase = word.lowercased()
                    print("lowcase: ", lowcase)
            
                   lowcase.removeAll(where: { s1.contains($0) }) // remove all letters that are contained in s1 from first worrd
                    print("lowcaseAfter: ", lowcase)
                   if lowcase.isEmpty { // If every letter in word is contained is s1
                       result.append(word)
                       continue
                   }
                   
                   lowcase = word.lowercased()
                   lowcase.removeAll(where: { s2.contains($0) })
                   if lowcase.isEmpty {
                       result.append(word)
                       continue
                   }
                             
                   lowcase = word.lowercased()
                   lowcase.removeAll(where: { s3.contains($0) })
                   if lowcase.isEmpty {
                       result.append(word)
                       continue
                   }
              }
             
               
               return result
           }
}


//print(Solution3().findWords(["Hello","Alaska","Dad","Peace"])) // Alaska and Dad are the answers
