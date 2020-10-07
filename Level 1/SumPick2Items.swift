import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var answer:Set<Int> = []
    for i in 0..<numbers.count {
        for j in i+1..<numbers.count {
            answer.insert(numbers[i] + numbers[j])
        }
    }
    return Array(answer).sorted()
}

solution([2,1,3,4,1]) //[2,3,4,5,6,7]
solution([5,0,2,7]) // [2,5,7,9,12]
