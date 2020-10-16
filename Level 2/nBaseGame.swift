//14, 15, 16 시간초과

func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var sequence = ""
    var count = 0
    while (sequence.count / m) <= t {
        sequence += String(count, radix: n)
        count += 1
    }
    return String(sequence.enumerated().filter{$0.offset % m == p-1}.map{$1}.prefix(t)).uppercased()
}

solution(2, 4, 2, 1) // 0111
solution(16, 16, 2, 1) // 02468ACE11111111
