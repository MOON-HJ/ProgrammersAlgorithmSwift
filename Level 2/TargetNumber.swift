import Foundation


func solution(_ numbers:[Int], _ target:Int) -> Int {
    let totalCaseCount:Int = Int(truncating: NSDecimalNumber(decimal: pow(2, numbers.count)))
    var answer = 0
    (0..<totalCaseCount).forEach { i in
        let b = String(i, radix: 2).map{$0 == "1"}
        let cases = [Bool](repeating: false, count: numbers.count-b.count) + b
        let sum = zip(numbers, cases).map{$1 ? $0 : -$0}.reduce(0, +)
        answer += (sum == target) ? 1 : 0
    }

    return answer
}


