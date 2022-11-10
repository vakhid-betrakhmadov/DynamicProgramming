func allConstruct(target: String, words: [String]) -> [[String]] {
    var memo: [String.SubSequence: [[String]]] = [:]
    
    func allConstruct(target: String.SubSequence, words: [String]) -> [[String]] {
        if let result = memo[target] {
            return result
        } else if target.isEmpty {
            return [[]]
        } else {
            var result: [[String]] = []
            
            for word in words where target.hasPrefix(word) {
                result += allConstruct(target: target.dropFirst(word.count), words: words).map { [word] + $0 }
            }
            
            memo[target] = result
            
            return result
        }
    }
    
    return allConstruct(target: target[...], words: words)
}
