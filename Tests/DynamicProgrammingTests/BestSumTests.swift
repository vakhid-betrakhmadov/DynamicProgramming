import XCTest
@testable import Memoization
@testable import Tabulation

final class BestSumTests: XCTestCase {
    
    func testMemoization() {
        runTest(for: Memoization.bestSum(target: numbers:))
    }
    
    func testTabulation() {
        runTest(for: Tabulation.bestSum(target: numbers:))
    }
    
    private func runTest(for bestSum: (Int, [Int]) -> [Int]?) {
        XCTAssertEqual(bestSum(7, [2, 3])?.sorted(), [2, 2, 3].sorted())
        XCTAssertEqual(bestSum(7, [5, 3, 4, 7])?.sorted(), [7].sorted())
        XCTAssertEqual(bestSum(7, [2, 4])?.sorted(), nil)
        XCTAssertEqual(bestSum(8, [1, 4, 5])?.sorted(), [4, 4].sorted())
        XCTAssertEqual(bestSum(100, [1, 2, 5, 25]), [25, 25, 25, 25])
    }
}
