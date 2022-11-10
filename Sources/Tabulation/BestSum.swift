func bestSum(target: Int, numbers: [Int]) -> [Int]? {
    guard target >= 0 else { return nil }
    
    let tableCount = target + 1
    var table = [[Int]?](repeating: nil, count: tableCount)
    
    table[0] = []
    
    for target in 0...target {
        guard let result = table[target] else { continue }

        for number in numbers {
            let newTarget = target + number
            guard newTarget < tableCount else { continue }
            
            let newTargetResult = [number] + result
            guard newTargetResult.count < table[newTarget]?.count ?? Int.max else { continue }
            
            table[newTarget] = newTargetResult
        }
    }
    
    return table[target]
}
