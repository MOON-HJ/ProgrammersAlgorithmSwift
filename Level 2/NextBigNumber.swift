import Foundation

func solution(_ n:Int) -> Int {
  var answer = n
    let count = Array(String(n, radix: 2)).filter{$0=="1"}.count
    
    repeat {
        answer += 1
        
    } while Array(String(answer, radix: 2)).filter{$0=="1"}.count != count
    return answer
    
}
