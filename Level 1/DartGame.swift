import Foundation

func solution(_ dartResult:String) -> Int {
    let dartResult = Array(dartResult)
    var answer:[Int] = []
    var num = ""

    dartResult.forEach {
        print($0)
        if $0.isNumber {
            num += String($0)
        } else if ["S", "D", "T"].contains($0) {
            let n:Int = Int(num)!
            switch $0 {
            case "D":
                answer.append(n*n)
            case "T":
                answer.append(n*n*n)
            default:
                answer.append(n)
            }
            num = ""
        } else {
            switch $0 {
            case "*":
                let suffix = answer.suffix(2).map{$0*2}
                answer.popLast()
                answer.popLast()
                answer = answer + suffix
            case "#":
                answer[answer.count-1] = answer.last! * -1
            default:
                break
            }
            
        }
        print(dartResult, answer)
    }
    return answer.reduce(0, +)
}
solution("1S2D*3T") // 37
solution("1D2S#10S") // 9
solution("1S*2T*3S")
