func allConstruct(target: String, words: [String]) -> [[String]] {
    var table = [[[String]]](repeating: [], count: target.count + 1)
    
    table[0] = [[]]
    
    for i in 0..<target.count where !table[i].isEmpty {
        for word in words {
            let j = i + word.count
            
            guard j <= target.count else { continue }
            
            let iStr = target.index(target.startIndex, offsetBy: i)
            let jStr = target.index(target.startIndex, offsetBy: j)
            
            if target[iStr..<jStr] == word {
                table[j] += table[i].map { [word] + $0 }
            }
        }
    }
    
    return table[target.count]
}
