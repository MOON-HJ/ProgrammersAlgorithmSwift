
func solution(_ msg:String) -> [Int] {
    var dics:Dictionary<String,Int> = [:]
    var count:Int = 1
    (65...90).map({Character(UnicodeScalar($0))}).forEach{ i in
        dics[String(i)] = count
        count += 1
    }
    
    var answer:[Int] = []
    var msg = Array(msg)
    var curr:String = String(msg[0])
    var next:String = String(msg[1])
    while msg.count != 1 {
        if dics[curr+next] != nil {
            answer.append(dics[curr+next]!)
        }else {
            dics[curr+next] = count
            count += 1
        }
            
        dics[curr]
        answer.append(dics[curr] ?? 0)
        msg.removeFirst(1)
    }
    
    return answer
}


//  solution("KAKAO") // [11, 1, 27, 15]
solution("TOBEORNOTTOBEORTOBEORNOT") // [20, 15, 2, 5, 15, 18, 14, 15, 20, 27, 29, 31, 36, 30, 32, 34]

