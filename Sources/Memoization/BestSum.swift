func bestSum(target: Int, numbers: [Int]) -> [Int]? {
    var memo: [Int: [Int]?] = [:]
    
    func bestSum(target: Int, numbers: [Int]) -> [Int]? {
        if let result = memo[target] {
            return result
        } else if target < 0 {
            return nil
        } else if target == 0 {
            return []
        } else {
            var bestResult: [Int]?
            
            for number in numbers {
                guard let result = bestSum(target: target - number, numbers: numbers)
                else { continue }
                
                let newBestResult = [number] + result
                
                if newBestResult.count < (bestResult?.count ?? Int.max) {
                    bestResult = newBestResult
                }
            }
            
            memo[target] = bestResult
            
            return bestResult
        }
    }
    
    return bestSum(target: target, numbers: numbers)
}
