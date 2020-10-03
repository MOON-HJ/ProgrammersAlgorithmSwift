//2,5,7,17,18,20,21,23,27

import Foundation

func solution(_ s:String) -> Int {
    let s:[String] = s.map{String($0)}
    var answer = 1000
    
    if s.count == 1 {
        return 1
    }
    for x in 1...(s.count/2)+1 {
        var string:[String] = []
        var y = 0
        var count=1
        while y < s.count-1 {
            if (y+x+x < s.count) && (s[y..<(y+x)] == s[(y+x)..<(y+x+x)]){
                count+=1
            } else if count<=1 {
                if (y+x+x > s.count) {
                    string.append(contentsOf: s[y...])
                } else {
                    string.append(contentsOf: Array(s[y..<(y+x)]))
                }
                count=1
            } else {
                string.append(String(count))
                string.append(contentsOf: s[y..<(y+x)])
                count=1
            }
            y += x
            
        }
        if string.reduce("", +).count < answer{
            answer = string.reduce("", +).count
        }
    }
    return answer
}

solution("aaaaaaaaaabbb") //5
//solution("aaabbaccc") // 7
//solution("")
solution("ababcdcdababcdcd") // 9x
//solution("abcabcdede") // 8
solution("abcabcabcabcdededededede") //14x
solution("xababcdcdababcdcd")// 17x
solution("a")//x
