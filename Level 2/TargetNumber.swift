import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    let x = (target+numbers.reduce(0, +))/2
    let numbers = numbers.sorted()
    var answer = 0
    var minCount = 0
    var maxCount = 0
    
    for i in 1...numbers.count{
        if numbers.suffix(i).reduce(0, +) <= x {
            minCount = i
        }
        if numbers.prefix(i).reduce(0, +) <= x {
            maxCount = i
        }
    }
    
    print(minCount, maxCount)
    for i in 0..<numbers.count{
        for j in i+1..<numbers.count{
            let sum = numbers[i] + numbers[j]
            if sum == x {
                answer += 1
            } else if sum > x {
                break
            }
        }
    }    
    
    return 0
}

solution([1,2,3,4,5], 3) // -> 9
