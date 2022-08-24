//: [Previous](@previous)

import Foundation

//347. Top K Frequent Elements
//Medium

//Share
//Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.
//
//
//
//Example 1:
//
//Input: nums = [1,1,1,2,2,3], k = 2
//Output: [1,2]
//Example 2:
//
//Input: nums = [1], k = 1
//Output: [1]


// Thoughts:

// Could I use dictionary grouping?
// I could sort into an array of arrays and then loop through and count the k highest count of elements

// This is the brute force method

// How to check if values in an array are all the same?

// Is there an answer with NSCountedSet()??


// This is the worst failed answer:


func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
       if nums.count == 0 {
                  return []
              }

    let mappedItems = nums.map { ($0,1)}
    let dict = Dictionary(mappedItems, uniquingKeysWith: +) //[value: frequency]
    
    print("dict1: ", dict)
    print("answer1: ", Array(dict.sorted { $0.value > $1.value }))
    let answer = Array(dict.sorted { $0.value > $1.value }).map {$0.key}
    
    return Array(answer.prefix(k))
}
//topKFrequent([1,1,1,2,2,3], 2)
//topKFrequent([-1,-1], 1)  // should return [-1]
//topKFrequent([1,2], 2)  // should return [1,2]



//THIS IS THE ANSWER 


// The idea is to create a dictionary from the array of 1's and then and then add them up to so that we have the [item: Frequency] then sort them and return the first k elements using prefix!!


func topKFrequent2(_ nums: [Int], _ k: Int) -> [Int] {

    let mappedItems = nums.map { ($0,1)}   // [item: count]
    print(mappedItems)
    let dict = Dictionary(mappedItems, uniquingKeysWith: +)
    print("dict : ", dict)
    
   // return Array(dict.values.sorted().prefix(k))
    print("final2: ", Array(dict.sorted { $0.value > $1.value }.prefix(k)))
    
    let answer = Array(dict.sorted { $0.value > $1.value }.map {$0.key}.prefix(k))
    
    return Array(dict.sorted { $0.value > $1.value }.map { $0.key }.prefix(k))
}

//topKFrequent2([1,2], 2)      // [1,2]
//topKFrequent2([-1,-1], 1)  // should return [-1]
topKFrequent2([1,1,1,2,2,3], 2)  // [1,2]








//
//    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
//        var h = [Int: Int]()   // [value: frequency]
//
//        nums.map { h[$0, default: 0] += 1 }
//        print("h: ", h)
//
//
//        var a = Array(repeating: [Int](), count: nums.count+1) // make an array of arrays with 1 more than entire nums array
//        print("a: ", a)
//        h.map { a[$1].append($0) }
//        print("h: ", h)
//        print(a.flatMap{ $0 }.suffix(k))
////        return a.flatMap{ $0 }.suffix(k)
//        return []
//    }



//topKFrequent([1,1,1,2,2,3], 2)

//func topKFrequent(_ words: [Int], _ k: Int) -> [String] {
//
//    // Create a map for the words
//    var hash: [Int: Int] = [:]
//
//    // Iterate through the words
//    for word in words {
//        // .. and count them
//        hash[word, default: 0] += 1
//
//        print(hash)
//    }
//
//    print("fuker")
//    let sorted: [(key: String, value: Int)] = hash.sorted { element1, element2 in
//
//        if element1.value == element2.value {
//            return element1.key < element2.key
//        }
//        return element1.value > element2.value
//    }
//
//    // Get only k elements...
//    let shrunk: [(key: String, value: Int)] = Array(sorted[0..<k])
//
//
//    // And return only the key
//    return shrunk.map { element in
//        return element.key
//    }
//}
//topKFrequent([1,2], 2)      // [1,2]
//topKFrequent([-1,-1], 1)  // should return [-1]
//topKFrequent([1,1,1,2,2,3], 2)  // [1,2]
//
//
//
