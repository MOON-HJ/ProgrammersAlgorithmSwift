import Foundation

func solution(_ number:String, _ k:Int) -> String {
    let numbers = Array(number)
    var mins = numbers.sorted().prefix(k)
    
    return numbers.filter{
        if mins.contains($0) {
            mins.remove(at: mins.firstIndex(of: $0)!)
            return false
        } else {
            return true
        }
    }.map{String($0)}.reduce("", +)
}


print(solution("1924", 2))
print(solution("1231234", 3))
print(solution("4177252841", 4))

