import Foundation

func solution(_ number:String, _ k:Int) -> String {
    let number = Array(number)
    var k = k
    var stack:[Character] = []
    
    stack.append(number.first!)
    
    for i in number.dropFirst() {
        while (stack.count > 0) && (stack.last ?? "0" < i) && (k > 0){
            k -= 1
            stack.removeLast()
            
        }
        stack.append(i)
    }
    
    if k != 0 {
        stack.removeLast(k)
        
    }
    
    return stack.reduce(""){String($0)+String($1)}
}


print(solution("1924", 2))
print(solution("1231234", 3))
print(solution("4177252841", 4))

