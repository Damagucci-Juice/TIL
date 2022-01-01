import Foundation
/*
enum School: CaseIterable {
    case primary
    case elementary
    case middle
    case high
    case college
    case university
    case graduate
}

let allCases: [School] = School.allCases
print(allCases)
// [EnumCaseIterable_Indirect.School.primary, EnumCaseIterable_Indirect.School.elementary, EnumCaseIterable_Indirect.School.middle, EnumCaseIterable_Indirect.School.high, EnumCaseIterable_Indirect.School.college, EnumCaseIterable_Indirect.School.university, EnumCaseIterable_Indirect.School.graduate]
*/

/*
// 원시값을 갖는 열거형의 항목 순회
enum School: String, CaseIterable {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    case graduate = "대학원"
}

let allCases: [School]  = School.allCases
print(allCases) // [EnumCaseIterable_Indirect.School.primary, EnumCaseIterable_Indirect.School.elementary, EnumCaseIterable_Indirect.School.middle, EnumCaseIterable_Indirect.School.high, EnumCaseIterable_Indirect.School.college, EnumCaseIterable_Indirect.School.university, EnumCaseIterable_Indirect.School.graduate]
*/

// available 속성을 갖는 열거형의 항목 순회
enum School: String, CaseIterable {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    @available(iOS, obsoleted: 12.0)
    case graduate = "대학원"
    
    static var allCases: [School] {
        let all: [School] = [.primary,
                             .elementary,
                             .middle,
                             .high,
                             .college,
                             .university]
        
        #if os(iOS)
        return all
        #else
        return all + [.graduate]
        #endif
    }
}


let allCases: [School] = School.allCases
print(allCases)

// 연관 값을 갖는 열거형의 항목 순회

enum PastaTaste: CaseIterable {
    case cream, tomato
}
enum PizzaDough: CaseIterable {
    case cheeseCrust, thin, original
}
enum PizzaTopping: CaseIterable {
    case pepperoni, cheese, bacon
}

enum MainDish: CaseIterable {
    case pasta(taste: PastaTaste)
    case pizza(dough: PizzaDough, topping: PizzaTopping)
    case chicken(withSauce: Bool)
    case rice
    
    static var allCases: [MainDish] {
        return PastaTaste.allCases.map(MainDish.pasta)
        + PizzaDough.allCases.reduce([]) { (result, dough) -> [MainDish] in
            result + PizzaTopping.allCases.map { (topping) -> MainDish in
                MainDish.pizza(dough: dough, topping: topping)
            }
        }
        + [true, false].map(MainDish.chicken)
        + [MainDish.rice]
    }
}
		
print(MainDish.allCases.count)  // 14
print(MainDish.allCases)        // 모든 경우의 연관 값을 갖는 케이스 컬렉션

// 특정 항목에 순환 열거형 항목 명시
/*
enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}
*/

// 열거형 전체에 순환 열거형 명시
indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let final = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case .number(let value):
        return value
    case .addition(let left, let right):
        return evaluate(left) + evaluate(right)
    case .multiplication(let left, let right):
        return evaluate(left) * evaluate(right)
    }
}

let result: Int = evaluate(final)
print("(5+4) * 2 = \(result)")      // (5 + 4) * 2 = 18

enum Condition: Comparable {
    case terrible
    case bad
    case good
    case great
}

let myCondition: Condition = Condition.great
let yourCondition: Condition = Condition.bad

if myCondition >= yourCondition {
    print("제 상태가 더 좋군요")
} else {
    print("당신의 상태가 더 좋아요.")
}
// 제 상태가 더 좋군요

enum Device: Comparable {
    case iPhone(version: String)
    case iPad(version: String)
    case macBook
    case iMac
}

var devices: [Device] = []
devices.append(Device.iMac)
devices.append(Device.iPhone(version: "14.3"))
devices.append(Device.iPhone(version: "6.1"))
devices.append(Device.iPad(version: "10.3"))
devices.append(Device.macBook)

let sortedDevices: [Device] = devices.sorted()
print(sortedDevices)
//[EnumCaseIterable_Indirect.Device.iPhone(version: "14.3"), EnumCaseIterable_Indirect.Device.iPhone(version: "6.1"), EnumCaseIterable_Indirect.Device.iPad(version: "10.3"), EnumCaseIterable_Indirect.Device.macBook, EnumCaseIterable_Indirect.Device.iMac]
