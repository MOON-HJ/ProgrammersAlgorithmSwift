func solution(_ x:Int, _ n:Int) -> [Int64] {
    return [Int64](repeating: Int64(x), count: n).enumerated().map{i,v in v*Int64(i+1)}
}

solution(2, 5) //[2,4,6,8,10]
solution(4, 3) //[4,8,12]
