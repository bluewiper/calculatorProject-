//import UIKit

//var greeting = "Hello, playground"


//제4작업 Operator class생성
class Operator {
    let firstNumber: String
    let secondNumber: String
    init(firstNumber: String, secondNumber: String) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    func operate() -> Double? {
        return nil
    }
}

//덧셈 클래스
class AddOperation: Operator {
    override func operate() -> Double? {
        guard let firstNum = Double(firstNumber), let secondNum = Double(secondNumber) else { //firstNumber, secondNumber Double인지 검토 시도
            print("Invalid input")
            return 0 // 둘 중 하나라도 Double 아니면 0 출력으로 오류 안내
        }
        return firstNum + secondNum
    } // 제1작업 : 덧셈 클래스에 대한 덧셈 함수 정의
}// 제2작업 : AddOperation 클래스 생성 후 닫기

//let calculator = AddOperation(firstNumber: "4", secondNumber: "20")
//if let result = calculator.operate() {
//    print(result)
//}// 제3작업 : AddOperation 작동 확인

//뺄셈 클래스
class SubtractOperation: Operator {
    override func operate() -> Double? {
        guard let firstNum = Double(firstNumber), let secondNum = Double(secondNumber) else { //firstNumber, secondNumber Double인지 검토 시도
            print("Invalid input")
            return 0 // 둘 중 하나라도 Double 아니면 0 출력으로 오류 안내
        }
        return firstNum - secondNum
    } // 제1작업 : 뺄셈 클래스에 대한 뺄셈 함수 정의
}// 제2작업 : SubtractOperation 클래스 생성 후 닫기

//let calculator = SubtractOperation(firstNumber: "2", secondNumber: "20")
//if let result = calculator.operate() {
//    print(result)
//}// 제3작업 : SubtractOperation 작동 확인


//곱셈 클래스
class MultiplyOperation: Operator {
    override func operate() -> Double? {
        guard let firstNum = Double(firstNumber), let secondNum = Double(secondNumber) else { //firstNumber, secondNumber Double인지 검토 시도
            print("Invalid input")
            return 0 // 둘 중 하나라도 Double 아니면 0 출력으로 오류 안내
        }
        return firstNum * secondNum
    } // 제1작업 : 곱셈 클래스에 대한 곱셈 함수 정의
}// 제2작업 : MultiplyOperation 클래스 생성 후 닫기

//let calculator = MultiplyOperation(firstNumber: "4", secondNumber: "20")
//if let result = calculator.operate() {
//    print(result)
//}// 제3작업 : MultiplyOperation 작동 확인


//나눗셈 클래스
class DivideOperation: Operator {
    func divoperate() -> (quotient: Double, remainder: Double)? {
        guard let firstNum = Double(firstNumber), let secondNum = Double(secondNumber) else {
            print("Invalid input")
            return (Double.nan, Double.nan) // 둘 중 하나라도 Double 아니면 0 출력으로 오류 안내
    }
        if secondNum == 0 {
            print("Cannot divide by zero")
            return (Double.nan, Double.nan)
        }
        let quotient = firstNum / secondNum
        let remainder = firstNum.truncatingRemainder(dividingBy: secondNum)
        return (quotient, remainder)
    } // 제1작업 : 나눗셈 클래스에 대한 나눗셈 함수 정의
}// 제2작업 : DivideOperation 클래스 생성 후 닫기


//let dividecalculator = DivideOperation(firstNumber: "20", secondNumber: "3")
//if let result = dividecalculator.divoperate() {
//    print("Quotient: \(result.quotient), Remainder: \(result.remainder)")
//}// 제3작업 : DivideOperation 작동 확인

//나눗셈 기능 추가 : 0으로 나눴을 경우 무한대값 방지, 0으로 나눌 수 없다는 메시지 출력, 몫과 나머지 출력


//테스트

let addOperation = AddOperation(firstNumber: "0", secondNumber: "20")
if let addResult = addOperation.operate() {
    print(addResult)
}

let subtractOperation = SubtractOperation(firstNumber: "2", secondNumber: "20")
if let subtractResult = subtractOperation.operate() {
    print(subtractResult)
}

let multiplyOperation = MultiplyOperation(firstNumber: "4", secondNumber: "20")
if let multiplyResult = multiplyOperation.operate() {
    print(multiplyResult)
}

let divideOperation = DivideOperation(firstNumber: "20", secondNumber: "3")
if let divideResult = divideOperation.divoperate() {
    print("Quotient: \(divideResult.quotient), Remainder: \(divideResult.remainder)")
}

//이렇게 보면 Operator와 연관성이 없어보이는데.. Operator class에서 선언한 firstNumber, secondNumber 인스턴스를 생성한 것으로 이해하면 될까..?


//let calculate = Operator(firstNumber: "20", secondNumber: "2")
//    // 프로퍼티 초기화
//
//let addResult = AddOperation.operate// 덧셈 연산
//let subtractResult = SubtractOperation.operate// 뺄셈 연산
//let multiplyResult = MultiplyOperation.operate// 곱셈 연산
//let divideResult = DivideOperation.divoperate// 나눗셈 연산
//
//print("addResult : \(addResult)")
//print("subtractResult : \(subtractResult)")
//print("multiplyResult : \(multiplyResult)")
//print("divideResult : \(divideResult)")
