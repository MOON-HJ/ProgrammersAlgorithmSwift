func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    let w = arr1[0].count
    let h = arr1.count
    var answer = Array((repeatElement([Int](repeating: 0, count: w), count: h)))

    for i in 0..<w {
        for j in 0..<h{
            answer[j][i] = arr1[j][i]+arr2[j][i]
        }
    }
    
    return answer
}


solution([[1,2],[2,3]], [[3,4],[5,6]]) // [[4,6],[7,9]]
solution([[1],[2]], [[3],[4]]) //[[4],[6]]

