func solution(_ s:String) -> String {
    return String(s[s.index(s.startIndex, offsetBy: (s.count-1)/2)...s.index(s.startIndex, offsetBy: s.count/2)])

}
