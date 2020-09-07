import Foundation

func solution(_ record:[String]) -> [String] {
    let records:[[String]] = record.map{$0.components(separatedBy: " ")}
    var answer:[[String]] = []
    var member:Dictionary<String, String> = [:]
    for i in records{
        switch i[0] {
        case "Enter":
            member[i[1]] = i[2]
            answer.append(Array(i[0...1]))
            
        case "Change":
            member[i[1]] = i[2]
            
        default: // Leave
            answer.append(Array(i[0...1]))
            break
        }
    }
    return answer.map{ $0[0] == "Enter" ? member[$0[1]]! + "님이 들어왔습니다." : member[$0[1]]! + "님이 나갔습니다." }

}

solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"])
//["Prodo님이 들어왔습니다.", "Ryan님이 들어왔습니다.", "Prodo님이 나갔습니다.", "Prodo님이 들어왔습니다."]
