import Foundation

func solution(_ p:String) -> String {
    if p.isEmpty {
        return ""
    }
    var w = Array(p).map{String($0)}
    
    var count = 0
    var u:[String] = []
    var v:[String] = []
    while !w.isEmpty {
        let i = w.removeFirst()
        count += i=="(" ? 1 : -1
        u.append(i)
        if count == 0 { break }
    }
    v = w
    var stack = 0
    var t = u
    
    while !t.isEmpty {
        let i = t.removeFirst()
        stack += i=="(" ? 1 : -1
        if stack < 0 { break }
    }
    
    if t.isEmpty {
        return u.reduce("", +) + solution(v.reduce("", +))
    } else {
        let b = "(" + solution(v.reduce("", +)) + ")"
        u.removeFirst()
        u.removeLast()
        return b + u.map{ $0 == ")" ? "(" : ")"}.reduce("", +)
    }
    
}

solution("(()())()") // (()())()
solution(")(") // ()
solution("()))((()") //()(())()
