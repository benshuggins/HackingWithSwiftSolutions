//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//70. Climbing Stairs
//Easy
//
//13251
//
//396
//
//Add to List
//
//Share
//You are climbing a staircase. It takes n steps to reach the top.
//
//Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
//
//
//
//Example 1:
//
//Input: n = 2
//Output: 2
//Explanation: There are two ways to climb to the top.
//1. 1 step + 1 step
//2. 2 steps
//Example 2:
//
//Input: n = 3
//Output: 3
//Explanation: There are three ways to climb to the top.
//1. 1 step + 1 step + 1 step
//2. 1 step + 2 steps
//3. 2 steps + 1 step

// n=4
// So 4 would have 2+2, 2+1+1, 1+1+1+1, 1+2+1, 1+1+2 == 5 ways

// n=5
//2+2+1, 1+1+1+1+1, 1+2+1+1, 2+1+1+1,

//THOUGHTS => EVERY WAY TO GET N ONLY USING 1 AND 2

// why is 0 steps == to 1 and not zero

//0 = 0
//1 = 1
//2 = 2
//3 = 3
//4 = 5
//5 = 8
//6 = 13
//7 = 21


//func climbStairs(_ n: Int) -> Int {
//       var dp = [1,1]
//
//        if n < 2
//       {
//           return 1
//       }
//       if n == 2
//       {
//           return dp[0] + dp[1]
//       }
//
//       for i in 2...n
//       {
//           dp.append(dp[i-1] + dp[i-2])
//           print("dp: ", dp)
//       }
//
//       return dp[n]
//   }
//
//
//climbStairs(3)


class Solution3 {
    var cache = [Int: Int]()

func climbStairs2(_ n: Int) -> Int {
    
    if n <= 1 { return 1 }
    
    if cache[n] != nil {   // the cache should always be empty
        return cache[n]!
    } else {
        cache[n] = climbStairs2(n-2) + climbStairs2(n-1)
        return cache[n]!
    }
    }
}
let answer = Solution3().climbStairs2(5)
print(answer)





func climbStairs4(_ n: Int) -> Int {
    if n < 2 { return 1 }
    var arr = [Int](repeating: 1, count: n + 1)
    for i in 2..<arr.count {
        arr[i] = arr[i - 1] + arr[i - 2]
    }
    return arr.last!
}


climbStairs4(5)


var arr = [Int](repeating: 1, count: 2 + 1)
print(arr)
