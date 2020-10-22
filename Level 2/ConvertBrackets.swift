import Foundation

func solution(_ p:String) -> String {
    var p = Array(p)
    var stackCount = 0
    if p.isEmpty {
        return ""
    }
    
    var u:[String] = []
    for i in p {
        u.append(String(i))
        if i == "(" {
            stackCount += 1
        } else {
            stackCount -= 1
            if stackCount == 0 {
                break
            }
        }
    }
    var v:[String] = p.dropFirst(u.count).map{"\($0)"}
    print("u=\(u), v=\(v)")
    
    
    var w = ["("]
    if isRightBucket(u){
        
    } else {
        
        w.append(contentsOf: v)
        u.removeFirst()
        u.removeLast()
        w.append(contentsOf: u.reversed())
    }
    
    
    return w.reduce("", +)
}

func isRightBucket(_ p: [String]) -> Bool{
    var stackCount = 0
    for i in p {
        if i == "(" {
            stackCount += 1
        } else {
            stackCount -= 1
            if stackCount < 0 {
                return false
            }
        }
    }
    
    return true
}
