import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var leftPosition = [0, 3]
    var rightPosition = [2, 3]
    var answer = ""
    let isRightHand = hand=="right"

    for number in numbers {
        switch number {
        case 3, 6, 9:
            rightPosition = [2, (number / 3) - 1]
            answer += "R"
        case 1, 4, 7:
            leftPosition = [0, (number / 3) ]
            answer += "L"

        case 0, 2, 5, 8:
            let target = [1, number==0 ? 3 : number/3]
            let leftHandDistance = abs(leftPosition[0]-target[0]) + abs(leftPosition[1]-target[1])
            let rightHandDistance = abs(rightPosition[0]-target[0]) + abs(rightPosition[1]-target[1])

            if leftHandDistance < rightHandDistance  {
                leftPosition = target
                answer += "L"
            } else if leftHandDistance > rightHandDistance  {
                rightPosition = target
                answer += "R"
            } else {
                if isRightHand {
                    rightPosition = target
                    answer += "R"
                } else {
                    leftPosition = target
                    answer += "L"
                }
            }

        default:
            break
        }

    }
    return answer
}
