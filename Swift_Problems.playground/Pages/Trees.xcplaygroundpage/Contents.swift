//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//Root is the 0th level top parent

//node is a block of data in the tree structure


// Leaf is a node without children

// children are the nodes below a given node and a parent is the node above


// This defines a single node?



class Node {
  var value: String
  var children: [Node] = [] // add the children property
  weak var parent: Node?
  
  init(value: String) {
    self.value = value
      
  }
    func add(child: Node) {
        children.append(child)
        child.parent = self
      }
}

let beverages = Node(value: "beverages")

let hotBeverages = Node(value: "hot")
let coldBeverages = Node(value: "cold")

beverages.add(child: hotBeverages)
beverages.add(child: coldBeverages)
