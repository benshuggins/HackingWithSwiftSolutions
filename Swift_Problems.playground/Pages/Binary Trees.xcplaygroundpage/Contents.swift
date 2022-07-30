//: [Previous](@previous)

import Foundation

// Binary Trees have only 2 children per node and lower values less than parent node go on left and values greater than parent node go on the right


class Node<T> {
  var value: T
  var leftChild: Node?
  var rightChild: Node?

  init(value: T) {
    self.value = value
  }
}
