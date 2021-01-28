// 1~2, 6, 9~11 Failed

import Foundation


func solution(_ numbers:String) -> Int {
    let numbers = Array(numbers.map{String($0)})
    var include = [Bool](repeating: false, count: numbers.count)
    var candidate:Set<Int> = []

    func isPrime(_ num: Int) -> Bool{
        if (0...2).contains(num){
            return false
        }
        
        var i = 2
        while i*i <= num {
            if num % i == 0 {
                return false;
            }
            i += 1
        }
        
        return true;
    }


    func permutaion(array:[String], start:Int, end: Int){
        var array = array
        if start == end{
            candidate.insert(Int(array.reduce(""){$0 + $1})!)

            
        } else {
            for i in (start...end){
                array.swapAt(start, end)
                permutaion(array: array, start: start+1, end: end)
                array.swapAt(start, i)
            }
        }
    }
    
    func powerSet(_ k:Int) {
        if k == numbers.count {
            let combination = (0..<numbers.count).compactMap{  include[$0] ? numbers[$0] : nil }
             !combination.isEmpty ? permutaion(array: combination, start: 0, end: combination.count-1) : nil
        return;
      }
    
      include[k] = false;
      powerSet(k + 1);
      include[k] = true;
      powerSet(k + 1);
    }
    
    powerSet(0)
    
    return candidate.filter{isPrime($0)}.count
    
}



//permutaion(array: [1,2,3], start: 0, end: 2)
//solution("123")
//solution("17")
//solution("011")
solution("12")
