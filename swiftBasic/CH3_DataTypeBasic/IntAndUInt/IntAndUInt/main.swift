import Foundation

// code 3-1 Int and UInt
var integer: Int = -100
let unsignedInteger: UInt = 50  //Minus value can't be allowed to UInt type.
print("integer value: \(integer), unsignedInteger value: \(unsignedInteger)")
print("Int max: \(Int.max), Int min: \(Int.min)")
print("UInt max: \(UInt.max), UInt min: \(UInt.min)")
let largeInteger: Int64 = Int64.max
let smallUnsignedInterger: UInt8 = UInt8.max
print("Int64 max: \(largeInteger), UInt8 max: \(smallUnsignedInterger)")

let tooLarge: Int = Int.max + 1  // It returns an error due to out of expression range of Int
let cannotBeNegetive: Uint = -5 // It returns an error because UInt can't be minus.

integer = unsignedInteger   // error! Int and UInt are different type in Swift
integer = Int(unsignedInteger)  //  Should assign Int type value.

//code 3-2 various Integer representation
let decimalInteger: Int = 28
let binaryInteger: Int = 0b11100    // 28: decimal to binary number
let octalInteger: Int = 0o34    // 28: decimal to octal number
let hexadecimalInteger: Int = 0x1C  // 28: decimal to hexa number


