import Foundation
//기본 열거형
enum CompassPoint {
    case north
    case south
    case east
    case west
}
// 원시값을 갖는 열거형
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carrageReturn = "\r"
}
// 연관값을 갖는 열거형
/*
var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}
//결과값 "QR code: ABCDEFGHIJKLMNOP."
*/
//옵셔널
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

var serverResponseCode: Int? = 404
serverResponseCode = nil

if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}

//옵셔널 바인딩
if let actualNumber = Int(possibleNumber) {
    print("\"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("\"\(possibleNumber)\" could not be converted to an integer")
}

//옵셔널 암시적 추출
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation mark

let assumedString: String! = "An implictily unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation mark

// 범위
let underFive = 0.0..<5.0

print(underFive.contains(3.14)) // Prints "true"
print(underFive.contains(6.28)) // Prints "false"
print(underFive.contains(5.0))  // Prints "false"

let empty = 0.0..<0.0
print(empty.contains(0.0))      // Prints "false"
print(empty.isEmpty)            // Prints "true"

// CGPoint, CGSize
struct CGPoint {
    var x : CGFloat
    var y : CGFloat
}

struct CGSize {
    var width : CGFloat
    var height : CGFloat
}

struct CGRect {
    var origin : CGPoint
    var size : CGSize
}

//타입을 바꾸자 {Swift}
var value: Double = 3.14
var convertedValue: Int = Int(value)    // 새로운 타입으로 생성해야 함
//convertedValue = 1.234      //에러!

// 식별자
let someValue = 3.14
var someVariable = 1.414
// '_' 와일드카드가 나오면 그 자리에 나오는 식별자를 무시한다.
for _ in 1...5 {
    // 야호?
}
func bar(_ number: Int) -> Int {
    return 10 * number
}

_ = bar(5)

// 값 바인딩
let point = (3,2)
switch point {
case let (x,y):
    print("hello at \(x),\(y)")
}

switch point {
case (let i, _):
    print("hello loop \(i) only")
}

switch point {
case (_, var j):
    j += 10
    print("hello loop \(j) only")
}
// 튜플
let a = 2
let (b) = 2

let points = [(0,0), (1,0), (1,1), (2,0), (2,1)]
//This code isn't valid.
for (x, _) in points {
    /* ... */
}

// 열거형 케이스
let aString = "ABC"
if case "ABC" = aString {}

enum Dish {
    case pasta(taste: String)
    case chicken(withSauce: Bool)
    case airRice
}
    
var dishes = [Dish]()
var myDinner : Dish = .pasta(taste: "cream")
dishes.append(myDinner)
if case .pasta(let taste) = myDinner { }

myDinner = .chicken(withSauce: true)
dishes.append(myDinner)
while case .chicken(let sauced) = myDinner
{
    break
}

myDinner = .airRice
dishes.append(myDinner)
if case .airRice = myDinner { }

for dish in dishes {
    switch dish {
    case let .pasta(taste): print(taste)
    case let .chicken(sauced): print(sauced ? "양념" : "후라이드")
    case .airRice: print("공기밥")
    }
}

var someOptional : Int? = 42
if case .some(let x) = someOptional { print(x) }
if case let x? = someOptional { print(x) }

let arrayOfOptionalInts: [Int?] = [nil, 2, 3, nil, 5]
// Match only non-nil values.
for case let number? in arrayOfOptionalInts {
    print("Found a \(number)")
}

let someValues: Any = [nil]

switch someValues {
case is String: print("문자열이었어!")
case let value as Int: print(value+1)
default: print("Int도 아니고 String도 아니네!")
}

// 패턴 표현
let pointS = (1, 2)
switch pointS {
case (0, 0):
    print("(0,0) is at the origin.")
case (-2...2, -2...2):
    print("(\(pointS.0), \(pointS.1)) is near the origin.")
default:
    print("The point is at (\(pointS.0), \(pointS.1)).")
}

// -----------------------------------------
// Overload the ~= operator to match a string with an integer.
func ~= (pattern: String, value: Int) -> Bool {
    return pattern == "\(value)"
}
switch pointS{
case ("0", "0"):
    print("(0,0) is at the origin.")
default:
    print("The point is at (\(pointS.0), \(pointS.1)).")
}

//where 절
let tuples = [(1,2), (1,-1), (1,0), (0,2)]

for tuple in tuples {
    switch tuple {
    case let (x,y) where x == y: print("같네")
    case let (x,y) where x == -y: print("마이너스")
    case let (x,y) where x>y: print("크다")
    case (1, _): print("x=1")
    default: print("\(tuple.0), \(tuple.1)")
    }
}

let arrayOfOptionalInts2: [Int?] = [nil, 2, 3, nil, 5]
for case let number? in arrayOfOptionalInts2 where number > 2 {
    print("Found a \(number).")
}

//where 절
protocol SelfPrintable {
    func printByMyself()
}
struct Person: SelfPrintable { }
extension Int: SelfPrintable { }
extension String: SelfPrintable { }

extension SelfPrintable where Self: BinaryInteger, Self: Comparable {
    func printByMyself() {
        print("프로토콜 조합을 만족하는 경우만 확장!")
    }
}

extension SelfPrintable {
    func printByMyself() {
        print("그외 나머지 경우 확장")
    }
}

Int(10).printByMyself()
String("hello").printByMyself()
Person().printByMyself()
