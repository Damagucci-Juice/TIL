import Foundation

//code 3-3 Bool
var boolean: Bool = true
boolean.toggle()    // ture - false reversal
let iLoveYou: Bool = true
let isTimeUnlimited: Bool = false
print("Is the time infinite?: \(isTimeUnlimited)")

//code 3-4 Float and Double
/*
 It goes beyond the scope that Float accepts.
 It is less accurate because it leaves only as much as it can handle.
 */
var floatValue: Float = 1234567890.1

//Double can handle enough.
let doubleValue: Double = 1234567890.1
 
print("floatValue: \(floatValue) doubleValue: \(doubleValue)")

//Change number of scope that float can handle.
floatValue = 123456.1
print(floatValue)

//TIP make random number
Int.random(in: -100...100)
UInt.random(in: 1...30)
Double.random(in: 1.5...4.3)
Float.random(in: -0.5...1.5)

//code 3-5 Character
let alphabetA: Character = "A"
print(alphabetA)

// It can use a unicode character to Character value.
let commandCharacter: Character = "❤️"
print(commandCharacter)

let 한글변수이름: Character = "ㄱ"

//Korean can be use by various name of swift code because korean be included to unicode.
print("한글의 첫 자음: \(한글변수이름)")

