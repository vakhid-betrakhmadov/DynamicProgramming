func canConstruct(target: String, words: [String]) -> Bool {
    var table = [Bool](repeating: false, count: target.count + 1)
    
    table[0] = true
    
    for i in 0..<target.count where table[i] {
        for word in words {
            let j = i + word.count
            
            guard j <= target.count else { continue }
            
            let iStr = target.index(target.startIndex, offsetBy: i)
            let jStr = target.index(target.startIndex, offsetBy: j)
            
            if target[iStr..<jStr] == word {
                table[j] = true
            }
        }
    }
    
    return table[target.count]
}
