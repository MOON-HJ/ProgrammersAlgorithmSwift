import Foundation

func solution(_ s:String) -> [Int] {
    var answer:[Int] = []
    var tuples:[[Int]] = s
        .replacingOccurrences(of: "}", with: "")
        .split(separator: "{")
        .map{Array($0.split(separator: ","))
        .map{Int($0)!}
    }
    tuples.sort{$0.count < $1.count}
    
    for i in 0..<tuples.count {
        answer.append(tuples[0].filter{!answer.contains($0)}[0])
        tuples.remove(at: 0)
    }
    
    return answer
}
