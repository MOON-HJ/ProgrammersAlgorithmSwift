// 1~4, 7, 10~12 Failed :: 부분집합 내부 원소에 대한 순서 때문에 틀린 거 같음

import Foundation

func solution(_ numbers:String) -> Int {
    let numbers:[Character] = Array(numbers)
    let n = numbers.count
    var result:[Int] = []
    
    for i in (1 ..< 1<<n){
        var number:String = ""
        for j in (0 ..< n){
            if ((i & (1 << j)) != 0)  {
                number += String(numbers[j])
            }
        }
        print(number)
        result.append(Int(number)!)
    }
    return Set(result).map{isPrime($0)}.filter{$0}.count
}

func isPrime(_ number:Int) -> Bool {
    if number ==  0 {
        return false
    }
    
    var i = 2
    while i*i <= number {
        if(number % i == 0) {
            return false;
        }
        i+=1
    }
    return true
}
