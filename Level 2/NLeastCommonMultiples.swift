func solution(_ arr:[Int]) -> Int {
    func gcd(a:Int, b:Int) -> Int{
        var a = a
        var b = b
        while b != 0 {
            let r:Int = a % b
            a = b
            b = r
        }
        return a
    }
    return arr.reduce(1){$0 * $1 / gcd(a: $0, b: $1)}
}
