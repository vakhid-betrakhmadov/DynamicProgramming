func countConstruct(target: String, words: [String]) -> Int {
    var table = [Int](repeating: 0, count: target.count + 1)
    
    table[0] = 1
    
    for i in 0..<target.count where table[i] != 0 {
        for word in words {
            let j = i + word.count
            
            guard j <= target.count else { continue }
            
            let iStr = target.index(target.startIndex, offsetBy: i)
            let jStr = target.index(target.startIndex, offsetBy: j)
            
            if target[iStr..<jStr] == word {
                table[j] += table[i]
            }
        }
    }
    
    return table[target.count]
}
