//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"


/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
// Individual Node class
public class LLNode<T> {
    var value: T
    var next: LLNode?
    var previous: LLNode?
    
    public init(value: T){
        self.value = value
    }
}

public class LinkedList<T> {
    public typealias Node = LLNode<T>
    
    private var head: Node?
    public var first: Node? {
        return head
    }
    
    // Return the tail
    public var last: Node? {
        guard var node = head else {return nil}
        
        
        while let next = node.next { // iterate through until you find node with next value = nil
            node = next
        }
        return node
    }
    
    public var print: String {
        var stringArray = "["
        guard var node = head else {return stringArray + "]" }
        while let next = node.next {
            
            stringArray += "\(node.value),"
            node = next
        }
        
        stringArray += "\(node.value)"
        return stringArray + "]"
    }
    
    public var count: Int {
        guard var node = head else {return 0}
        var count = 1
        while let next = node.next { // Iterate through nodes and count them up
            node = next
            count += 1
        }
        return count
    }
    
    public func append(value: T) {
        
        let newNode = Node(value: value)
        if let lastNode = last {
            // at least one node in the list
            newNode.previous = lastNode
            lastNode.next = newNode
        } else {
            // no nodes in list
            head = newNode
        }
    }
}

let list = LinkedList<String>()
list.first
list.count
list.append(value: "hey")
list.count
list.append(value: "no")
list.first?.value
list.last?.value
list.count
list.append(value: "yes two")
list.print
