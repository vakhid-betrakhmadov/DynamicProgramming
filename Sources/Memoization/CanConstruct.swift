func canConstruct(target: String, words: [String]) -> Bool {
    var memo: [String.SubSequence: Bool] = [:]
    
    func canConstruct(target: String.SubSequence, words: [String]) -> Bool {
        if let result = memo[target] {
            return result
        } else if target.isEmpty {
            return true
        } else {
            for word in words where target.hasPrefix(word) {
                guard canConstruct(target: target.dropFirst(word.count), words: words)
                else { continue }
                memo[target] = true
                return true
            }
            memo[target] = false
            return false
        }
    }
    
    return canConstruct(target: target[...], words: words)
}
