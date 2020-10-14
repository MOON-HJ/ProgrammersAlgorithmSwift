import Foundation

func solution(_ n:Int) -> Int {
    func convert(_ n:Int)-> String{ // 3진법으로 변환
        let T:[String] = ["0","1","2",]
        let q = n / 3
        let r = n % 3
        
        if q == 0 {
            return T[r]
        }else {
            return convert(q) + T[r]
        }
    }
    var count = 1
    let converted = Array(convert(n)).map{Int(String($0))}
    
    return converted.reduce(0, { count *= 3; return $0 + ($1! * count/3)})
}
