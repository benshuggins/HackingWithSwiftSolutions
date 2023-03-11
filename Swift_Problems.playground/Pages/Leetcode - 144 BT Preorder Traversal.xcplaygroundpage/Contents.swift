//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//https://www.youtube.com/watch?v=QGWWGXzzXnY&t=153s&ab_channel=DailySwift

// Preorder is root, left, right

//144. Binary Tree Preorder Traversal
//Easy
//6.5K
//172
//Companies
//Given the root of a binary tree, return the preorder traversal of its nodes' values.
//
//
//
//Example 1:
//
//
//Input: root = [1,null,2,3]
//Output: [1,2,3]
//Example 2:
//
//Input: root = []
//Output: []
//Example 3:
//
//Input: root = [1]
//Output: [1]
//
//
//Constraints:
//
//The number of nodes in the tree is in the range [0, 100].
//-100 <= Node.val <= 100
//

// PreOrder is really root, left, right => It is really Root, all left, then all right

/** Example Binary Tree:
 
//	10
    /   \
   5     15
  /
 1
 PREORDER: [10,5,1, 15]     	                 Root,  left, right
  INORDER:	[1,5,10,15]	               Left, Root, Right
 POSTORDER :  [1,NULL,5,15,10]	       LEFT, RIGHT, ROOT
 

 */

  public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init() { self.val = 0; self.left = nil; self.right = nil; }
      
	  public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
      
	  public init(_ val: Int, _ left: TreeNode? = nil, _ right: TreeNode? = nil) {
          self.val = val
          self.left = left
          self.right = right
      }
	  
	  public init(_ val: Int, left: TreeNode? = nil, right: TreeNode? = nil) {
		  self.val = val
		  self.right = right
		  self.left = left
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


let root = TreeNode(10, left: TreeNode(5, left: TreeNode(1)), right: TreeNode(15))
print(root)
// Recursive Solution  => Root, Left, Right
func preOrder(_ root: TreeNode?) -> [Int] {
	guard let root = root else {return []}   // base case we are done when we hit nil
	
	let myValue = [root.val]
	let leftPre = preOrder(root.left)
	let rightPre = preOrder(root.right)
	return myValue + leftPre + rightPre
}
    // Root, left, right
func preOrderIterative(_ root: TreeNode?) -> [Int] {
	guard let root = root else {return []}
	var result: [Int] = []
	var stack: [TreeNode] = [root]   // assign the root to the stack if it exists
	
	while !stack.isEmpty {             // while the stack still contains values
		let lastNode = stack.removeLast()   // this part I dont get how does it know when it has reached nil? empty node?
		result.append(lastNode.val)
		
		if let right = lastNode.right {     // why does right come before left in iterative solution this the 									stack not result
			stack.append(right)
		}
		if let left = lastNode.left {        // left is last so that it is the first to be added to result at the top
			stack.append(left)
		}
	}
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

// Left, Root, Right
func inorderTraversalRecursive(_ root: TreeNode?) -> [Int] {
	guard let root = root else { return [] }
	var result = [Int]()

	result += inorderTraversalRecursive(root.left)      // Left
	result.append(root.val)   							// Root
	result += inorderTraversalRecursive(root.right)		// Right

	return result
}



let result = preOrder(root)

print(result)
//let result2 = inorderTraversalRecursive(root)
//print(result2)
let result3 = preOrderIterative(root)
print(result3)

//
//
//// Recursive
//class Solution {
//	var result = [Int]()
//
//	func preorderTraversal(_ root: TreeNode?) -> [Int] {
//		self.traverse(root: root)
//		return self.result
//	}
//
//	func traverse(root: TreeNode?) {
//		 if root == nil {
//			return
//		} else {
//			self.result.append(root!.val)
//			preorderTraversal(root!.left)
//			preorderTraversal(root!.right)
//		}
//	}
//}
//
//// Iterative solution   // remember preorder is root, left, right
//class SolutionIterative {
//	func preorderTraversal(_ root: TreeNode?) -> [Int] {
//		guard let root = root else {
//			return []
//		}
//
//		var result = [Int]()
//		var stack = [TreeNode]()
//
//		stack.append(root)
//		while !stack.isEmpty {
//			let node = stack.removeLast()  // we removeLast before adding to result
//			result.append(node.val)
//
//
//			if let rightNode = node.right {  // if if exists
//				stack.append(rightNode)
//			}
//			if let leftNode = node.left {
//				stack.append(leftNode)
//			}
//		}
//
//		return result
//	}
//}

//
//func inorderTraversalIterative(_ root: TreeNode?) -> [Int] {
//	var result = [Int]()
//	var stack = [TreeNode]()
//	var node = root
//
//	while true {
//		while node != nil {        // we go left as far as we can until we hit no node
//			stack.append(node!)	   // we are appending to the stack as we go even though we wont use
//			node = node!.left		// we traverse down the stack adding left to it
//		}
//
//		if stack.isEmpty { break }	// this means we are finished because everything we added to the stack
//		node = stack.popLast()!      // we poplast and add it because we have reached nil we go back up
//		result.append(node!.val)     // here we add the value we popped back up to because
//		node = node!.right			// we then move right
//	}
//
//	return result
//}
