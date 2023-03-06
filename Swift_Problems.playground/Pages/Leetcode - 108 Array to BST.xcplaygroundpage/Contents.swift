//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//108. Convert Sorted Array to Binary Search Tree

//Given an integer array nums where the elements are sorted in ascending order, convert it to a
//height-balanced
// binary search tree.
//
//
//
//Example 1:
//
//
//Input: nums = [-10,-3,0,5,9]
//Output: [0,-3,9,-10,null,5]
//Explanation: [0,-10,5,null,-3,null,9] is also accepted:
//
//Example 2:
//
//
//Input: nums = [1,3]
//Output: [3,1]
//Explanation: [1,null,3] and [3,1] are both height-balanced BSTs.




  public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init() { self.val = 0; self.left = nil; self.right = nil; }
      public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
      public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
          self.val = val
          self.left = left
          self.right = right
      }
  }

extension TreeNode: CustomStringConvertible {
	public var description: String {
		var result = ""
		// first we pring the left which is inorderTraversal or preorder traversal
		if let left = left {
			result += "\(left.description) <- "
		}
		// middle
			result += "\(val)"
		// right
		if let right = right {
			result += " -> \(right.description)"
		}
		return result
	}
}

extension TreeNode {
	public func insert(val: Int) {
		
		if val < self.val {
			if let left = left {
				left.insert(val: val)
			} else {
				left = TreeNode(val)
			}
		} else {
			if let right = right {
				right.insert(val: val)
			} else {
				right = TreeNode(val)
		}
	 }
  }
}



class Solution {

func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
	if nums.isEmpty { return nil }
	return build(nums, 0, nums.count - 1)
}

private func build(_ nums: [Int], _ start: Int, _ end: Int) -> TreeNode? {
	if start > end { return nil }

	let mid = start + (end - start)/2
	let midVal = nums[mid]
	
	let rootNode = TreeNode(midVal)
	
	rootNode.left = build(nums, start, mid - 1)
	rootNode.right = build(nums, mid+1, end)
	
	return rootNode
 }
}


print(Solution().sortedArrayToBST([-10,-3,0,5,9]))

//Input: nums = [-10,-3,0,5,9]
//Output: [0,-3,9,-10,null,5]
