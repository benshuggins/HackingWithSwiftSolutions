//: [Previous](@previous)
//
//You are given the root of a binary search tree (BST) and an integer val.
//
//Find the node in the BST that the node's value equals val and return the subtree rooted with that node. If such a node does not exist, return null.
//
//

// Leetcode problem #700 return the subtree of the value found with said value being the root.

import Foundation

var greeting = "Hello, playground"

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

// In order to verify this we need to insert items into this binary tree

class Solution {
	func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
		
		var result: TreeNode? = root /// result starts being the entire tree to start with, then we traverse down the tree on the left and right sides until we find the root node that matches and we return the entire thing from that node down.
		
		while result != nil {
			if result!.val == val {
				break
			} else if result!.val > val {   /// these 2 make up each side from the root node down obviously
				result = result!.left
			} else {
				result = result!.right
			}
		}
		return result
	}
}

let tree = TreeNode(4)
print(tree)
tree.insert(val: 5)
tree.insert(val: 3)
tree.insert(val: 4)


print("Here is the Subtree: ", Solution().searchBST(tree, 4) ?? "")
print(tree)

// Need to add insertion to a binary tree

