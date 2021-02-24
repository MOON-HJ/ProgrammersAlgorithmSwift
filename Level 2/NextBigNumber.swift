import Foundation

func solution(_ n:Int) -> Int {
    var answer = n    
    repeat {
        answer += 1
    } while answer.nonzeroBitCount != n.nonzeroBitCount
    return answer
}

