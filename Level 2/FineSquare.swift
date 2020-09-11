func solution(_ w:Int, _ h:Int) -> Int64{
    return Int64(w*h-(w+h-gcd(w, h)))
}

func gcd(_ a: Int, _ b: Int) -> Int {
  let r = a % b
  if r != 0 {
    return gcd(b, r)
  } else {
    return b
  }
}

solution(8, 12)

