import Foundation

enum School1 {
    case primary        // 유치원
    case elementary     // 초등
    case middle         // 중등
    case high           // 고등
    case college        // 대학
    case university     // 대학교
    case graduate       // 대학원
}

// 한 줄에 선언
/*
enum School {
        case primary, elementary, middle, high, college, university, graduate
}
*/

// School 열거형 변수의 생성 및 값 변경
// var highestEducationLevel: School1 = School1.university

// 위 코드와 정확히 같은 표현입니다.
// var highestEducationLevel: School = .university

// 같은 타입인 School 내부의 항목으로만 highestEducationLevel의 값을 변경해줄 수 있습니다.
// highestEducationLevel = .graduate

// 열거형의 원시 값 지정과 사용
enum School: String {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    case graduate = "대학원"
}

let highestEducationLevel: School = .university
print("저의 최종학력은 \(highestEducationLevel.rawValue) 졸업입니다.")
// 저의 최종학력은 대학교 졸업입니다.

enum WeekDays: Character {
    case mon = "월", tue = "화", wed = "수", thu = "목", fri = "금", sat = "토", sun = "일"
}
let today: WeekDays = .fri
print("오늘은 \(today.rawValue)요일입니다.")    // 오늘은 금요일입니다.

// 열거형 원시값의 자동 생성
enum Numbers: Int {
    case zero
    case one
    case two
    case ten = 10
}

print("\(Numbers.zero.rawValue), \(Numbers.one.rawValue), \(Numbers.two.rawValue), \(Numbers.ten.rawValue)")

// 원시 값을 통한 열거형 초기화
let primary = School(rawValue: "유치원")   // primary
let graduate = School(rawValue: "석박사")  // nil

let one = Numbers(rawValue: 1)           // one
let three = Numbers(rawValue: 3)         // nil

// 연관 값을 갖는 열거형
/*
enum MainDish {
    case pasta(taste: String)
    case pizza(dough: String, topping: String)
    case chicken(withSauce: Bool)
    case rice
}

var dinner: MainDish = MainDish.pasta(taste: "cream") // cream pasta
dinner = .pizza(dough: "cheezecrust", topping: "BoolGoGi")  // 불고기 치즈크러스트 피자
dinner = .chicken(withSauce: true)      // 양념 통닭
dinner = .rice  // 밥

print(dinner)
*/

// 여러 열거형의 응용
enum PastaTaste {
    case cream, tomato
}
enum PizzaDough {
    case cheeseCrust, thin, original
}
enum PizzaTopping {
    case pepperoni, cheese, bacon
}

enum MainDish {
    case pasta(taste: PastaTaste)
    case pizza(dough: PizzaDough, topping: PizzaTopping)
    case chicken(withSauce: Bool)
    case rice
}

var dinner: MainDish = MainDish.pasta(taste: PastaTaste.tomato)
dinner = MainDish.pizza(dough: .cheeseCrust, topping: .bacon)
