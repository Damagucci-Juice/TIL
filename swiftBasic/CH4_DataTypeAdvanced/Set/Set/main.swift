import Foundation

var ages: Set<Int> = Set<Int>()  // 빈 세트 생성
var names1: Set<String> = []          // 빈 세트 생성

//Array와 마찬가지로 대괄호를 사용합니다.
var names: Set<String> = ["yagom", "chulsoo", "younghee", "yagom"]

// 그렇기 때문에 타입 추론을 사용하게 되면 컴파일러는 Set가 아닌 Array로 타입을 지정합니다.
var numbers = [100, 200, 300]
print(type(of: numbers))    //Array<Int>

print(names.isEmpty)    // false
print(names.count)      // 3 - 중복된 값은 허용되지 않아 yagom은 1개만 남습니다.

names.insert("jenny")
print(names.count)

print(names.remove("chulsoo"))  // chulsoo
print(names.remove("john"))     // nil

let englishClassStudents: Set<String> = ["john", "chulsoo", "yagom"]
let koreanClassStudents: Set<String> = ["jenny", "yagom", "chulsoo", "hana", "minsoo"]

// 교집합 {"yagom", "chulsoo"}
let intersectSet: Set<String> = englishClassStudents.intersection(koreanClassStudents)

// 여집합의 합(배타적 논리합) {"john", "jenny", "hana", "minsoo"}
let symmetricDiffSet: Set<String> = englishClassStudents.symmetricDifference(koreanClassStudents)

// 합집합 {"john", "jenny", "yagom", "chulsoo", "hana", "minsoo"}
let unionSet: Set<String> = englishClassStudents.union(koreanClassStudents)

// 차집합 {"john"}
let subtractSet: Set<String> = englishClassStudents.subtracting(koreanClassStudents)

print(unionSet.sorted())   // ["chulsoo", "hana", "jenny", "john", "minsoo", "yagom"]

let 새: Set<String> = ["비둘기", "닭", "기러기"]
let 포유류: Set<String> = ["사자", "호랑이", "곰"]
let 동물: Set<String> = 새.union(포유류)   // 새와 표유류의 합집합


 print(새.isDisjoint(with: 포유류))     // 서로 배타적인지 - true
 print(새.isSubset(of: 동물))          // 새가 동물의 부분집합인가요? - true
 print(동물.isSuperset(of: 포유류))      // 동물은 포유류의 전체집합인가요? - true
 print(동물.isSuperset(of: 새))        // 동물은 새의 전체집합인가요? - true
 
