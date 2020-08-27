func solution(_ s:String) -> String {
    var t:Bool = true
    return s.enumerated().map{ (i, v) in
        if v == " "{
            t = true
            return " "
        } else if t {
            t = false
            return String(v.uppercased())
        } else {
            t = true
            return String(v.lowercased())
        }}.reduce("", +)
}
