// 테스트 실패 2,6,8,11,13,14. (효율성)2,4

import Foundation

func solution(_ n:Int) -> Int {
    if n == 0 {
        return 0
    }
    
  var answer = n+1
    let count = Array(String(n, radix: 2)).filter{$0=="1"}.count
    
    repeat {
        answer += 1
    } while Array(String(answer, radix: 2)).filter{$0=="1"}.count != count
    
    return answer
}
