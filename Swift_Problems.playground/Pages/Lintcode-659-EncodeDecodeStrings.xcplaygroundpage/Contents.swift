
import Foundation

var greeting = "Hello, playground"


//Description
//Design an algorithm to encode a list of strings to a string. The encoded string is then sent over the network and is decoded back to the original list of strings.
//
//Please implement encode and decode
//

//Example1
//
//Input: ["lint","code","love","you"]
//Output: ["lint","code","love","you"]
//Explanation:
//One possible encode method is: "lint:;code:;love:;you"
//Example2
//
//Input: ["we", "say", ":", "yes"]
//Output: ["we", "say", ":", "yes"]
//Explanation:
//One possible encode method is: "we:;say:;:::;yes"


// Thoughts:

//1) WE need to know the length of each word
// we need a symbol to denote what the count is for each word and that a word is ending.

// The encoding part is easy we just take the count of each letter in word as it loops and add a symbol and count for each word.

public class Solution {
   
        func encode(_ strs: [String]) -> String {
            var res = ""
            
            for s in strs {                         // "2#we3#say1#:3#yes"
                res += String(s.count) + "#" + s    // count, symbol, string
            }
            return res
        }
      
    func decode(_ strs: String) -> [String] {
        if strs.isEmpty { return [] }
     
        var results = [String]()
        var i = 0
        let wordArray = Array(strs)
       
        
        while i < wordArray.count {
            var j = i           // j is for finding the delimeter
            print("____________________first while loop")
            print("String(wordArray[j]): ", String(wordArray[j]))
           
            while String(wordArray[j]) != "#" {   // each iteration of loop reads 1 entire word
                j += 1                         // increment j as long as it isn't delimeter
                print("i (1): ", i)
                print("j+=1: ", j)
            }
                let lengthOfWord = Int(String(wordArray[i..<j]))!  // dont include j because j includes the counter and we want just before that. The counter is always 1 length long
                //extract word and append it to results
                print("lengthOfWord: ", lengthOfWord)
                print("String(wordArray[i..<j]): ", String(wordArray[i..<j]))
        
            
                let actualWord = String(wordArray[j+1 ..< j + 1 + lengthOfWord])  // why is
                print("acutalWord: ", actualWord)
                print("i (2): ", i)
                print("j : ", j)
                results.append(actualWord)
                i = j + 1 + lengthOfWord // this moves i "up to next word"
                print(" i = j + 1 + lengthOfWord: ", i)
            }

            return results
        }
    }
//                          "2#we3#say1#:3#yes"
//print(Solution().encode(["we", "say", ":", "yes"]))
print(Solution().decode("2#we3#say1#:3#yes"))




// Encode:
// Count, Symbol, Letter

// We have 2 pointers i and j. We move j forward



public class Solution2 {
   
    private let symbol = "#"
        func encode(_ strs: [String]) -> [String] {
            if strs.isEmpty { return [] }
            var result = ""
            
            for letter in strs {
                let count = letter.count
                result += "\(count)\(symbol)\(letter)"
                
            }
            return Array(arrayLiteral: result)
                    }
      
    
    
    func decode(_ strs: String) -> [String] {
        
        if strs.isEmpty { return [] }
        var i = 0
        var j = 0
        var result = [String]()
        var wordArray = Array(strs)
        
        while i < strs.count {
            j = i
            
            while wordArray[j] != Character(symbol) {
                j += 1                                  // move j forward by 1
                
                
                
            }
            
            
            
        }
        
            return []
        }
    }

print(Solution2().encode(["we", "say", ":", "yes"]))  //=> "2#we3#say1#:3#yes\n"

//print(Solution().decode("2#we3#say1#:3#yes"))
