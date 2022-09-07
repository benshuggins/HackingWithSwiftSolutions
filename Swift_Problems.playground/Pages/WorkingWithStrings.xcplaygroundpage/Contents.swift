//: [Previous](@previous)


import CoreGraphics
import Darwin


//var greeting = "Hello, playground"
//
let name = "Taylor"

// First Method of indexing a string
let letter = name[name.index(name.startIndex, offsetBy: 3)]


//// extension version of indexing a string
//extension String {
//    subscript(i: Int) -> String {
//        return String(self[index(startIndex, offsetBy: i)])
//    }
//}
//
//name[4]
//
//
//let password = "123456"
//
//password.hasPrefix("123")
//password.hasSuffix("456")
//
//
extension String {
    // remove a prefix if it exists
    func deletingPrefix(_ prefix: String) -> String {
        guard self.hasPrefix(prefix) else { return self }
        return String(self.dropFirst(prefix.count))
    }

    // remove a suffix if it exists
    func deletingSuffix(_ suffix: String) -> String {
        guard self.hasSuffix(suffix) else { return self }
        return String(self.dropLast(suffix.count))
    }
}
//
//
//password.deletingSuffix("123")
//
//
//extension String {
//    var capitalizedFirst: String {
//        guard let firstLetter = self.first else { return "" }
//        return firstLetter.uppercased() + self.dropFirst()
//    }
//}
//
//
//let weather = "it's going to rain"
//print(weather.capitalizedFirst)
//
//
//let languages = ["Python", "Ruby", "Swift"]
//
//
//let input = "Swift is like Objective-C without the C"
//
//languages.contains(where: input.contains)


//let string = "This is a test string"
//let attributes: [NSAttributedString.Key: Any] = [
//    .foregroundColor: UIColor.white,
//    .backgroundColor: UIColor.red,
//    .font: UIFont.boldSystemFont(ofSize: 36)
//]
//
//let attributedString = NSAttributedString(string: string, attributes: attributes)
