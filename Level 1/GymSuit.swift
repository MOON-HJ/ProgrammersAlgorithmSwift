import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    var counts:[Int] = [Int](repeating: 1,  count:n)

    for i in lost{
        counts[i-1] -= 1
    }
    for i in reserve{
        counts[i-1] += 1
    }
    
    print(counts)
    
    for i in 0...counts.count-1{
        if(i == 0) && (counts[0] == 2 ){
            if(counts[i+1] == 0){
                counts[i] -= 1
                counts[i+1] += 1
            }
        } else if (i == counts.count-1) && (counts[counts.count-1] == 2){
            if(counts[i-1] == 0){
                counts[i] -= 1
                counts[i-1] += 1
            }
        } else if(counts[i] == 2){
            if(counts[i-1] == 0){
                counts[i] -= 1
                counts[i-1] += 1
            } else if(counts[i+1] == 0){
                counts[i] -= 1
                counts[i+1] += 1
            }
        }
        
    }

    return counts.filter{$0 > 0}.count
}
