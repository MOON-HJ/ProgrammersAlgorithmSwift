import Foundation

func solution(_ s:String) -> Bool
{
    var s = Array(s.map{return $0 == "(" ? 1 : -1})
    var count = 0
    for i in s {
        count += i
        if count < 0 {
            return false
        }
    }
    
    return count == 0
}

solution("()()") // T
solution("(())()") // T
solution(")()()") //F
solution("(()(") // F

