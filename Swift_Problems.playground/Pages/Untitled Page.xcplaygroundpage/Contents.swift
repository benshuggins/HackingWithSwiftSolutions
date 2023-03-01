//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


//extension Int {
//
//    func squared() -> Int {
//        return self * self
//    }
//}
//
//let number = 8
//number.squared()
//
//
//extension Int {
//    var isEven: Bool {
//        return self % 2 == 0
//    }
//}
//
//number.isEven

//
//let beatles = ["ben","reid"]
//
//let family = Set(["family", "bugs"])
//
//
//
//
//extension Collection {
//    func summarize() {
//
//        for n in self {
//            print(n)
//        }
//    }
//
//}
//
//family.summarize()
////
//
//protocol Identifiable {
//    var id: String {get set}
//    func Identify()
//}
//
//extension Identifiable {
//    func Identify() {
//        print("hello \(id)")
//    }
//}
//
//struct Person: Identifiable {
//    var id: String
//}
//
//let ben = Person(id: "ben")
//ben.Identify()


struct Book1 {
    var name: String
}

func buy(_ book: Book1) {                    // This only accepts a book
    print("I'm buying \(book.name)")
}


// Here is the protocol approach

protocol Purchaseable {
    var name: String {get set}
}


struct Book: Purchaseable {
    var name: String                    // both have name because they conform to the Purchaseable protocol
    var helmet: Bool
}

struct Employee: Purchaseable {
    var name: String                    // as you can see they both have name
}


func buy(_ item: Purchaseable) {        // Here any object created by any of the above stucts will work with this function becuase this function accepts Purchaseable protocol item object
    print("I'm buying \(item.name)")
}


let ben = Employee(name: "ben")
buy(ben)





protocol Computer {
    var price: Double { get set }
    var weight: Int { get set }
    var cpu: String { get set }
    var memory: Int { get set }
    var storage: Int { get set }
}

protocol Laptop {
    var price: Double { get set }
    var weight: Int { get set }
    var cpu: String { get set }
    var memory: Int { get set }
    var storage: Int { get set }
    var screenSize: Int { get set }
}
