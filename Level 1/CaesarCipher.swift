func solution(_ s:String, _ n:Int) -> String {
    var answer:String = ""
    for i in s {
        let t: UInt8 = Character(i.isUppercase ? "A" : "a").asciiValue!
        if i.isLetter {
            answer += String(UnicodeScalar((((i.asciiValue! + UInt8(n)) - t) % UInt8(26)) + t))
        } else {
            answer += String(i)
        }
    }
    return answer
}
