import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var a = A.sorted{$0 > $1}
    var b = B.sorted{$1 > $0}
    return zip(a, b).map{$0*$1}.reduce(0, +)
}

solution([1,4,2], [5,4,4])
solution([1,2], [3,4])
