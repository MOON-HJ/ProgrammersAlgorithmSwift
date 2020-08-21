import Foundation

func solution(_ s:String) -> Bool
{
    print(s.components(separatedBy: "y"))
    return Array(s.uppercased()).filter { $0 == "P" }.count == Array(s.uppercased()).filter { $0 == "Y" }.count
}

