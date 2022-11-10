func fibonacci(n: Int) -> Int {
    var memo: [Int: Int] = [:]
    
    func fibonacci(of n: Int) -> Int {
        if let result = memo[n] {
            return result
        } else if n == 0 || n == 1 {
            return n
        } else {
            let result = fibonacci(of: n - 1) + fibonacci(of: n - 2)
            memo[n] = result
            return result
        }
    }
    
    return fibonacci(of: n)
}
