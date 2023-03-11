//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

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
	  
	  public init(_ val: Int, left: TreeNode? = nil, right: TreeNode? = nil) {
		  self.val = val
		  self.right = right
		  self.left = left
	  }
  }
let root = TreeNode(10, left: TreeNode(5, left: TreeNode(1)), right: TreeNode(15))
print("Root: ", root)

// Left, Right, Root

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
	// Left, Right, Root
	func postorderTraversal(_ root: TreeNode?) -> [Int] {
		guard let root = root else { return [] }
		return postorderTraversal(root.left) + postorderTraversal(root.right) + [root.val]
	}
	// Root, Left, Right
	func preOrderTraversal(_ root: TreeNode?) -> [Int] {
		guard let root = root else { return [] }
		let myValue = [root.val]
		let leftPre = preOrderTraversal(root.left)
		let rightPre = preOrderTraversal(root.right)
		return myValue + leftPre + rightPre
	}
	
	
		
	var list = [Int]()
		func preorderTraversal2(_ root: TreeNode?) -> [Int] {
			
			if let value = root?.val {
				list.append(value)
			}
			
			if let left = root?.left {
				preorderTraversal2(left)
			}
			if let right = root?.right {
				preorderTraversal2(right)
			}
			return list
		}
	
	
	func inorderTraversalRecursive(_ root: TreeNode?) -> [Int] {
		
		guard let root = root else { return [] }
		var result = [Int]()

		result += inorderTraversalRecursive(root.left)
		result.append(root.val)   							// This is here because
		result += inorderTraversalRecursive(root.right)

		return result
	}
}

	
let result = Solution().postorderTraversal(root)
	print("Post: ", result)


let result2 = Solution().preOrderTraversal(root)
print("Pre: ", result2)

let result3 = Solution().preorderTraversal2(root)
print("Pre2: ", result3)


let result4 = Solution().inorderTraversalRecursive(root)
print("Inorder: ", result4)
	
	
//	func postorderTraversal(_ root: TreeNode?) -> [Int] {
//		guard let root = root else {return [] }
//		var result: [Int] = []
//		var stack: [TreeNode] = []
//		var node = root
//
//		while true {
//			while node != nil {
//				stack.append(node)
//				node = node.left!
//			}
//
//			if stack.isEmpty { break }
//
//			node = stack.popLast()!
//
//
//
//
//		return []
//	}




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
