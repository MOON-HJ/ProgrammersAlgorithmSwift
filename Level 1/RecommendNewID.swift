import Foundation

func solution(_ new_id:String) -> String {
    var str = new_id.lowercased().filter{  $0.isLetter || $0.isNumber || ["_","-","."].contains($0)}
    
    str = str.reduce(""){
        return $0.last == "." && String($1) == "." ? $0 : $0 + String($1)
    }
    
    if str.first == "." {
        str = String(str.dropFirst())
    }
    
    if str.last == "." {
        str = String(str.dropLast())
    }
    
    if str.isEmpty {
        str = "a"
    }
    
    str = String(str.prefix(15))
    
    if str.last == "." {
        str = String(str.dropLast())
    }
    
    while str.count <= 2 {
        str = str + String(str.last!)
    }
    
    return str
}

