func solution(_ x:Int) -> Bool {
    return x % (String(x).map{Int(String($0))!}.reduce(0, +)) == 0
}

solution(10) // T
solution(12) // T
solution(11) // F
solution(13) // F



