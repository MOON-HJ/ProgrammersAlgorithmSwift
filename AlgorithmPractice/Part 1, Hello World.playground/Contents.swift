// 리스트 원소 두 개의 합 구하기
// 입력으로 주어지는 리스트 x 의 첫 원소와 마지막 원소의 합을 리턴하는 함수 solution() 을 완성하세요.

import Foundation

func solution(_ array:[Int]) -> Int {
    return array[0] + array[array.count-1]
}

solution([5, 3, 8, 2])
