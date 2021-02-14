// 5,8 TimeOut
import Foundation


import Foundation

func isPrime(_ num: Int) -> Bool{
    if num <= 1{
        return false
    }
    var i = 2
     
    while i <= num/i {
        if (num % i == 0 || num % (i + 2) == 0){
            return false
        }
        i+=1
    }
    return true

}

func solution(_ numbers:String) -> Int {
    let num = Array(numbers).map{String($0)}.sorted(by: >)
    let bigNum = Int(num.reduce("", +))!
    
    let primes = (0...bigNum).filter{isPrime($0)}.map{String($0)}
    
    return primes.map{Array(String($0))}.filter{
        var checkContain = false
        var num = num
        
        for i in $0 {
            if num.contains(String(i)){
                checkContain = true
                let index = num.firstIndex(of:String(i))!
                num[index] = ""
            }else{
                checkContain = false
                break
            }
        }
        return checkContain

    }.count
}

//permutaion(array: [1,2,3], start: 0, end: 2)
//solution("123")
//solution("17")
//solution("011")
solution("12")
