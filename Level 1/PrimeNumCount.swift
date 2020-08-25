func solution(_ n:Int) -> Int {
    var answer: [Bool] = []
    for i in 2...n{
        answer.append(isPrime(i))
    }
    return answer.filter{$0==true}.count

}

func isPrime(_ num:Int) -> Bool{
    var i:Int = 2
    while i*i <= num {
        if num % i == 0 {
            return false
        }
        i += 1
    }
    return true
}
