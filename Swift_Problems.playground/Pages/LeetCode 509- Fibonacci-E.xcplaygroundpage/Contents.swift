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


// we add the first + second numbers, and we want the first and second variables to move down the line and




func fib(_ numSteps: Int) -> Int {
        
        var sequence = [0,1] // the start of the sequence
        if numSteps <= 1 {
            return sequence.last!
        }
        
        for _ in 0...numSteps - 2 {
            let first = sequence[sequence.count-2]  // this gives us second value from the end
            let second = sequence.last!
            sequence.append(first + second)
        }
    
    return sequence.last!
   
    }

fib(4)

// Remember that we start it off with [0,1]

// we reduce numSteps by one each iteration because we have "used up" those steps, it counts down until it gets to zero steps and then it returns [] thus exiting the function.

// As it iterates and "moves down the line", the first variable becomes the second and the second is first + second

func fibRecursion(_ numSteps: Int, first: Int, second: Int) -> [Int] {
    if numSteps == 0 {
       // print("Got to zero steps")
        return []
    }
   // print("first", first)
    //print("second", second)
   // print("numSteps: ", numSteps)
   // print("total: ", [first + second])// + fibRecursion(numSteps - 1, first: second, second: first + second))
    print(first, second)
    return [first + second] + fibRecursion(numSteps - 1, first: second, second: first + second)
    
}

 [0,1] + fibRecursion(9, first: 0, second: 1)

//fib(6)

// Time heals all wounds. Easier said than done, but stay positive.


