import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    let month:[Int] = [ 0,31,29,31,30,31,30,31,31,30,31,30 ]
    let week:[String] = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT" ]
    return week[(month[0...a-1].reduce(0){$0+$1}+b+4)%7]
}
