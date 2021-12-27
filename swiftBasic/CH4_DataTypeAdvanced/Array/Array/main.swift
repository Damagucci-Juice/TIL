import Foundation

// Array initialize and create.
var names: Array<String> = ["yagom", "chulsoo", "younghee", "yagom"]

// abbrivation
// var names: [String] = ["yagom", "chulsoo", "younghee", "yagom"]

var emptyArray: [Any] = [Any]()
// var emptyArray: [Any] = Array<Any>()

// If you declare clearly type of array, you can make empty array with only []
// var emptyArray: [Any] = []
print(emptyArray.isEmpty)   // true
print(names.count) // 4

print(names[2]) // younghee
names[2] = "jenny"
print(names[2]) // jenny
// print(names[4]) // out of index

// names[4] = "elsa"   // out of index
names.append("elsa") // elsa is added at last.
names.append(contentsOf: ["john", "max"])   // john and max is added at last.
names.insert("happy", at: 2)    //인덱스 2에 삽입됩니다.
//인덱스 5의 위치에 jinhee와 minsoo가 삽입됩니다.
names.insert(contentsOf: ["jinhee", "minsoo"], at: 5)

print(names[4])         // yagom
print(names.firstIndex(of: "yagom"))    // 0
print(names.firstIndex(of: "christal")) // nil
print(names.first)                      // yagom
print(names.last)                       // max

let firstItem: String = names.removeFirst()
let lastItem: String = names.removeLast()
let indexZeroItem: String = names.remove(at: 0)

print(firstItem)                // yagom
print(lastItem)                 // max
print(indexZeroItem)            // chulsoo
print(names[1 ... 3])           // ["jenny", "yagom", "jinhee"]

