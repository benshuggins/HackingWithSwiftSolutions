//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// LeetCode Problem #1

//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//You can return the answer in any order. This answer is to slow
// Brute force O(n^2)
// Too slow to be accepted its slower than linear
class Solution1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

            for i in 0..<nums.count {

                for j in 0..<nums.count where j != i {

                     if nums[i] + nums[j] == target {
                         print("Correct: \(nums[i]) + \(nums[j])")
                         return [i,j]
                     } else {
                     print("False: \(nums[i]) + \(nums[j])")

                 }
            }
        }

      return []
    }
}

print(Solution1().twoSum([2,7,11,15], 17))






// BINARY SEARCH Solution - O(n log n) method (Array has to be sorted). We are going to divide the array in half and remove parts that are less than or greater than. We are trying to findi the compliment or the other number that adds to other value to equal the sum.

class Solution2 {
    func twoSumBinarySearch(_ arr: [Int], _ sum: Int) -> [Int] {

        if arr.count < 0 {return []}

        for i in 0..<arr.count {

        let compliment = sum - arr[i] // compliment is what we are looking for
        var tempArray = arr
        tempArray.remove(at: i)  // remove the element we are searching against (don't count same element)

        // calls binary search helper method
        let hasCompliment = binarySearch(array: tempArray, key: compliment)
        print("num: \(arr[i]) - \(hasCompliment)")

        if hasCompliment == true {
            print("true - num: \(arr[i]), compliment: \(compliment)")
            return [arr[i], compliment]
        }
    }
    return []
}
}
print(Solution2().twoSumBinarySearch([2,7,11,15], 17))


// Binary Search Helper Method
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

// Here is another swift solution with O(n) This is the fastest Answer yet!!!!!!.

//class Solution3 {
//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    var dict = [Int: Int]()
//    for index in 0..<nums.count {
//        if let found = dict[target - nums[index]] { // 8 - every array value/ if item is different !!!
//            print("FOUND", found)
//            print("dict", dict)      // dictionary is of type [item: index] so dict[index] gives us item.
//            print("\(dict[target]) - \(nums[index])")
//            print("[\(found), \(index)]")
//            print("dict[index]", dict[index])
//            return [found, index]
//        } else {
//            dict[nums[index]] = index
//        }
//    }
//    return []
//    }
//}
//
//let answer = Solution3().twoSum([1,2,5,7,8], 8)

// Move pointer from either end. O(n)
//HERE IS THE POINTER METHOD: WE ARE GOING TO START ON THE ENDS AND ADD THE 2 POINTERS TOGETHER. IF THEY ARE GREATER THAN THE SUM THEN WE MOVE OUR POINTERS DOWN THE ARRAY UNTIL WE FIND 2 POINTERS THAT ARE LESS THAN THE SUM. WHEN THIS HAPPENS THEN WE MOVE OUR LOW SIDE POINTER UP UNTIL WE HAVE 2 INDICES THAT EQUAL OUR SUM AND WA LA.

let numbers6 = [3,2,4]

class Solution4 {

    func twoSumPointer(_ arrUnSorted: [Int], _ sum: Int) -> [Int] {

        var arr1 = arrUnSorted
        var arr = arr1.sorted()
        var lowIndex = 0
        var highIndex = arr.count - 1

        // while pointers haven't crossed yet.
        while lowIndex < highIndex {
          // get sum of both pointers

            let sumOfItems = arr[lowIndex] + arr[highIndex]

            if sumOfItems == sum {
                print("Sum of \(arr[lowIndex]) and \(arr[highIndex]) == \(sum)")
                return [lowIndex, highIndex]
            } else if sumOfItems < sum {
                lowIndex += 1
            } else if sumOfItems > sum {
                highIndex -= 1
            }
        }

        print("Pointers have crossed")

        return []
    }

}
print(Solution4().twoSumPointer(numbers6, 6))

// HERE WE HAVE 2 LOOPS I AND J AND WE ARE CHECKING AGAINST


let numbers4 = [3,2,4]

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0..<(nums.count - 1) {
        let ni = nums[i]
        for j in (i + 1)..<nums.count where j != i { // or does this ensure that j and i are different?
            if ni + nums[j] == target { // check for the sum
            return [i, j]
        }
    }
    }
    return []
}

twoSum(numbers4, 6)


class Solution6 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

            for i in 0..<nums.count {

                for j in 0..<nums.count where j != i {

                     if nums[i] + nums[j] == target {
                         print("Correct: \(nums[i]) + \(nums[j])")
                         return [i,j]
                     } else {
                     print("False: \(nums[i]) + \(nums[j])")

                 }
            }
        }

      return []
    }
}

print(Solution6().twoSum([2,7,11,15], 17))

//
//The Linear Solution
//First, we initialize a dictionary named map. Then we iterate as before, but only once, and check if there is an element in the dictionary that with the element at the current index, sums up to target:

class Solution7 {

    func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()    // [index: item]
        for (i, n) in nums.enumerated() {
            print("i: \(i), n: \(n)")
            let diff = target - n        // totalSum - current Item = our compliment

            if let j = map[diff] { // Is there an index in the dictionary that matches our compliment if so then we know that j and i are our two sums added together equal our target
            return [i, j]
    }
    map[n] = i // this is what populates our dictionary
    }
    return []
}
}
print(Solution7().twoSum2([3,2,4], 6))

// Here is teh Linear Solution that I like the most!!


class Solution8 {
    func twoSum4(_ arr: [Int], _ target: Int) -> [Int] {
        
        var map = [Int:Int]()  // [item: index]
        
        for (index, item) in arr.enumerated() {
            print("index: \(index), item: \(item)")
        
            let compliment = target - item // this is
            
            if let j = map[compliment] {  // if this exists in dictionary
                return [index, j]
            }
            
            map[item] = index
        print("map: ", map)
    }
  
    return []
}
}

print(Solution8().twoSum4([3,2,4], 6))


// This solution doesn't use enumerated. Its faster than 99.9% of all other solutions only C++ dict can beat it.

class Solution9 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]() //[index: item]
        for index in 0..<nums.count {
            if let found = dict[target - nums[index]] { // target - current Item = value to find // 8 - 1 = 7 if 7 exists in the array then we know we are golden!!! so its
               print("FOUND", found)
//                print("dict", dict)      // dictionary is of type [item: index] so dict[index] gives us item.
//                print("\(dict[target]) - \(nums[index])")
//                print("[\(found), \(index)]")
//                print("dict[index]", dict[index])
            return [found, index]
        } else { // this is essentially enumerating the array into a dictionary but faster. if you haven't found an answer above then build out our dictionary from the array so that we can find the answer
            dict[nums[index]] = index  //   nums[index] == item and dict[item] == index
            print("dict[nums[index]]: ", dict[nums[index]] )
            print("dict: ", dict)
        }
    }
    return []
    }
}

let answer = Solution9().twoSum([1,2,5,7,8], 8)



// Dude when I installed the LS motor in the cutlass, my job was a diagnostic electrical mechanic at Toyota Specialty Group and I still found it very difficult. 














