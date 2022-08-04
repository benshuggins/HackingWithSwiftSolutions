////: [Previous](@previous)
//
//import Foundation
//
////121. Best Time to Buy and Sell Stock
////Easy
////
////You are given an array prices where prices[i] is the price of a given stock on the ith day.
////
////You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.
////
////Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
////
////Example 1:
////
////Input: prices = [7,1,5,3,6,4]
////Output: 5
////Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
////Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
////Example 2:
////
////Input: prices = [7,6,4,3,1]
////Output: 0
////Explanation: In this case, no transactions are done and the max profit = 0.
//
//
////Thoughts what we want to do is find the greated increase. Find the maximimum increase:
//
//// If array is all descending then return 0
//
//// Loop through and subtract each element from each other element until you maximize the difference
//
////I could start with 2 for loops
//
//// Use a dictionary ??
//
//class Solution {
//    func maxProfit(_ prices: [Int]) -> Int {
//
//        let min = 0
//        var difference = 0
//        var largest = 0
//
//        for i in prices {
//                print("i", i)
//                let j = i+1
//            for j in prices {
//
//                difference = i - j
//                //print("difference: ", difference)
//                 largest = max(difference, min)
//                print("largest: ", largest)
//            }
//        }
//
//
//        return 0
//    }
//}
////print(Solution().maxProfit([7,1,5,3,6,4]))  //5
//
//
//
//class Solution2 {
//    func maxProfit(_ prices: [Int]) -> Int {
//        if prices.isEmpty { return 0 }
//
//        var maxProfit = 0
//        var min = prices[0]
//
//        for price in prices {
//            print("price: ", price)
//            print("min: ", min)
//            if price < min {
//                min = price
//            } else {
//                print("price - min: ", price-min)
//                maxProfit = max(price-min, maxProfit) }
//                print("maxProfit: ", maxProfit)
//        }
//
//        return maxProfit
//    }
//}
//
//print(Solution2().maxProfit([7,1,5,3,6,4]))  //5
