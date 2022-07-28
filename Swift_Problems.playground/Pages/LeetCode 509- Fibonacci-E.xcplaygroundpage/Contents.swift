//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//The Fibonacci numbers, commonly denoted F(n) form a sequence, called the Fibonacci sequence, such that each number is the sum of the two preceding ones, starting from 0 and 1. That is,
//
//F(0) = 0, F(1) = 1
//F(n) = F(n - 1) + F(n - 2), for n > 1.
//Given n, calculate F(n).
//
//
//
//Example 1:
//
//Input: n = 2
//Output: 1
//Explanation: F(2) = F(1) + F(0) = 1 + 0 = 1.
//Example 2:
//
//Input: n = 3
//Output: 2
//Explanation: F(3) = F(2) + F(1) = 1 + 1 = 2.
//Example 3:
//
//Input: n = 4
//Output: 3
//Explanation: F(4) = F(3) + F(2) = 2 + 1 = 3.

//Input: n = 5
//Output:


//0,1,1,2,3,5,8,13,21,34

//F(n) = F(n - 1) + F(n - 2), for n > 1.


// we add the first + second numbers


    func fib(_ numSteps: Int) -> [Int] {
        
        var sequence = [0,1] // the start of the sequence
        
        if numSteps <= 1 {
            return sequence
        }
        
        for _ in 0...numSteps {
            let first = sequence[sequence.count-2]
            let second = sequence.last!
            sequence.append(first + second)
        }
        
        return sequence
   
    }

fib(1)
