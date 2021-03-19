import Foundation

func solution(_ info:[String], _ query:[String]) -> [Int] {
    return query.map{
        let data = $0.components(separatedBy: " ")
        return info.filter{  
            let i = $0.components(separatedBy: " ")
            return (i[0] == String(data[0]) || String(data[0]) == "-") && 
                (i[1] == String(data[2]) || String(data[2]) == "-") &&
                (i[2] == String(data[4]) || String(data[4]) == "-") &&
                (i[3] == String(data[6]) || String(data[6]) == "-") &&
                (Int(i[4])! >= Int(data[7])!)}.count
    }
}

