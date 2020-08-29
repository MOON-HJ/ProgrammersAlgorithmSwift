import Foundation
func solution(_ n:Int64) -> Int64 {
    let x = sqrt(Double(n))
    return floor(x) == x ? Int64((x+1)*(x+1)) : -1
}
