import Foundation

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    var adj:[[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
    edge.forEach{
        let i = $0[0]-1
        let j = $0[1]-1
        adj[i][j] += 1
        adj[j][i] += 1
    }
    var visited:[Bool] = Array(repeating: false, count: n)
    var distance:[Int] = Array(repeating: -1, count: n)
    var queue:[Int] = []
    
    queue.append(0)
    var count = 1
    while !queue.isEmpty {
        let x = queue.removeFirst()
        if visited[x] {
            continue
        }
        visited[x] = true
        
        let ad = adj[x].enumerated().filter{$1>0}.map{$0.offset}
        ad.forEach{ node in
            if distance[node] == -1 {
                distance[node] = count
            } else if distance[node] > count {
                distance[node] = count
            }
        }
        queue.append(contentsOf: ad)
        queue
        
        distance
        
        count += 1
    }
    
    return 0
}

solution(6, [[3, 6], [4, 3], [3, 2], [1, 3], [1, 2], [2, 4], [5, 2]]) // 3
