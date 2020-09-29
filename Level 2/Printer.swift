import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var priorities = priorities
    var locations:[Int] = Array(0..<priorities.count)
    var queue:[Int] = []
    
    while !priorities.isEmpty {
        let maxLocation = priorities.firstIndex(of: priorities.max()!)
        queue.append(locations[maxLocation!])
        
        priorities.append(contentsOf: priorities.prefix(maxLocation!))
        priorities = Array(priorities.dropFirst(maxLocation!+1))
        locations.append(contentsOf: locations.prefix(maxLocation!))
        locations = Array(locations.dropFirst(maxLocation!+1))
    }
    return queue.firstIndex(of: location)!+1
}

solution([2, 1, 3, 2], 2) // 1
solution([1, 1, 9, 1, 1, 1], 0) // 5
