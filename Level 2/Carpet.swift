import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let area:Double = Double(brown) + Double(yellow)
    var x:Double = 0
    var y:Double = 0
    while true {
        y += 1
        x = (Double(brown) + 4.0 - (2.0 * y)) / 2.0
        if x*y == area {
            break
        }
        
    }
    return [Int(x), Int(y)]
}

solution(10, 2) // 4,3
solution(8, 1) // 3,3
solution(24, 24)

