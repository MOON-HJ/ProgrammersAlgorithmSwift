//재귀적 이진탐색

/*
리스트 L 과, 그 안에서 찾으려 하는 원소 x 가 인자로 주어지고, 또한 탐색의 대상이 되는 리스트 내에서의 범위 인덱스가 l 부터 u 까지로 (인자로) 정해질 때, x 와 같은 값을 가지는 원소의 인덱스를 리턴하는 함수 solution() 을 완성하세요. 만약 리스트 L 안에 x 와 같은 값을 가지는 원소가 존재하지 않는 경우에는 -1 을 리턴합니다. 리스트 L 은 자연수 원소들로 이루어져 있으며, 크기 순으로 정렬되어 있다고 가정합니다. 또한, 동일한 원소는 두 번 이상 나타나지 않습니다.
인덱스 범위를 나타내는 l 과 u 가 인자로 주어지는 이유는, 이 함수를 재귀적인 방법으로 구현하기 위함입니다. 빈 칸에 알맞은 내용을 채워서 재귀 함수인 solution() 을 완성하세요.
*/

func solution(data:[Int], target:Int, start:Int, end:Int) -> Int{
    if start > end {
        return -1
    }
    let mid:Int = (start + end) / 2
    
    if target == data[mid]{
        return mid
    } else if target < data[mid]{
        return solution(data: data, target: target, start: start, end: mid-1)
    } else {
        return solution(data: data, target: target, start: mid+1, end: end)
    }
    
}

solution(data: [2, 3, 5, 6, 9, 11, 15], target: 6, start: 0, end: 6)
solution(data: [2, 5, 7, 9, 11], target: 4, start: 0, end: 4)
