//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//Challenge 13: Run-length encoding
//Difficulty: Taxing
//Write a function that accepts a string as input, then returns how often each letter is repeated in
//a single run, taking case into account.
//Tip: This approach is used in a simple lossless compression technique called run-length encoding.
//Sample input and output
//• The string “aabbcc” should return “a2b2c2”.
//• The strings “aaabaaabaaa” should return “a3b1a3b1a3” • The string “aaAAaa” should return “a2A2a2”


// YOU NEED TO REVISIT THIS AND GO THROUGH IT. 

func challenge13a(_ input: String) -> String {
   var currentLetter: Character?
   var returnValue = ""
   var letterCounter = 0
   
    for letter in input {  // a
        print("letter: ", letter)
       if letter == currentLetter { // doesnt
         letterCounter += 1
      
      } else {
         if let current = currentLetter {
            returnValue.append("\(current)\(letterCounter)")
             print("returnValue: ", returnValue)
         }


          currentLetter = letter // currentLetter is a
          print("currentLetter: ", currentLetter)
          letterCounter = 1
      }
}
//   if let current = currentLetter {
//      returnValue.append("\(current)\(letterCounter)")
//      print("returnValue2nd: ", returnValue)
//}
   return returnValue
}

//challenge13a("aabbcc")  //  a2b2c2

// This is a much simpler answer 


func challenge13b(_ input: String) -> String {
   var returnValue = ""
   var letterCounter = 0                // current letter counter
   var letterArray = Array(input)
    
    for i in 0 ..< letterArray.count {
      letterCounter += 1
      
        if i + 1 == letterArray.count || letterArray[i] !=
            letterArray[i + 1] {
         returnValue += "\(letterCounter)#\(letterArray[i])"

          letterCounter = 0
     }
}
  return returnValue
}

challenge13b("aabbcc")




func encode(_ strs: String) -> String {
    var res = ""
    
    for s in strs {
        res += String(Int(s.count) + "#" + s)
    }
     
    
    
    
    return " "
}
encode("aabbcc")
