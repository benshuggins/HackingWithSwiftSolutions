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
    public typealias Node = LLNode<T>?
    
    private var head: Node?
    
    public var first: Node? {
        return head
    }
    
    // Return the tail
    public var last: Node? {
        guard var node = head else {return nil}
        
        
        while let next = node?.next { // iterate through until you find node with next value = nil
            node = next
        }
        return node
    }
}

let list = LinkedList<Int>()
list.first
