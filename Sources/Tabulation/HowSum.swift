func howSum(target: Int, numbers: [Int]) -> [Int]? {
    guard target >= 0 else { return nil }
    
    let tableCount = target + 1
    var table = [[Int]?](repeating: nil, count: tableCount)
    
    table[0] = []
    
    for target in 0...target {
        guard let result = table[target] else { continue }

        for number in numbers where (target + number) < tableCount {
            table[target + number] = [number] + result
        }
    }
    
    return table[target]
}
