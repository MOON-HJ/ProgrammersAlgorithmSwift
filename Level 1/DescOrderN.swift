func solution(_ n:Int64) -> Int64 {
    let answer : [Character] = String(n).sorted{Int(String($0))! > Int(String($1))!}
    return Int64(answer.reduce(""){String($0) + String($1)})!
}
