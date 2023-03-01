//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

final class Node<Value> {
    var value: Value
    private(set) var children: [Node]
    
    var count: Int {
        1 + children.reduce(0) {$0 + $1.count}
    }
    
    // add just a root
    init(_ value: Value) {
        self.value = value
        children = []
    }
    
    //add a root with children
    init(_ value: Value, children: [Node]) {
        self.value = value
        self.children = children
    }
    
    init(_ value: Value, @NodeBuilder builder: () -> [Node]) {
        self.value = value
        self.children = builder()
    }
    
    func add(child: Node) {
        children.append(child)
    }
    
}

extension Node: Equatable where Value: Equatable {
    static func ==(lhs: Node, rhs: Node) -> Bool {
        lhs.value == rhs.value && lhs.children == rhs.children
    }
    
    
}
extension Node: Hashable where Value: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(value)
        hasher.combine(children)
        
    }
}

extension Node where Value: Equatable {
    
    func find(_ value: Value) -> Node? {
        if self.value == value {
            return self
        }
        
        for child in children {
            if let match = child.find(value) {
                return match
            }
        }
        return nil
    }
}

@_functionBuilder
struct NodeBuilder {
    static func buildBlock<Value>(_ children: Node<Value>...)-> [Node<Value>] {
        children
    }
}

var ben = Node("Ben")
var benSon = Node("BenSon")
ben.add(child: benSon)

var reid = Node("Reid")
var reidSon = Node("ReidSon")
reid.add(child: reidSon)

var root = Node("Rob")
root.add(child: ben)
root.add(child: reid)
print(root)

print(ben == reid)
print(ben != reid)
print(ben == ben)

print(ben.count)

if let ben = root.find("rob") {
    print(ben.count)
}

let terry = Node("Terry") {
    Node("Paul") {
        Node("Sophie")
        Node("Lottie")
    }
    
    Node("Andrew") {
        Node("John")
}
}

print(terry.count)
