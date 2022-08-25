//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


// Most common element in array of elements

let colors = ["red", "green", "blue", "red", "green", "yellow"]

func mostCommon(_ arr: [String]) -> [String] {
    
    var topColors = [String]()
    var dictColors = [String: Int]()   // [color: count]
     
    for color in arr {
        // if already exists in the array
        if let count = dictColors[color] {
            dictColors[color] = count + 1
            // if the color doesn't exist in colorDict then add it
        } else {
            dictColors[color] = 1
        }
    }
        
            let highestValue = dictColors.values.max()
    // we find the highest value and then we check if it exists in our dictionary
       
        for (color, count) in dictColors {
            if dictColors[color] == highestValue {
                topColors.append(color)
            }
        }
 
    return topColors
    
}
//print(mostCommon(colors))



func mostCommon1(_ arr: [String]) -> [String] {
    
    var topColors = [String]()
    var dictColors = [String: Int]()   // [color: count]
     
    for color in arr {
        // if already exists in the array
        if let count = dictColors[color] {
            dictColors[color] = count + 1
            // if the color doesn't exist in colorDict then add it
        } else {
            dictColors[color] = 1
        }
    }
        
            let highestValue = dictColors.values.max()
    // we find the highest value and then we check if it exists in our dictionary
       
        for (color, count) in dictColors {
            if dictColors[color] == highestValue {
                topColors.append(color)
            }
        }
 
    return topColors
    
}
//print(mostCommon1(colors))


