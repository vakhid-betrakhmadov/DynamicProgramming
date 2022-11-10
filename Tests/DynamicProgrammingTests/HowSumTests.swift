import XCTest
@testable import Memoization
@testable import Tabulation

final class HowSumTests: XCTestCase {
    
    func testMemoization() {
        runTest(for: Memoization.howSum(target: numbers:))
    }
    
    func testTabulation() {
        runTest(for: Tabulation.howSum(target: numbers:))
    }
    
    private func runTest(for howSum: (Int, [Int]) -> [Int]?) {
        XCTAssertEqual(howSum(7, [2, 3])?.sorted(), [2, 2, 3].sorted())
        XCTAssertEqual(howSum(7, [5, 3, 4, 7])?.sorted(), [3, 4].sorted())
        XCTAssertEqual(howSum(7, [2, 4])?.sorted(), nil)
        XCTAssertEqual(howSum(8, [2, 3, 5])?.sorted(), [2, 2, 2, 2].sorted())
        XCTAssertEqual(howSum(300, [7, 14]), nil)
    }
}
