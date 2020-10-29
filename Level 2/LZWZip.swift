
func solution(_ msg:String) -> [Int] {
    var dics:Dictionary<String,Int> = [:]
    var count:Int = 1
    var msg:[String] = Array(msg).map{String($0)}
    var answer:[Int] = []
    (65...90).map({Character(UnicodeScalar($0))}).forEach{ i in
        dics[String(i)] = count
        count += 1
    }
    if msg.count == 1 {
        return [dics[msg[0]]!]
    }
    
    var max = 1
    var w = msg[0]
    var c = msg[1]
    while msg.count >= 1  {
        print("(w:\(w), c:\(c))")
        answer.append(dics[w]!)
        dics[w+c] = count
        count += 1
        msg.removeFirst(w.count)
        
        // next w
        max = max>(w+c).count ? max : (w+c).count
        for i in stride(from: max, to: 1, by: -1) {
            let nextw:String = Array(msg.prefix(i)).reduce("", +)
            if dics[nextw] != nil {
                w = nextw
                c = msg.dropFirst(i).first ?? ""
                break
            } else {
                w = msg.first ?? ""
                c = msg.dropFirst().first ?? ""
            }
        }
    }
    
    return answer
}
