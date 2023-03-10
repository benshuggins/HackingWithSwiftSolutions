//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//897. Increasing Order Search Tree
//Easy
//3.8K
//646
//Companies
//Given the root of a binary search tree, rearrange the tree in in-order so that the leftmost node in the tree is now the root of the tree, and every node has no left child and only one right child.
//
//


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
		// first we print the left which is inorderTraversal or preorder traversal
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
// 
//class Solution {
//	func increasingBST(_ root: TreeNode?) -> TreeNode? {
//		
//		// first we need to get the left side
//		guard let node = node else {return nil}
//		
//		
//		
//		
//	}
//}
