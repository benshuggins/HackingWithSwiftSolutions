//: [Previous](@previous)

import Foundation
import CoreFoundation

var greeting = "Hello, playground"

// Inorder Traversal is left, root, right
//
//94. Binary Tree Inorder Traversal

//Given the root of a binary tree, return the inorder traversal of its nodes' values.

//Example 1:
//
//
//Input: root = [1,null,2,3]
//Output: [1,3,2]
//Example 2:
//
//Input: root = []
//Output: []
//Example 3:
//
//Input: root = [1]
//Output: [1]

// Inorder to build a tree with leaves dont I need a different insert function? One that can insert nil values??


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

class Solution {
	
	func inorderTraversalRecursive(_ root: TreeNode?) -> [Int] {
		
		guard let root = root else { return [] }
		var result = [Int]()

		result += inorderTraversalRecursive(root.left)
		result.append(root.val)   							// This is here because
		result += inorderTraversalRecursive(root.right)

		return result
	}
	
	func inorderTraversalIterative(_ root: TreeNode?) -> [Int] {
		var result = [Int]()
		var stack = [TreeNode]()
		var node = root

		while true {
			while node != nil {        // we go left as far as we can until we hit no node
				stack.append(node!)	   // we are appending to the stack as we go even though we wont use
				node = node!.left		// we traverse down the stack adding left to it
			}

			if stack.isEmpty { break }	// this means we are finished because everything we added to the stack
			node = stack.popLast()!      // we poplast and add it because we have reached nil we go back up
			result.append(node!.val)     // here we add the value we popped back up to because
			node = node!.right			// we then move right 
		}

		return result
	}
}


let tree = TreeNode(1)
tree.insert(val: 2)
//tree.insert(val: nil)
tree.insert(val: 3)
print(tree)

print(Solution().inorderTraversalIterative(tree))

