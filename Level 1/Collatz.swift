func solution(_ num:Int) -> Int {
    var n = num
    for i in 1...501 {
        if n == 1 {
            return i-1
        }
        n = n % 2 == 0 ? n / 2 : ( n * 3 ) + 1
    }
    return -1
}
