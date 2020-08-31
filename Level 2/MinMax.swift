import Foundation
func solution(_ s:String) -> String {
    let array:[Int] = s.components(separatedBy: " ").map{Int($0)!}
    return "\(String(array.min()!)) \(String(array.max()!))"
}
