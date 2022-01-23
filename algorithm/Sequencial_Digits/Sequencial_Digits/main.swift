import Foundation

class Solution {
    func sequentialDigits(_ low: Int, _ high: Int) -> [Int] {
        return getSequentialNumbers(low, high)
    }
}

// 숫자를 자릿수마다 밸류로 변환 예) 1234 -> [1,2,3,4]
func getEachDigit(_ number: Int) -> [Int] {
    let stringNumArr: [String] = Array(String(number)).map {String($0)}
    return stringNumArr.compactMap { Int($0) }
}

//  범위에서 연속 되는 수만 담은 배열을 반환.
func getSequentialNumbers(_ low: Int, _ high: Int) -> [Int] {
    let sqArr: [Int] = (low...high).filter({(alpha: Int) -> Bool in
        return isSequential(alpha)
    })
    return sqArr
}

// 숫자가 연속한지 아닌지 검사
func isSequential(_ num: Int) -> Bool {
    let numArr:[Int] = getEachDigit(num)
    let result: [Int] = numArr.filter({(number:Int)-> Bool in
        for i in 0..<numArr.count-1 {
            if numArr[i] + 1 == numArr[i+1] {
                continue
            } else {
                return false
            }
        }
        return true
    })
    return !result.isEmpty
}




