import Foundation

func solution(_ citations:[Int]) -> Int {
    for h in stride(from: citations.count, to: 0, by: -1) {
        if  citations.filter{$0>=h}.count >= h {
            return h
        }
    }
    return 0
}

solution([3, 0, 6, 1, 5] ) //3
