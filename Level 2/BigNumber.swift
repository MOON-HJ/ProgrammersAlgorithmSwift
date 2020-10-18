// 1~9, 11 failed
import Foundation

func solution(_ numbers:[Int]) -> String {
    let numbers = numbers.map{String($0)}
    let answer = numbers.sorted{compare($0, $1)}
    return answer.reduce("", +)
}

func compare(_ a:String, _ b:String) -> Bool{
    let a = a
    let b = b
    if a.prefix(1) == b.prefix(1) {
        if a.prefix(2) == b.prefix(2) {
            return compare(String(a.dropFirst()), String(b.dropFirst()))
        } else if b.count == 1 {
            return compare(String(a.dropFirst()), b)
        }else {
            return compare(a, String(b.dropFirst()))
        }
    }else {
        return a.prefix(1) > b.prefix(1)
    }
}
