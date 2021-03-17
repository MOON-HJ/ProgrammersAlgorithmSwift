import Foundation

struct Recruit {
    var language: String
    var position: String
    var career: String
    var food: String
    var score: Int
}


func solution(_ info:[String], _ query:[String]) -> [Int] {
    let _info:[Recruit] = info.map{
        let data = $0.split(separator: " ")
        return Recruit(language: String(data[0]), position: String(data[1]), career: String(data[2]), food: String(data[3]), score: Int(data[4])!)
    }
    let _query:[Recruit] = query.map{
        let data = $0.components(separatedBy: " ").filter{$0 != "and"}
        return Recruit(language: String(data[0]), position: String(data[1]), career: String(data[2]), food: String(data[3]), score: Int(data[4])!
        )
    }
    return _query.map{ q in
        _info.filter{ i in 
            return (i.language == q.language || q.language == "-") && (i.position == q.position || q.position == "-") &&
                (i.career == q.career || q.career == "-") &&
            (i.food == q.food || q.food == "-") &&
                (i.score >= q.score)
        }.count
    }
}



