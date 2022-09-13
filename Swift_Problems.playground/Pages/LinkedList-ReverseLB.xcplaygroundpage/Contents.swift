//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

class Node {
    var value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

let threeNode = Node(value: 3, next: nil)
let twoNode = Node(value: 2, next: threeNode)
let oneNode = Node(value: 1, next: twoNode)

printList(head: oneNode)

func printList(head: Node?) {
    print("print Linked List")
    var currentNode = head
    
    while currentNode != nil {
        print(currentNode?.value ?? -1)
    
        currentNode = currentNode?.next
    }
}

//        print("Prev: \(prev?.value ?? -1), Current: \(currentNode?.value ?? -1), Next: \(next?.value ?? -1) ")
func reverseLL(head: Node?) -> Node? {
    print("Reversing Linked List")
    var currentNode = head
    var prev: Node?
    var nxt: Node?
    print("starting head: ", head?.value ?? "")
    while currentNode != nil {
       
        nxt = currentNode?.next          // this is a temporary variable to store
        print("nxt: ", nxt?.value ?? "")
       
        currentNode?.next = prev // this is what points back

        prev = currentNode       // move ahead
        print("prev: ", prev?.value ?? -1)
        currentNode = nxt       // update current node
        print("currentNode:" , currentNode?.value ?? -1)
    }
   
    return prev   // this is equal to the new head at end
}

let myReverseList = reverseLL(head: oneNode)
printList(head: myReverseList) // 3,2,1


/**
we arent restructuring the list we are just reversing
 Iterate through and flip current = current.next to point to previous so connection so we are really reversing the chain that connects the nodes but not the nodes themselves
 Reverse the pointers with each iteration and return the last item as the new head
 */
