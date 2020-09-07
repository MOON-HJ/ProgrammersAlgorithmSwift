import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var history:[String] = []
    for (i, word) in words.enumerated() {
        if history.firstIndex(of: word) != nil { // 중복
            return [i%n + 1, (i/n)+1]

        } else if history.last?.suffix(1) != word.prefix(1) && i != 0{
            return [i%n + 1, (i/n)+1]
            
        } else {
            history.append(word)
        }
    }
    return [0,0]
}

solution(3, ["tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"])

solution(2, ["hello", "one", "even", "never", "now", "world", "draw"])
