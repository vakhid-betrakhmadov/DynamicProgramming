func gridTraveler(m: Int, n: Int) -> Int {
    let tableRowCount = max(m, 1) + 1
    let tableColumnCount = max(n, 1) + 1
    
    var table = [[Int]](
        repeating: [Int](repeating: 0, count: tableColumnCount),
        count: tableRowCount
    )
    
    table[1][1] = 1
    
    for row in 0..<(tableRowCount) {
        for column in 0..<(tableColumnCount) {
            if (row+1) < tableRowCount {
                table[row+1][column] += table[row][column]
            }
            if (column+1) < tableColumnCount {
                table[row][column+1] += table[row][column]
            }
        }
    }
    
    return table[m][n]
}
