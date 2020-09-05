func solution(_ phone_number:String) -> String {
    let t = Array(phone_number)
    return String(t.enumerated().map{i, v in i < t.count-4 ? "*" : v})
}


solution("01033334444") //*******4444
solution("027778888") // *****8888
