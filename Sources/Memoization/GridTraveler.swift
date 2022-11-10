func gridTraveler(m: Int, n: Int) -> Int {
    struct MemoKey: Hashable {
        let m, n: Int
    }
    
    var memo: [MemoKey: Int] = [:]
    
    func gridTraveler(m: Int, n: Int) -> Int {
        if let result = memo[MemoKey(m: m, n: n)] {
            return result
        } else if m == 0 || n == 0 {
            return 0
        } else if m == 1 && n == 1 {
            return 1
        } else {
            let result = gridTraveler(m: m - 1, n: n) + gridTraveler(m: m, n: n - 1)
            memo[MemoKey(m: m, n: n)] = result
            return result
        }
    }
    
    return gridTraveler(m: m, n: n)
}
