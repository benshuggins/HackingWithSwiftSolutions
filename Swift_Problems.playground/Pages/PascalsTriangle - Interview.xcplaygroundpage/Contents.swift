//: [Previous](@previous)

import Foundation


//https://www.youtube.com/watch?v=Ap8Azsc2YT0&t=356s

//Pascals Triangle:
// Given an integer numRows, return the first numRows in Pascals Triangle.
// In Pascals triange each number is the sum of the numbers directly above it
//                      1
//                  1        1
//              1       2         1
//          1       3        3         1
//      1       4       6         4         1

/// 1) Prior rows sum up to integer value below
/// 2) Sum of each row is the prior sum squared
///
///  This is s a top down problem
///  Each iteration through the loop is one row and we work barckward

func solve(_ numRows: Int) -> [[Int]] {
    guard numRows > 0 else { return [] }
    if numRows == 1 { return [[1]]}
    
    var result = [[Int]]()
    result.append([1])    // for the first row (tip of triangle)
    
    // x is the current row that I am building
    for x in 1..<numRows {
        var newRow = [1] // each row starts with 1
        let prevRow = result[x - 1]
        print("Row I AM ON: \(x+1)")
        print("Result: \(result)")
        print("prevRow's': \(prevRow)")
        // this is looping through the previous rows // all the way back to beginning starts at beginning
        for j in 1..<prevRow.count {
           // print("prevRow.count: \(prevRow.count)")
           let middleNumbers = prevRow[j] + prevRow[j - 1]
            print("prevRow[j - 1]: \(prevRow[j - 1])")
            print("prevRow[j]: \(prevRow[j])")
            print("Middle Numbers: \(middleNumbers)")
            
            newRow.append(middleNumbers)
            print("New Row: \(newRow)")
        }
        newRow.append(1)    // each row ends with 1
        result.append(newRow)
        print("----------------------Don't forget adding 1 after ---------------------------------------")
    }
    return result
}

let answer = solve(6)
for row in answer {
    print(row)
}


// Things to remember are that the 1's are tacked on at beginning and end of the loops so really don't play a part in the looping

// The hard part is to understand how multiple middle numbers are constructed: how does it know that it has fufilled a row?
