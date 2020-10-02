// 2, 5, 7, 11~15, 17~23, 26~28 Failed

import Foundation

func solution(_ s:String) -> Int {
    var lengths:[Int] = []
    if s.count == 1 {
        return 1
    }
    
    
    for n in 1...s.count/2 {
        if s.count % n != 0 {
            continue
        }

        var line = Array(s)
        var prev:[Character] = []
        var comparesNearby:[Bool] = []
        
        while !line.isEmpty {
            comparesNearby.append(prev == Array(line.prefix(n)))
            prev = Array(line.prefix(n))
            line = Array(line.dropFirst(n))
        }
        
        let countLetter = (comparesNearby.filter{!$0}.count-1) * n + (s.count%n==0 ? n : s.count%n)
        let countTimes = comparesNearby.enumerated()
            .filter{ i, v in i==0 ? true : !comparesNearby[i-1] && v }.count-1

        lengths.append( countLetter + countTimes )
    }
    
    return lengths.min()!
}
