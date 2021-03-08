import Foundation

func isPrime(_ num:Int) -> Bool {
    var i = 2
    while i*i <= num {
        if num % i == 0 {
            return false
        }
        i += 1
    }
    return true
}

func solution(_ nums:[Int]) -> Int {
    var candidate:[Int] = []
    var visited:[Bool] = Array.init(repeating: false, count: nums.count)
    func combination(nums:[Int], depth:Int, n:Int, r:Int){
        if r == 0 {
            candidate.append(nums.enumerated().filter{visited[$0.offset]}.reduce(0){$0 + $1.element})
            return 
        }
        if depth == n {
            return 
        } else {
            visited[depth] = true
            combination(nums: nums, depth: depth+1, n: n, r: r-1)
            
            visited[depth] = false
            combination(nums: nums, depth: depth+1, n: n, r: r)
        }
    }
    combination(nums: nums, depth: 0, n: nums.count, r: 3)
    return candidate.filter(isPrime).count
}


solution([1,2,3,4]) // 1
solution([1,2,7,6,4]) // 4

