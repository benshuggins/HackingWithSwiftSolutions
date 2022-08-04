//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


// We are going to have





// LEETCODE SOLUTIONS :
// ! Yes *= does do what I expected !!
// I wasn't thinking that something will be multiplied 1 so its ok for postfix to have a value of 2
// Remember post is constructed exactly the same as pre but in reverse
//!! Only the number directly before in the prefix or postfix array is used it isn't the entire array.

// We are going to have a prefix and a postfix array. There is an automatic 1 before the beginning of the first prefix and a 1 after the end of the last postfix. This is because nothing is 1! or there is physically nothing to the left so we don't Mathematically want anything to happen so we just multiply by 1.

// Don't think that the prefix array subscipts should line up with the initial array. In the problem we are going to pick the numbers before it

// The answer array will be our Output array and we are going to place our final prefix value (before it gets multiplied by postfix) in the output array position

// We then reverse the nums array to calculate the final answer and we mulitply each position by the suffix or postfix value and return the answer

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var answer = [Int](repeating: 1, count: nums.count) // empty array with 1's in every position
        
        var pre = 1, suf = 1           // we are starting with 1's on either end
    
            // we are filling the answer array with elements from nums
            // 0 is the index but 1 is the value of nums[0]
    for i in 0..<nums.count {   //1,2,3,4   // first is 0 so it isn't recorded answer starts as 1
        print("nums[i]: ", nums[i])
        print("pre: ", pre)
       // print("answer[i] *= pre: \(answer[i] *= pre)")
       // print("answer[i]: ", answer[i]) // answer is already filled with 1's
        
        //nums[i] is 1 but answer[i] is 0 because i starts at 0
        answer[i] *= pre // 1x1 , 1      //1,      // note we are storing in the same array to be computed store the //print("mult: ", answer[i] *= pre)
        
        // answer is already filled with 1's so answer[0] is also 1!!!
        print("answer[i] (PRE) :", answer[i])
        print("answer :", answer)
        pre *= nums[i]   // pre is now 1,
    }
        
//    for i in (0..<nums.count).reversed() {
//        print("suf: ", suf)
//        answer[i] *= suf
//        print("answer[i] (POST) :", answer[i])
//        print("answer :", answer)
//        suf *= nums[i]
//
//    }
        return answer
    }
}

//print(Solution().productExceptSelf([1,2,3,4]))





class Solution3 {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
                guard nums.count > 1 else {
            return []
        }

        var product = 1
        var result: [Int] = Array(repeating: 1, count: nums.count)

        for i in 0..<nums.count {    //      i: 0, 1,
            result[i] = product     // result: [1, 1, 2, 6]
            product *= nums[i]
        }
        
        product = 1
        // from right to left: reuse the products from previous entries
        //  1,2,3,4
        //  1,1,2,6
        for i in (0..<nums.count).reversed() {
            print("i: ", i)
            print("product: ", product)
            result[i] *= product      //[24X1=24 ,12X1=12 ,4x2=8, 6x1=6]
            product *= nums[i]    // p = 12
            print("result: ", result)
        }
        return result
    }
}
print(Solution3().productExceptSelf([1,2,3,4]))

