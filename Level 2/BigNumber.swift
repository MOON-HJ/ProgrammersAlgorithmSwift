// 1~6, 11 failed
import Foundation

func solution(_ numbers:[Int]) -> String {
    let numbers = numbers.map{String($0)}
    let answer = numbers.sorted{compare($0, $1)}
    return answer.reduce("", +)
}

func compare(_ a:String, _ b:String) -> Bool{
    let prefixA = a.prefix(1)
    let prefixB = b.prefix(1)
    
    func compareByPosition(_ a:String, _ b:String) -> Bool {
        if a == "" || b == "" {
            return (a == "" ? prefixA : a.prefix(1) ) >= (b == "" ? prefixB : b.prefix(1))
        } else if a.prefix(1) == b.prefix(1) {
            return compareByPosition(String(a.dropFirst()), String(b.dropFirst()))
        } else {
            return a.prefix(1) > b.prefix(1)
        }
    }
    return compareByPosition(a,b)
}
