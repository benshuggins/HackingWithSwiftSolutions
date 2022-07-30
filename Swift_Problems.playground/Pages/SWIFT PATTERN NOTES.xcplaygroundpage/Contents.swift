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
