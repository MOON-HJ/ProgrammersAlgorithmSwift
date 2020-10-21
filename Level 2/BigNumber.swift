import Foundation

func solution(_ numbers:[Int]) -> String {
    if numbers.filter({$0 != 0}).isEmpty {
        return "0"
    }
    
    let numbers = numbers.map{String($0)}
    let answer = numbers.sorted{$0+$1 > $1+$0}
    let result = answer.reduce("", +)
    
    return result
}
