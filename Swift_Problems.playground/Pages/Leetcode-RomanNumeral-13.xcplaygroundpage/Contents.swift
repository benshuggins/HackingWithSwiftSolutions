//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// If given roman numeral return its integer value, the roman numeral will be correct!!

//I can be placed before V (5) and X (10) to make 4 and 9.
//X can be placed before L (50) and C (100) to make 40 and 90.
//C can be placed before D (500) and M (1000) to make 400 and 900.

//Symbol       Value
//I             1
//V             5
//X             10
//L             50
//C             100
//D             500
//M             1000

//

//Example 1:
//
//Input: s = "III"
//Output: 3
//Explanation: III = 3.
//Example 2:
//
//Input: s = "LVIII"
//Output: 58
//Explanation: L = 50, V= 5, III = 3.
//Example 3:
//
//Input: s = "MCMXCIV"
//Output: 1994
//Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.

// Rules

// If RN are placed in order its additive, if placed in reverse order we subtract values

// Read from right to left, separate into pairs if


class Solution2 {
    func romanToInt(_ s: String) -> Int {
        
        let dict = ["I" : 1, "V": 5, "X" : 10, "L" : 50, "C" : 100, "D" : 500, "M" : 1000]
        var n = s.count - 1
        let arr = s.map { String($0) }
        var prev = 0
        var sum = 0
        
        print("arr: ", arr)
        
        for n in arr {
            
            if let current = dict[arr[Int(n)!]] {
                print("current: ", current)
            }
        }
        
//        while n >= 0 {
//            print("inside")
//            guard let current = dict[arr[n]] else {
//                      return sum
//            }
//        }
        
        
        return 1
    }
}
//print(Solution2().romanToInt("IIIV"))


// VERIFY THAT IF PREVIOUS IS GREATER THAN CURRENT IN ANY SITUATION



class Solution {
    func romanToInt(_ s: String) -> Int {
        let dict = ["I" : 1, "V": 5, "X" : 10, "L" : 50, "C" : 100, "D" : 500, "M" : 1000]
    
        var n = s.count - 1  // start at the end!!!
        let arr = s.map { String($0) }
        var prev = 0
        var sum = 0
        var current = 0
        
        print("arr: ", arr)

        // Need to test this out !!!
        while n >= 0 {
//            guard let current = dict[arr[n]] else {
//                print("sum not exist: ")
//                      return sum
//            }
            current = dict[arr[n]]!
            
            
            print("current: ", current)
            print("current Array value: ", arr[n])
            print("previous: ", prev)
            print("sum: ", sum)

            if prev > current && prev > 0 {
                sum = sum - current
                print("sum - current: ", sum)
            } else {
                sum = sum + current
                print("sum + current: ", sum)
            }
            prev = current
            n -= 1
        }

        return sum
    }
}
print(Solution().romanToInt("MCMXCIV"))

//Input: s = "MCMXCIV"
//Output: 1994
//Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.


// 99 in roman numeral: XCIX
