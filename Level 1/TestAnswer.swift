import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var studentsSolution:[[Int]] = [
        [1,2,3,4,5],
        [2,1,2,3,2,4,2,5],
        [3,3,1,1,2,2,4,4,5,5]
    ]
    var studentsAnswerCount:[Int] = [0,0,0]
    for i in 0...answers.count-1{
        for student in 0...studentsSolution.count-1{
            if( answers[i] == studentsSolution[student][i%(studentsSolution[student].count)] ) {
                studentsAnswerCount[student]+=1
            }
        }
    }

    var answer:[Int] = []
    var studentsRank:[Int] = [1,1,1]

    for i in 0...2{
        for j in 0...2{
            if(studentsAnswerCount[i] < studentsAnswerCount[j]){
                studentsRank[i]+=1
            }
        }
    }

    for i in 0...2{
        if (studentsRank[i] == 1){
            answer.append(i+1)
        }
    }
    
    return answer
}
