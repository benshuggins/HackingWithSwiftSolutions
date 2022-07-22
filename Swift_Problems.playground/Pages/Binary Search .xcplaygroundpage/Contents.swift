//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// Binary Search -> Must be sorted to be efficient. It's all about halving the array and getting rid of parts of the array that are less than or greater than the value we are looking for.
// Essentially we keep halving the array over and over until we find our key

//https://www.youtube.com/watch?v=CkYDljd_7M8&ab_channel=SeanAllen

let numbers = [1,3,4,6,7,8,9,10,14,18]

func binarySearch(array: [Int], key: Int) -> Bool {
    
    if array.count == 0 {return false}
    
    let minIndex = 0
    let maxIndex = array.count - 1
    let midIndex = maxIndex/2
    let midValue = array[midIndex]
    
    if key < array[minIndex] || key > array[maxIndex] {
        print("\(key) is not in the array")
        return false
    }
    // If key is found on the greater side of array
    if key > midValue {
        let slice = Array(array[midIndex + 1...maxIndex])
        return binarySearch(array: slice, key: key)
    }
    // if key is found on the less than side of the array
    if key < midValue {
        let slice = Array(array[minIndex...midIndex - 1])
        return binarySearch(array: slice, key: key) // calls recursively
       
        }
    if key == midValue {
            print("\(key) was found in the array")
        return true
        }
                          
    return false
    
}
binarySearch(array: numbers, key: 8)
