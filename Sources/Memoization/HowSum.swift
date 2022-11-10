func howSum(target: Int, numbers: [Int]) -> [Int]? {
    var memo: [Int: [Int]?] = [:]
    
    func howSum(target: Int, numbers: [Int]) -> [Int]? {
        if let result = memo[target] {
            return result
        } else if target < 0 {
            return nil
        } else if target == 0 {
            return []
        } else {
            for number in numbers {
                guard let result = howSum(target: target - number, numbers: numbers)
                else { continue }
                memo[target] = [number] + result
                return [number] + result
            }
            memo[target] = nil as [Int]?
            return nil
        }
    }
    
    return howSum(target: target, numbers: numbers)
}
