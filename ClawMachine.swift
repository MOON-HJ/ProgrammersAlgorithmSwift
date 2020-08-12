import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var board:[[Int]] = board
    var bucket : [Int] = []
    var answer = 0

    moves.forEach {
        let hIndex:Int = $0-1
        for vIndex in 0...board.count-1{
            if( board[vIndex][hIndex] == 0 ) {continue}
            else {
                if(bucket.last == board[vIndex][hIndex]){
                    bucket.removeLast()
                    answer += 2
                }
                else {
                    bucket.append(board[vIndex][hIndex])
                }
                board[vIndex][hIndex] = 0
                break
            }
        }
    }
    
    return answer
}
