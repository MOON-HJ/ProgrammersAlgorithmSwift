import Foundation

func solution(_ numbers:String) -> Int {
    let num = Array(numbers).map{String($0)}.sorted(by: >)
    let bigNum = Int(num.reduce("", +))!
    
    
    var primes: [Int] = []
    var arr = Array.init(repeating: false, count: bigNum + 1)
    for i in 2 ... bigNum{
        if !arr[i]{
            primes.append(i)
            for j in stride(from: i, to: bigNum + 1, by: i){
                arr[j] = true
            }
        }
    }
    
    
    var answer = 0
    for i in primes{
        var checkContain = false
        var num = num
        
        for j in Array(String(i)) {
            if num.contains(String(j)){
                checkContain = true
                let index = num.firstIndex(of:String(j))!
                num[index] = ""
            }else{
                checkContain = false
                break
            }
        }
        
        if checkContain {
            answer += 1
        }
        
    }
    
    return answer
}

solution("17")
solution("011")
