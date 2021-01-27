import Foundation


func solution(_ numbers:[Int], _ target:Int) -> Int {
    let max:Int = 1 << numbers.count
    var answer = 0

    (0..<max).forEach { cur in
        var count = 0
        for i in  0..<numbers.count {
            count += (((cur >> i) & 1) == 1 ? 1 : -1) * numbers[i]
        }
        answer += ( count == target ? 1 : 0)
    }

    return answer
}


