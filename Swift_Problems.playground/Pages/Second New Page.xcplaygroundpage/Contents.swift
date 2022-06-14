//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// hey dad I am writing and its not it git, its not saved

//Challenge 49: Sum the even repeats
//Difficulty: Tricky
//Write a function that accepts a variadic array of integers and return the sum of all numbers that
//appear an even number of times.
//Sample input and output
//• The code challenge49(1, 2, 2, 3, 3, 4) should return 5, because the numbers 2 and 3 appear twice each.
//• The code challenge49(5, 5, 5, 12, 12) should return 12, because that’s the only number that appears an even number of times.
//• The code challenge49(1, 1, 2, 2, 3, 3, 4, 4) should return 10.

// the coolest out of the box datastructure in swift is called NSCountedSet. This is an amazing dataType because it records items not added to a set.

func challenge49(_ arrValues: Int...) -> Int? {
    
   let nscounted = NSCountedSet(array: arrValues)
    var sum = 0
    
    for case let item as Int in nscounted {
        if nscounted.count(for: item) % 2 == 0 {
            sum += item
        }
    }
    
    return sum
}

challenge49(1, 2, 2, 3, 3, 4)
