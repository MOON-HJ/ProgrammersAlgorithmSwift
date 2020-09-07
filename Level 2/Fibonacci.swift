func solution(_ n:Int) -> Int {
    var Fibonacci:[Int] = [1,1]
    if n == 1 {
        return 1
    } else {
        for _ in 0..<n-2 {
            Fibonacci.append( Fibonacci.suffix(2).reduce(0,+) % 1234567 )
        }
        return Fibonacci.last!
    }
}
