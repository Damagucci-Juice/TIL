import Foundation

//String with 'let' can't be changed.
let name: String = "Damagucci-Juice"

//Can make empty string using initializer.
//String with 'var' can be changed.
var intruduce: String = String()

// Using append() method, you can attach string.
intruduce.append("My name is")

// through + operator, you can attach string.
intruduce = intruduce + " " + name + "."
print(intruduce)

// you can count the number of 'name'
print("the number of 'name': \(name.count)")
// You can check empty string.
print("Is intruduce empty?: \(intruduce.isEmpty)")

// When Using scala value of unicode, to right expression is printed.
let unicodeScalarValue: String = "\u{2665}"
print(unicodeScalarValue)

// Binding using operator.
let hello: String = "Hello"
let damagucci: String = "damagucci"
var greeting: String = hello + " " + damagucci + "!"
print(greeting)     // Hello damagucci!

greeting = hello
greeting += " "
greeting += damagucci
greeting += "!"
print(greeting)

// String comparison through operator.
var isSameString: Bool = false
isSameString = hello == "Hello"
print(isSameString)

isSameString = hello == "hello"
print(isSameString)

isSameString = damagucci == "damagucci"
print(isSameString)

isSameString = damagucci == hello
print(isSameString)

//Check prefix, suffix through method
var hasPrefix: Bool = false
hasPrefix = hello.hasPrefix("He")
print(hasPrefix)    // true

hasPrefix = hello.hasPrefix("he")
print(hasPrefix)    // false

hasPrefix = greeting.hasPrefix("Hello ")
print(hasPrefix)    // true

hasPrefix = damagucci.hasPrefix("cchi")
print(hasPrefix)

hasPrefix = hello.hasPrefix("Hello")
print(hasPrefix)  // true

var hasSuffix: Bool = false
hasSuffix = hello.hasSuffix("He")
print(hasSuffix)

hasSuffix = hello.hasSuffix("llo")
print(hasSuffix)

hasSuffix = hello.hasSuffix("He")
print(hasSuffix)

hasSuffix = greeting.hasSuffix("damagucci")
print(hasSuffix)

hasSuffix = greeting.hasSuffix("damagucci!")
print(hasSuffix)

hasSuffix = damagucci.hasSuffix("gucci")
print(hasSuffix)

//transform between uppercase and lowercase.
var convertedString: String = ""
convertedString = hello.uppercased()
print(convertedString)  // HELLO

convertedString = hello.lowercased()
print(convertedString)  // hello

convertedString = damagucci.uppercased()
print(convertedString)  // DAMAGUCCI

convertedString = greeting.uppercased()
print(convertedString)  // HELLO DAMAGUCCI!

convertedString = greeting.lowercased()
print(convertedString)  // hello damagucci!

//check an empty string through property.
var isEmptyString: Bool = false
isEmptyString = greeting.isEmpty
print(isEmptyString)

greeting = "HELLO"
isEmptyString = greeting.isEmpty
print(isEmptyString)

greeting = ""
isEmptyString = greeting.isEmpty
print(isEmptyString)

// count string length using property.
print(greeting.count)   // 0

greeting = "안녕하세요"
print(greeting.count)   //5

greeting = "hi!"
print(greeting.count)   //3

// 코드상에서 여러 줄의 문자열을 직접 쓰고 싶다면 큰따옴표 세 개를 사용하면 됩니다.
// 큰따옴표 세 개를 써주고 한 줄을 내려써야 합니다.
// 마지막 줄도 큰따옴표 세 개는 한 줄 내려써야 합니다.
let stage: String = """
#####
#OoP#
#####
=====
"""
print(stage)


