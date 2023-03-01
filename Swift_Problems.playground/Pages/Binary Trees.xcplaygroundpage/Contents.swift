//: [Previous](@previous)

import Foundation

// Binary Trees have only 2 children per node and lower values less than parent node go on left and values greater than parent node go on the right


class Node<Value> {
  var value: Value
  var left: Node?
  var right: Node?

  init(_ value: Value) {
    self.value = value
  }
}

extension Array {
    init<T>(_ node: Node<T>) where Element == Node<T> {
        self = [Node<T>]()

        if let left = node.left {
            self += Array(left)
        }

        self += [node]

        if let right = node.right {
            self += Array(right)
        }
    }
}

let root = Node(1)
root.left = Node(5)
root.right = Node(3)

root.left?.left = Node(7)
root.left?.right = Node(2)

root.right?.left = Node(6)
root.right?.right = Node(4)

//print(root.left?.right?.value ?? -1)

for node in Array(root) {
    print(node.value)
}

