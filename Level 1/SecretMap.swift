import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    return zip(arr1, arr2)
        .map{repeatElement("0", count: n-String($0|$1, radix:2).count) + String($0|$1, radix:2)}
        .map{$0.replacingOccurrences(of: "0", with: " ").replacingOccurrences(of: "1", with: "#")}
}

print(solution(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28]))
//["#####", "# # #", "### #", "#  ##", "#####"]

