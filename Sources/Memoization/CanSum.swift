func canSum(target: Int, numbers: [Int]) -> Bool {
    var memo: [Int: Bool] = [:]
    
    func canSum(target: Int, numbers: [Int]) -> Bool {
        if let result = memo[target] {
            return result
        } else if target < 0 {
            return false
        } else if target == 0 {
            return true
        } else {
            for number in numbers {
                guard canSum(target: target - number, numbers: numbers)
                else { continue }
                memo[target] = true
                return true
            }
            memo[target] = false
            return false
        }
    }
    
    return canSum(target: target, numbers: numbers)
}
