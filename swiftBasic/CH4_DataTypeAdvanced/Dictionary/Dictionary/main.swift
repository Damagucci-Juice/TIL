import Foundation

//typealias를 통해 조금 더 단순하게 표현해볼 수도 있습니다.
typealias StringIntDictionary = [String: Int]

//키는 String, 값은 Int 타입인 빈 딕셔너리를 생성합니다.
var numberForName: Dictionary<String, Int> = Dictionary<String, Int>()

//위 선언과 같은 표현입니다. [String: Int]는 Dictionary<String, Int>의 축약 표현입니다.
var nameForNumber: [Int: String] = [Int: String]()

//위 코드와 같은 동작을 합니다.
var numberForName1: StringIntDictionary = StringIntDictionary()

//딕셔너리의 키와 값 타입을 정확히 명시해줬다면 [:]만으로도 빈 딕셔너리를 생성할 수 있습니다.
var nameForName2: [String: Int] = [:]

//초깃값을 주어 생성해줄 수도 있습니다.
var numberForName3: [String: Int] = ["Damagucci": 100, "sunny": 200, "SooYoung": 300]

print(numberForName3.isEmpty) // false
print(numberForName3.count)   // 3

print(numberForName3["sunny"])  // Optional(200)
print(numberForName3["SooJin"]) // nil

numberForName3["sunny"] = 150
print(numberForName3["sunny"])  // Optional(150)

numberForName3["max"] = 999     // max라는 키로 999라는 값을 추가해줍시다.
print(numberForName3["max"])     // Optional(999)

print(numberForName3.removeValue(forKey: "Damagucci"))  // Optional(100)

//위에서 Damagucci 키에 해당하는 값이 이미 삭제되었으므로 nil이 반환됩니다.
//키에 해당하는 값이 없으면 기본값을 돌려주도록 할 수도 있습니다.
print(numberForName3.removeValue(forKey: "Damagucci"))

// Damagucci 키에 해당하는 값이 없으면 기본적으로 0이 반환됩니다.
print(numberForName3["Damagucci", default: 0])  // 0
