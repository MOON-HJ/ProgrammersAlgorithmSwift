// 이진 탐색 트리

/*
 리스트 L 과, 그 안에서 찾으려 하는 원소 x 가 인자로 주어질 때, x 와 같은 값을 가지는 원소의 인덱스를 리턴하는 함수 solution() 을 완성하세요. 만약 리스트 L 안에 x 와 같은 값을 가지는 원소가 존재하지 않는 경우에는 -1 을 리턴합니다. 리스트 L 은 자연수 원소들로 이루어져 있으며, 크기 순으로 정렬되어 있다고 가정합니다. 또한, 동일한 원소는 두 번 이상 나타나지 않습니다.
 */

import Foundation

func solution(_ array:[Int], _ x:Int) -> Int {
    var lower = 0
    var upper = array.count-1
    
    while lower <= upper {
        let middle = (lower + upper) // 2
        if array[middle] == x {
            return middle
        } else if array[middle] > x {
            upper = middle-1
        } else {
            lower = middle+1
        }
    }
    
    return -1
}

solution([2, 3, 5, 6, 9, 11, 15], 6) // 3
solution([2, 5, 7, 9, 11], 4) // -1

