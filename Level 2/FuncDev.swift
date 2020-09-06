import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var progressed:[Int] = zip(progresses, speeds).map{ Int(ceil((100 - Double($0))/Double($1))) }
    var answer:[Int] = []
    
    while true {
        let k = progressed.enumerated().filter{progressed[0] < $0.1}
        if k.count == 0 {
            break
        }
        answer.append(k[0].offset)
        progressed = Array(progressed.dropFirst(k[0].offset))
        
    }
    answer.append(progressed.count)
    return answer
}

solution([93, 30, 55], [1, 30, 5]) //[2,1]
solution([95, 90, 99, 99, 80, 99]    , [1, 1, 1, 1, 1, 1]) //[1,3,2]



