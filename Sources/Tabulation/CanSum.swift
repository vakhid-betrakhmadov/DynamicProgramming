func canSum(target: Int, numbers: [Int]) -> Bool {
    guard target >= 0 else { return false }
    
    let tableCount = target + 1
    var table = [Bool](repeating: false, count: tableCount)
    
    table[0] = true
    
    for target in 0...target where table[target] {
        for number in numbers where (target + number) < tableCount {
            table[target + number] = true
        }
    }
    
    return table[target]
}
