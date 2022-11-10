func fibonacci(n: Int) -> Int {
    let tableCount = max(n, 1) + 1
    var table = [Int](repeating: 0, count: tableCount)
    
    table[0] = 0
    table[1] = 1
    
    for i in (2..<tableCount) {
        table[i] = table[i - 1] + table[i - 2]
    }
    
    return table[n]
}
