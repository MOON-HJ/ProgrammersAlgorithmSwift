import Foundation

func solution(_ s:String) -> Int {
    var s:[String] = Array(s.map{ String($0)})
    let origin = s
    var answer = 1000
    
    
    if (0...1).contains(s.count) {
        return s.count
    }
    
    for n in 1...s.count/2 {
        var line:[String] = []
        var count = 1
        while !s.isEmpty {
            let prev = s.prefix(n)
            s = Array(s.dropFirst(n))
            if s.prefix(n) == prev {
                count += 1
            } else if count <= 1 {
                line.append(contentsOf: Array(prev))
            } else {
                line.append(String(count))
                line.append(contentsOf: Array(prev))
                count = 1
            }
        }
        s = origin
        let lineLenght = line.reduce("", +).count
        answer = answer > lineLenght ? lineLenght : answer
    }
    
    return answer
}
