func solution(_ n:Int) -> String {
    let subak:[String] = [String](repeating: "", count:n)
    return subak.enumerated().map{ (i, v) in i%2==0 ? "수" : "박" }.reduce(""){ $0+$1 }
}

