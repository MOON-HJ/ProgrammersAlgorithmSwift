import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var answer = 1
    var crossTrucks:[[Int]] = []
    var truck_weights = truck_weights
    while true {
        
        if truck_weights.count != 0 {
            if weight >= crossTrucks.map({$0[0]}).reduce(0,+)+truck_weights.first!{
                crossTrucks.append([truck_weights.removeFirst(), 0])
            }
        }
        crossTrucks = crossTrucks.map{[$0[0], $0[1]+1]}
        if crossTrucks.count == 0 {
            break
        }
        crossTrucks = crossTrucks.filter{ $0[1] < bridge_length }
        
        answer += 1
    }
    
    return answer
}


solution(2, 10, [7,4,5,6]) // 8
solution(100, 100, [10]) // 101
solution(100, 100, [10,10,10,10,10,10,10,10,10,10]) // 110
