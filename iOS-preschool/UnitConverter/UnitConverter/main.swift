import Foundation

var value: Double = 0
var fromUnit: String = ""
var toUnit: String = ""
var stringValue: String = ""
typealias FromTo = (from: String, to: String)

func convertCMToMeter() -> Double {
    let result: Double = Double(value)/100
    return result
}
func convertMeterToCM() -> Double {
    let result: Double = value*100
    return result
}
func convertCMToInches() -> Double {
    let result: Double = Double(value)*0.393701
    return result
}
func convertInchesToCM() -> Double {
    let result: Double = value * 2.54
    return result
}
func convertMeterToInches() -> Double {
    let result: Double = value*39.370079
    return result
}
func convertInchesToMeter() -> Double {
    let result: Double = value * 0.0254
    return result
}
func convertYardToCM() -> Double {
    let result: Double = value*91.44
    return result
}
func convertCMToYard() -> Double {
    let result: Double = value*0.010936
    return result
}

func readUserInput() -> String {
    print("기존 값과 변환할 단위를 한 칸 띄고 입력하세요.")
    let inputValue = readLine()
    if let wholeValue = inputValue {
        if wholeValue == "q" || wholeValue == "quit" {
            exit(0)
        }
        let firstSpace = wholeValue.firstIndex(of: " ") ?? wholeValue.endIndex
        let existingValueSubstring = wholeValue[..<firstSpace]
        var transformUnitSubString = wholeValue[firstSpace..<wholeValue.endIndex]
        let existingValue: String = String(existingValueSubstring)
        if transformUnitSubString.hasPrefix(" ") {
            transformUnitSubString.removeFirst()
        }
        
        toUnit = String(transformUnitSubString)
        return existingValue
    } else {
        return "nil"
    }
}
func splitRawValue(data: String) -> Void {
    var existingValue: String = data
    if existingValue.hasSuffix("cm") {
        existingValue.removeLast(2)
        fromUnit = "cm"
    } else if existingValue.hasSuffix("m") {
        existingValue.removeLast()
        fromUnit = "m"
    } else if existingValue.hasSuffix("in") {
        existingValue.removeLast(2)
        fromUnit = "in"
    } else if existingValue.hasSuffix("yd") {
        existingValue.removeLast(2)
        fromUnit = "yd"
    }else {
        print("지원하지 않는 단위입니다.")
    }
    let number: Double? = Double(existingValue)
    if let numberValue = number {
        value = numberValue
    }
}

// 실행부
repeat {
    stringValue = readUserInput()
    splitRawValue(data: stringValue)
    let tupleValue: FromTo = (from: fromUnit, to: toUnit)

    switch tupleValue {
    case ("cm", "m"):
        print("\(convertCMToMeter())m")
    case ("cm", "in"):
        print("\(convertCMToInches())in")
    case ("cm", "yd"):
        print("\(convertCMToYard())yd")
    case ("cm", _):
        print("\(convertCMToMeter())m")
    case ("m", "cm"):
        print("\(convertMeterToCM())cm")
    case ("m", "in"):
        print("\(convertMeterToInches())in")
    case ("m", "yd"):
        value = convertYardToCM()
        print("\(convertCMToMeter())yd")
    case ("m", _):
        print("\(convertMeterToCM())cm")
    case ("in", "cm"):
        print("\(convertInchesToCM())cm")
    case ("in", "m"):
        print("\(convertInchesToMeter())m")
    case("in", "yd"):
        print("\(convertInchesToCM())yd")
    case ("in", _):
        print("\(convertInchesToCM())cm")
    case ("yd", "cm"):
        print("\(convertYardToCM())cm")
    case ("yd", "m"):
        value = convertYardToCM()
        print("\(convertCMToMeter())m")
    case ("yd", "in"):
        value = convertYardToCM()
        print("\(convertCMToInches())in")
    case ("yd", _):
        value = convertYardToCM()
        print("\(convertCMToMeter())m")
    default:
        print("thank you")
    }
} while stringValue != "q" || stringValue != "quit"

