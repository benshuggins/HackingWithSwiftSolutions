//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"


func mostCommonWord2(_ paragraph: String, _ banned: [String]) -> String {
    
        var paragraph = paragraph.lowercased()
        var str = [Character]()
        for char in paragraph {
            if char >= "a" && char <= "z" {
                str.append(char)
            } else {
                str.append(" ")
            }
        }
        // print("str: ", str)
         var arr = String(str).split(separator: " ")
        // print("arr: ", arr)
       
        var map = [String: Int]()  //[word: count]
        for word in arr {
            //var word = word.lowercased()
            map[String(word), default: 0] += 1
            print("map: ", map)
        }
        for word in banned {
            if map[word] != nil {
                map[word] = nil
                
                print("word: ", word)
            }
            print("mapWord: ", map)
            
        }
     
        var key = Array(map.keys)
        key = key.sorted(by: {(a, b) in
             return map[a]! > map[b]!
        })                                  // sort max to the front 
        print("key: ", key)
        return key[0]
    }
print(mostCommonWord2("Bob hit a ball, the hit BALL flew far after it was hit.", ["hit"]))




// Create dictionary [item: counter]
// iterate through array
// find highest counter
// use if banned word == word {return false}

//Input: paragraph = "Bob hit a ball, the hit BALL flew far after it was hit.", banned = ["hit"]
//Output: "ball"

class Solution {
    func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
        
        var str = [Character]()
        var paragraph = paragraph.lowercased()
        for char in paragraph {
            if char >= "a" && char <= "z" {
                str.append(char)
            } else {
                str.append(" ")
            }
        }
        print(str)

//    let replaceArr = paragraph.replacingOccurrences(of: "," , with: "")
//    let replaceArr2 = replaceArr.replacingOccurrences(of: "." , with: "")
//        let replaceArr3 = replaceArr.components(separatedBy: " ")
//        print(replaceArr3)
//       // let newArr5 = Array(replaceArr2)
//
        
       // var newArrBefore = Array(replaceArr2.description.lowercased())
    
   // let newArr = newArrBefore.map {($0,1)}
   // let dictArr = Dictionary(newArr, uniquingKeysWith: +)
        
   //  print(newArr)
      return ""
    }
}
//print(Solution().mostCommonWord("Bob hit a ball, the hit BALL flew far after it was hit.", ["hit"]))








Character("a").isASCII       // true
Character("a").asciiValue    // 97

Character("á").isASCII       // false
Character("á").asciiValue    // nil

extension StringProtocol {
    var asciiValues: [UInt8] { compactMap(\.asciiValue) }
}





//
//
//var testString = "I want to get rid 1.2.3 of inline citations. But I don't want 1.2.4 to get rid of full stops."
//let pattern = #"\.[^\s]"# // Matches . before non-whitespace characters.
//let regex = try! NSRegularExpression(pattern: pattern, options: [])
//let mString = NSMutableString(string: testString)
//regex.replaceMatches(in: mString, options: [], range: NSMakeRange(0, mString.length), withTemplate: "")
//testString = String(mString)
//testString = testString.filter {CharacterSet.decimalDigits.inverted.contains($0.unicodeScalars.first!)}
//testString = testString.replacingOccurrences(of: "  ", with: " ")









