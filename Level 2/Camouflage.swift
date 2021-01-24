
import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dic : [String:Int] = [:]
    
    clothes.forEach { cloth in
        if dic[cloth[1]] != nil {
            dic[cloth[1]]! += 1
        } else {
            dic[cloth[1]] = 1
        }
    }
    
//    1개
//
    
    print(dic)
    return 0
}

solution([["yellow_hat", "headgear"],
         ["blue_sunglasses", "eyewear"],
         ["green_turban", "headgear"]])
