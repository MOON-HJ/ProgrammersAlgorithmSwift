func solution(_ n:Int, _ m:Int) -> [Int] {
    var a = n
    var b = m
    
    while(b != 0){
        let r : Int = a%b;
        a = b;
        b = r;
    }

    return [a, (n*m)/a ]
}

solution(3, 12) // [3,12]
solution(2, 5) // [1, 10]


