import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var failure:[Double] = []
    var survivor:Double = Double(stages.count)
    for i in 1...N{
        let dead:Double = Double(stages.filter{$0==i}.count)
        survivor -= dead
        failure.append( dead / survivor )
    }
    
    return failure.enumerated().sorted{$0.1 > $1.1}.map{$0.0+1}
}


solution(5, [2, 1, 2, 6, 2, 4, 3, 3]) //[3,4,2,1,5]

