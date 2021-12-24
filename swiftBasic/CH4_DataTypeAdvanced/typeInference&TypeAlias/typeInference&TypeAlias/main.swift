import Foundation

// This code didn't select type but name be declared by string type through type inference
var name = "yeongjin"

// Before once name be selected string type by type inference
// when you try to assign integer, program creates error.
name = 100

//type alias
typealias MyInt = Int           // MyInt is Int's another name.
typealias YourInt = Int         // YourInt is also Int's another name.
typealias MyDouble = Double

let age: MyInt = 100
var year: YourInt = 2080

// Because MyInt and YourInt are same Int type, it thinks same type.
year = age

let month: Int = 8                  // Of course, you can use exsiting Int.
let percentage: MyDouble = 99.9     // In addition to Int, all data types can be used by aliases.

