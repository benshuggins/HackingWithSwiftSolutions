//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//Given the root node of a binary search tree and two integers low and high, return the sum of values of all nodes with a value in the inclusive range [low, high].
//
//
//
//Example 1:
//
//
//Input: root = [10,5,15,3,7,null,18], low = 7, high = 15
//Output: 32
//Explanation: Nodes 7, 10, and 15 are in the range [7, 15]. 7 + 10 + 15 = 32.

// WE are finding the range between values in the entire tree.

// We need to traverse the tree


public class TreeNode {
	  public var val: Int
	  public var left: TreeNode?
	  public var right: TreeNode?
 
	public init() {
	  self.val = 0;
	  self.left = nil;
	  self.right = nil;
	  
  }
  public init(_ val: Int) {
	  self.val = val;
	  self.left = nil;
	  self.right = nil;
	  
  }
  public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
	  self.val = val
	  self.left = left
	  self.right = right
  }
  }

// this is what prints a BST
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
 
/// The trick to this problem is that we are
class Solution {
	func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
		
		guard let root = root else {return 0}
		
		var total: Int = 0
		
			if root.val >= low && root.val <= high {  /// if the first node is less than greater than then add it to total
				total += root.val
				}
			/// if low is less than current (root.val) all we know is that it is less (there are still values that could suffice the range that are on the low side so we go left and we recall rangeSumBST(_: ) so that we can check if the "next" value is within low & high
		///  We are add up each side together into a total if each node we check falls between low and high
		if root.val > low {
			total += rangeSumBST(root.left, low, high)
		}
		
		if root.val < high {
			total += rangeSumBST(root.right, low, high)
		}
		
		
		
		return total
	}
}

//class Solution {
//	func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
//
//		guard let root = root else { return 0 }
//
//		var sum = 0
//
//		if root.val >= low, root.val <= high {
			//sum += root.val }
//		if root.val > low { sum += rangeSumBST(root.left, low, high) }
//		if root.val < high { sum += rangeSumBST(root.right, low, high) }
//
//		return sum
//	}
//}


let tree = TreeNode(8)

tree.insert(val: 5)
tree.insert(val: 10)
print(tree)
tree.insert(val: 11)
print(tree)

print(Solution().rangeSumBST(tree, 7, 9))
