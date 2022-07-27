//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result must appear as many times as it shows in both arrays and you may return the result in any order.
//Example 1:
//
//Input: nums1 = [1,2,2,1], nums2 = [2,2]
//Output: [2,2]
//Example 2:
//
//Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
//Output: [4,9]
//Explanation: [9,4] is also accepted.

// What I am going to do:

// Use intersect and then filter the result based on the count

// This can be solved with a dictionary and with a set

// word.filter{$0 == char}.count


// The first solution uses built in intersecttion method that compares a set to an array and then 

class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
      // have most common element, now just need to find the count of each and return the min
        var set1 = Set(nums1)
        let intersect = set1.intersection(nums2)
        print(intersect)
        
        var final = [Int]()
        for char in set1 {
            
            var low = Int.max

            for i in nums2 {
                low = min(low, nums2.filter{$0 == char}.count)
            }
            
            for i in 0..<low{
                final.append(char)
            }
        }
        return final
    }
}
//print(Solution().intersect([1,2,2,1],[2,2]))
//print(Solution().intersect([4,9,5],[9,4,9,8,4]))   // 4,9





class Solution2 {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var dict: [Int: Int] = [:] // [number: count]
        
        // first we get a dictionary of [number: count]
        for n in nums1 {
            if let val = dict[n] {
                dict[n] = val + 1
            } else {
                dict[n] = 1
            }
            print("dict", dict)
        }
        
        // build out the array to return
        //[9,4,9,8,4df]
        var retList: [Int] = []
        for n in nums2 {
            // if the value is already in the dictionary then you can add it ti the list
            if let val = dict[n] {
                print(dict[n])
                print("val: " , val)
                retList.append(n) // if the value already exists in dict from num2 then append it to retList
               print("retList: ", retList)
               
                print("dict2", dict)
                
                //   remove 1 and if it still exists
                dict[n] = val - 1
                print("dict[n]", dict[n])
                if let v = dict[n] {
                    if v == 0 {
                        dict[n] = nil
                    }
                }
            }
        }
        
        return retList
    }
}

print(Solution2().intersect([4,9,9,9,9,5],[9,4,9,8,4,9,9]))   // 4,9



// why do we have to start with the large array.
 
// Here is the idea first we determine what array is larger/ smaller, why ????

// Then with the larger array we build a dictionary with frequency of first array using if let method

// We then check the second array against the dictionary. If the second array has an item that is already in the dictionary then we add it to the finalReturn array.

// We then reduce the item that we just added to the dictionary by a count of 1 and if the count is 0 then we just remove it entirely. This allows us to



class Solution3 {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {

        var result = [Int]()
        if nums1.count > nums2.count {
            result = findIntersection(nums1, nums2)
        } else {
            result = findIntersection(nums2, nums1)
        }
        return result
    }
    
    
    func findIntersection(_ largeArr: [Int], _ smallArr: [Int]) -> [Int] {
        var map = [Int: Int]()
        var result = [Int]()
        
        for num in largeArr {
            // if we already have a value in our dictionary
            if map[num] != nil {
               map[num]! += 1
            } else {
                map[num] = 1
        }
        }
        for num in smallArr {
            if map[num] != nil {
                result.append(num)
                
                map[num]! -= 1  // decrement the dictionary because you added it to the result array and so would have added it twice once for largeArr and second time for smallerArr
                
                if map[num]! == 0 {
                    map[num] = nil
                }
            }
            
        }
  
        return result
    }
}

print(Solution3().intersect([4,9,5],[9,4,9,8,4]))   // 4,9
