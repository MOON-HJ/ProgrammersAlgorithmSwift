import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64(round((Double)(a+b)/2 * (Double)(abs(b-a)+1)))
}
