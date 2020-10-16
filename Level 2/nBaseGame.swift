func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var sequence = ""
    var answer = ""
    var count = 0
    while true {
        sequence += String(count, radix: n)
        count += 1
        if sequence.count >= m {
            answer.append(Array(sequence)[p-1].uppercased())
            sequence.removeFirst(m)
        }
        if answer.count == t {
            return answer
        }
    }
    return ""
}

solution(2, 4, 2, 1) // 0111
solution(16, 16, 2, 1) // 02468ACE11111111
