func countConstruct(target: String, words: [String]) -> Int {
    var memo: [String.SubSequence: Int] = [:]
    
    func countConstruct(target: String.SubSequence, words: [String]) -> Int {
        if let result = memo[target] {
            return result
        } else if target.isEmpty {
            return 1
        } else {
            var result = 0
            
            for word in words where target.hasPrefix(word) {
                result += countConstruct(target: target.dropFirst(word.count), words: words)
            }
            
            memo[target] = result
            
            return result
        }
    }
    
    return countConstruct(target: target[...], words: words)
}
