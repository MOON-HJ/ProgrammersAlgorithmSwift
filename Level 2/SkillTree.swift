import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var skill_trees = skill_trees.map{$0.filter{skill.contains($0)}}
    skill_trees = skill_trees.filter{$0 == String(Array(skill)[..<$0.count])}
    return skill_trees.count
}

solution("CBD", ["BACDE", "CBADF", "AECB", "BDA"]) //2

