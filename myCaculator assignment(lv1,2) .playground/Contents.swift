//import UIKit

//var greeting = "Hello, playground"

//Lv.1
//더하기, 빼기, 나누기, 곱하기 연산을 수행할 수 있는 Calculator 클래스를 만들기
//생성한 클래스를 이용하여 연산을 진행하고 출력

//Lv.2
//Lv1에서 만든 Calculator 클래스에 “나머지 연산”이 가능하도록 코드를 추가하고, 연산 진행 후 출력
//ex) 나머지 연산 예시 : 6을 3으로 나눈 나머지는 0 / 5를 3으로 나눈 나머지는 2


//calculator class 생성 *
//첫번째 들어갈 값 선언, 두자릿수 이상 입력하기 위해 string 값으로 받기
//두번째 들어갈 값 선언, 두자릿수 이상 입력하기 위해 string 값으로 받기
//string 값으로 받은 데이터를 Double로 형변환하여 연산 출력값을 Double형태로 받을 수 있도록 하기
//값을 저장하기 위한 초기화
//연산 기능 추가(덧셈) : 함수 정의
//연산 기능 추가(뺄셈) : 함수 정의
//연산 기능 추가(곱셈) : 함수 정의
//연산 기능 추가(나눗셈) : 함수 정의
//숫자 입력
//연산 함수 호출
//작동 확인 단계 : 값 출력

// calculator 클래스 생성
class Calculator {
    let firstNumber: String
    let secondNumber: String
// 초기화
    init(firstNumber: String, secondNumber: String) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
// 연산 함수(덧셈)
    func add() -> Double {
        if let firstNum = Double(firstNumber), let secondNum = Double(secondNumber) {
            return firstNum + secondNum
        } else {
            return 0
        }
    }
// 연산 함수(뺄셈)
    func sub() -> Double {
        if let firstNum = Double(firstNumber), let secondNum = Double(secondNumber) {
            return firstNum - secondNum
        } else {
            return 0
        }
    }
// 연산 함수(곱셈)
    func mul() -> Double {
        if let firstNum = Double(firstNumber), let secondNum = Double(secondNumber) {
            return firstNum * secondNum
        } else {
            return 0
        }
    }
// 연산 함수(나눗셈)
    func div() -> (quotient: Double, remainder: Double) {
        if let firstNum = Double(firstNumber), let secondNum = Double(secondNumber) {
            guard secondNum != 0  else {
                print("Error: Division by zero.")
                return (Double.nan, Double.nan)
            }
            let quotient = firstNum / secondNum
            let remainder = firstNum.truncatingRemainder(dividingBy: secondNum)
            return (quotient, remainder)
        } else {
            print("Error: Invalid input.")
            return (Double.nan, Double.nan)
        }
    }
}//클래스 클로징

//let calculator = Calculator(firstNumber: "20", secondNumber: "2")

//calculator.add()
//calculator.sub()
//calculator.mul()
//calculator.div()

let calculator = Calculator(firstNumber: "20", secondNumber: "2")
let addResult = calculator.add()// 덧셈 연산
let subtractResult = calculator.sub()// 뺄셈 연산
let multiplyResult = calculator.mul()// 곱셈 연산
let divideResult = calculator.div()// 나눗셈 연산

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")



//문제 : firstNumber 또는 secondNumber에서 ""일 때 0으로 인식해서 연산을 이어가고 싶은데 출력값이 0으로만 나오기 때문에 다음 연산을 할 수 없음 0으로 출력만 하라고 해놓고 다음 연산을 위한 명령이 없으니 당연하다고 생각은 함..

//문제 : scondNum을 0으로 두고 나눴는데 "Error: division by zero." 메시지가 안 뜸,




