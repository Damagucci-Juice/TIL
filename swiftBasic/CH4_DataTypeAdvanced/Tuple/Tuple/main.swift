import Foundation

// Tuple has types of String, Int, Double
var person: (String, Int, Double) = ("damagucci", 27, 186.7)

// Through Index, you can extract values.
print("name: \(person.0), age: \(person.1), height: \(person.2)")

person.1 = 28           // Through Index, you can assign values.
person.2 = 185

print("name: \(person.0), age: \(person.1), height: \(person.2)")

// designate tuple element name
var human: (name: String, age: Int, height: Double) = ("damagucci", 27, 186.7)

//You can extract values by element name.
print("name: \(human.name), age: \(human.age), height: \(human.height)")
print("human.self: \(human.self)")

human.age = 99              // You can assign value by using element name.
human.2 = 165.3             // You can also assign value by using Index.

// Like before, you can extract value by index.
print("name: \(human.0), age: \(human.1), height: \(human.2)")

// assign tuple typealias
typealias PersonTuple = (name: String, age: Int, height: Double)

let jang: PersonTuple = ("lee", 100, 178.5)
let kim: PersonTuple = ("kim", 99, 165.8)

print("name: \(jang.name), age: \(jang.age), height: \(jang.height)")
print("name: \(kim.name), age: \(kim.age), height: \(kim.height)")
