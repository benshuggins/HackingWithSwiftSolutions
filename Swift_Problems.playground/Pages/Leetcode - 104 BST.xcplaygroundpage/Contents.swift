//: [Previous](@previous)

import Foundation
import Darwin

var greeting = "Hello, playground"

//: [Next](@next)
// Given the root of a binary tree, return its maximum depth.

//A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
//
//

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
	
	//func insert(value: Int, )
	
	
}
 
class Solution {
	func maxDepth(_ root: TreeNode?) -> Int {
		getDepth(1, root)
	}
	
	
	// we are going to pass in a count and a node to get our max depth.
	func getDepth(_ i: Int,_ node: TreeNode?) -> Int {
		// first lets guard against leafs, which are nodes without children which is why we use i-1
		guard let node = node else { return i-1 }
		// think of each side as separate we are adding 1 each time because each step or node increase to a BST has a height of 1 so we are just adding 1 each time.
		let leftNodeHeight = getDepth(i+1, node.left)
		let rightNodeHeight = getDepth(i+1, node.right)
		// then find the max and return it
		return max(leftNodeHeight, rightNodeHeight)
	}
}


let tree = TreeNode(4)

print(tree)
print("Here is the Height: ", Solution().maxDepth(tree))

