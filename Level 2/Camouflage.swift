
import Foundation


func solution(_ clothes:[[String]]) -> Int {
    let cloth = Dictionary(clothes.map{($0[1], 1)}, uniquingKeysWith: +).values
    return     cloth.map{$0+1}.reduce(1, *)-1
}

solution([["yellow_hat", "headgear"],
         ["blue_sunglasses", "eyewear"],
         ["green_turban", "headgear"]])

solution([["crow_mask", "face"], ["blue_sunglasses", "face"], ["smoky_makeup", "face"]])
