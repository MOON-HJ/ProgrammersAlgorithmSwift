// 정렬된 리스트에 원소 삽입

//리스트 L 과 정수 x 가 인자로 주어질 때, 리스트 내의 올바른 위치에 x 를 삽입하여 그 결과 리스트를 반환하는 함수 solution 을 완성하세요.
//인자로 주어지는 리스트 L 은 정수 원소들로 이루어져 있으며 크기에 따라 (오름차순으로) 정렬되어 있다고 가정합니다.
//예를 들어, L = [20, 37, 58, 72, 91] 이고 x = 65 인 경우, 올바른 리턴 값은 [20, 37, 58, 65, 72, 91] 입니다.
//힌트: 순환문을 이용하여 올바른 위치를 결정하고 insert() 메서드를 이용하여 삽입하는 것이 한 가지 방법입니다.
//주의: 리스트 내에 존재하는 모든 원소들보다 작거나 모든 원소들보다 큰 정수가 주어지는 경우에 대해서도 올바르게 처리해야 합니다.

import Foundation

func solution(_ array:[Int], _ x:Int) -> [Int] {
    var answer = array
    var index = 0
    
    for i in answer {
        if i > x {
            break
        }
        index += 1
    }
    
    answer.insert(x, at: index)

    return answer
}

solution([20, 37, 58, 72, 91], 65)


// 리스트에서 원소 찾아내기
/*
 인자로 주어지는 리스트 L 내에서, 또한 인자로 주어지는 원소 x 가 발견되는 모든 인덱스를 구하여 이 인덱스들로 이루어진 리스트를 반환하는 함수 solution 을 완성하세요.
 리스트 L 은 정수들로 이루어져 있고 그 순서는 임의로 부여되어 있다고 가정하며, 동일한 원소가 반복하여 들어 있을 수 있습니다. 이 안에 정수 x 가 존재하면 그것들을 모두 발견하여 해당 인덱스들을 리스트로 만들어 반환하고, 만약 존재하지 않으면 하나의 원소로 이루어진 리스트 [-1] 를 반환하는 함수를 완성하세요.
 예를 들어, L = [64, 72, 83, 72, 54] 이고 x = 72 인 경우의 올바른 리턴 값은 [1, 3] 입니다.
 또 다른 예를 들어, L = [64, 72, 83, 72, 54] 이고 x = 83 인 경우의 올바른 리턴 값은 [2] 입니다.
 마지막으로 또 다른 예를 들어, L = [64, 72, 83, 72, 54] 이고 x = 49 인 경우의 올바른 리턴 값은 [-1] 입니다.
 */

func solution2(_ L: [Int], _ x : Int) -> [Int] {
    var L = L
    var index = 0
    var answer:[Int] = []
    print("실행")
    while !L.isEmpty {
        if L.firstIndex(of: x) != nil {
            answer.append(L.firstIndex(of: x)! + index)
            index = L.firstIndex(of: x)!+1
            L = L.dropLast(index)
        } else {
            return answer.isEmpty ? [-1] : answer
        }
    }
    
    return []
}

solution2([64, 72, 83, 72, 54] , 72) // [1, 3]
solution2([64, 72, 83, 72, 54] , 83) // [2]
solution2([64, 72, 83, 72, 54] , 49)// [-1]
