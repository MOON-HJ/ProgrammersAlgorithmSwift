import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let devided:[Int] = arr.filter{$0%divisor==0}.sorted()
    return  devided.isEmpty ? [-1] : devided
}
