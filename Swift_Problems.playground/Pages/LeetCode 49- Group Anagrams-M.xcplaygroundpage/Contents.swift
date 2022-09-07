//: [Previous](@previous)

import Foundation


//49. Group Anagrams
//Medium
//
//Given an array of strings strs, group the anagrams together. You can return the answer in any order.
//
//An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
//
//Example 1:
//
//Input: strs = ["eat","tea","tan","ate","nat","bat"]
//Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
//Example 2:
//
//Input: strs = [""]
//Output: [[""]]
//Example 3:
//
//Input: strs = ["a"]
//Output: [["a"]]


// Thoughts:

// sort each element in the array and see if they match any other elements in the array

// sort words in array




func groupAnagrams(_ strs: [String]) -> [[String]] {
    var sortedArr = [String]()
    var dict = [String: Int]()
    
    for letter in strs {
           var newLetter = String(letter.sorted())
            print(newLetter)
        sortedArr.append(newLetter)
        
        // At this point we know the number of groupings, we just dont know index positions
        // cant use a dictionary because its no
        }
    print(sortedArr)
    
       
    var storedWordsArray = [String]()
    
    for (index, n) in sortedArr.enumerated() {
        print("index: \(index), word: \(n)")
     
        if index == index + 1 {
            
       //     return n
        }
        dict[n]
        
    }
   
    
      
        return [[]]
    }

//groupAnagrams(["eat","tea","tan","ate","nat","bat"])






func groupAnagrams2(_ strs: [String]) -> [[String]] {
    if strs.isEmpty { return [] }
    
    var map = [String: [String]]()
    for str in strs {
        let sortedStr = String(str.sorted())
        map[sortedStr, default: []] += [str]
    }
            
    return Array(map.values)
}



//
//
//
//func groupAnagrams3(_ strs: [String]) -> [[String]] {
//    var map = [[Character]:[Int]]()   // an array of dictionaries
//
//    for (i, v) in strs.enumerated() {
//        print("i: \(i), v: \(v)")
//
//        map[v.sorted(), default:[]].append(i)
//
//    }
//    print("map", map)
//
//    var result = [[String]]()
//    for (_, v) in map {
//        var res = [String]()
//        for i in v {
//            res.append(strs[i])
//        }
//        result.append(res)
//    }
//
//    return result
//}
//
//groupAnagrams3(["eat","tea","tan","ate","nat","bat"])


// First we form a dictionary with charcters of each grouped letter in sorted order


// This is the 


func groupAnagrams3(_ strs: [String]) -> [[String]] {
   
    let dictionary = Dictionary(grouping: strs, by: {String($0).sorted()}) // group by characters that are in sorted order.
    print(dictionary)
    let arrayOfArrays = Array(dictionary.values)
    print(arrayOfArrays)
    return arrayOfArrays

}

groupAnagrams3(["eat","tea","tan","ate","nat","bat"])



    func groupAnagrams4(_ strs: [String]) -> [[String]] {
        guard strs.count > 0 else {
            return [[String]]()
        }
        
        var dictList = [String: [String]]()  // same as defaultdict(list) in python
        
        for word in strs {
            let key = String(word.sorted())
            dictList[key, default:[String]()].append(word) // so the default will just be an empty [String]
            print("dictList: ", dictList)
        }
        print(Array(dictList.values))
        return Array(dictList.values)
    }
groupAnagrams4(["eat","tea","tan","ate","nat","bat"])


func groupAnagrams5(_ strs: [String]) -> [[String]] {
   
    let dict = Dictionary(grouping: strs, by: {$0.sorted()})
   // print(dict)
    let retArr = Array(dict.values)
    print(retArr)
    return [[]]
    
}

//groupAnagrams5(["eat","tea","tan","ate","nat","bat"])
