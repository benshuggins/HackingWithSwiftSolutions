//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

class Node {
    let value: Int
    var next: Node?
    
    init(value: Int, next: Node?){
        self.value = value
        self.next = next
    }
    
}

class LinkedList {
    
    var head: Node?
    
    func printLL() {
        var current = head
        while current != nil {
            print(current?.value ?? "")
            current = current?.next
        }
    }
    
    func setUpDummyNodes() {
        let three = Node(value: 3, next: nil)
        let two = Node(value: 2, next: three)
        head = Node(value: 1, next: two)
    }
    
    func delete(value: Int) {
        
        if head?.value == value {
            head = head?.next
        }
        
        var prev: Node?
        var current = head
        
        while current != nil && current?.value != value { // exit out becuase value doesn't equal our value
            
            prev = current
            current = current?.next
        }
        print("prev?.next: ", prev?.next?.value ?? "")  //2
        print("current?.next: ", current?.next?.value ?? "") //3
        prev?.next = current?.next   // this is what deletes there values
        // 2 will become 3
    }
    
    // append
    func insert(value: Int) {
        if head == nil {
            head = Node(value: value, next: nil)
            return
        }
        
        var current = head
        while current?.next != nil {
            current = current?.next
            // break out when we are at the end
        }
        current?.next = Node(value: value, next: nil)
    }
    
    func reverseLL(head: Node?) -> Node? {
        
        var currentNode = head
        var prev: Node?
        var next: Node?
        
        while currentNode != nil {
            next = currentNode?.next
            currentNode?.next = prev
            prev = currentNode
            
            currentNode = next
            
            
        }
        return nil
    }
    
    // 1 -> 2 -> 4 -> 5 -> nil
    func insertInOrder(value: Int) {
        if head == nil || head?.value ?? Int.min >= value {
           let newNode = Node(value: value, next: head)
            head = newNode
            return
        }
        
        var currentNode: Node? = head
        
        while currentNode?.next != nil && currentNode?.next?.value ?? Int.min < value {
            currentNode = currentNode?.next
        }
        
        currentNode?.next = Node(value: value, next: currentNode?.next)
        
    }
}
// 1 -> 2 -> 3 -> nil
let sampleList = LinkedList()
//sampleList.setUpDummyNodes()
//print(sampleList.head?.value)
sampleList.insert(value: 1)
sampleList.insert(value: 2)
sampleList.insert(value: 3)
sampleList.insertInOrder(value: 4)
sampleList.delete(value: 2)
sampleList.printLL()



// I forgave you for waiting a year



//  public class ListNode {
//      public var val: Int
//      public var next: ListNode?
//      public init() {
//          self.val = 0
//          self.next = nil }
//      public init(_ val: Int) {
//          self.val = val
//          self.next = nil }
//       public init(_ val: Int, _ next: ListNode?) {
//           self.val = val
//           self.next = next }
//  }
//
//class Solution {
//    func reverseList(_ head: ListNode?) -> ListNode? {
//        guard head != nil else {
//            return nil
//        }
//
//        let tail = head!
//        var head = head!
//        while let temp = tail.next{
//            tail.next = temp.next;
//            temp.next = head
//            head = temp
//        }
//        return head
//    }
//
//    public func append(value: Int) {
//
//        let newNode = ListNode(value: value)
//        if let lastNode = last {
//            // at least one node in the list
//            newNode.previous = lastNode
//            lastNode.next = newNode
//        } else {
//            // no nodes in list
//            head = newNode
//        }
//    }
//}
//
//
//let list = ListNode()
//list.self
//list.next
//




//
//class Solution {
//    func reverseList(_ head: ListNode?) -> ListNode? {
//        var previous = nil
//
//
//    }
//}
//










//
//Input: head = [1,2,3,4,5]
//Output: [5,4,3,2,1]
