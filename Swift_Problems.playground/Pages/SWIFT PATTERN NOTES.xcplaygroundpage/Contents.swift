//: [Previous](@previous)

import Foundation

// FIRST PATTERN IS USING SET TO REMOVE DUPLICATES

// SECOND PATTERN IS IF YOU NEED TO CHECK IF 2 STRINGS CONTAIN THE SAME CHARACTERS YOU CAN SORT THEM BOTH BEFORE JUST CHECKING IF THEY ARE ==

//SECOND A IS USING FIRSTINDEXOF:

var students = ["Ben", "Ivy", "Jordell", "Maxime"]
if let i = students.firstIndex(of: "Maxime") {
    students[i] = "Max"
}
print(students)  //["Ben", "Ivy", "Jordell", "Max"]

// If the item is not found then nil if returned for instance if I changed Maxime to Max then the array would remain the same or: ["Ben", "Ivy", "Jordell", "Maxime"] because Maxime was unable to be found. 


// THE THIRD PATTERN IS USING CONVERTING AN ARRAY TO A DICTIONARY AND CHECKING IF IT EXISTS WITH
// if let j = map[compliment] like below

// ALSO ENUMERATING AN ARRAY TO MAKE THIS PROCESS SIMPLER 

//for (index, item) in arr.enumerated() {
//    print("index: \(index), item: \(item)")
//
//    let compliment = target - item // this is
//
//    if let j = map[compliment] {  // if this exists in dictionary
//        return [index, j]
//    }



// A 4th pattern would be lets say you have to check whether 2 strings contain the same characters. We could use 1 dictionary and increase its count by 1 and then decrease its count by 1 and if the final count is 0 then we know that we are finished.


// A 5th Pattern to note would be using grouping by dictionaries for instance:
//let dictionary = Dictionary(grouping: strs, by: {String($0).sorted()}) // group by characters that are in sorted order.

// This sorts them by: sorted character, this is what the dictionary prints:

//[["a", "n", "t"]: ["tan", "nat"], ["a", "e", "t"]: ["eat", "tea", "ate"], ["a", "b", "t"]: ["bat"]]

// then all we have to do is return the values of the dictionaries because they are already sorted. 
