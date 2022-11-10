import XCTest
@testable import Memoization
@testable import Tabulation

final class CanSumTests: XCTestCase {
    
    func testMemoization() {
        runTest(for: Memoization.canSum(target: numbers:))
    }
    
    func testTabulation() {
        runTest(for: Tabulation.canSum(target: numbers:))
    }
    
    private func runTest(for canSum: (Int, [Int]) -> Bool) {
        XCTAssertEqual(canSum(-1, [1, 2, 3]), false)
        XCTAssertEqual(canSum(0, [1, 2, 3]), true)
        XCTAssertEqual(canSum(7, [2, 3]), true)
        XCTAssertEqual(canSum(7, [5, 3, 4, 7]), true)
        XCTAssertEqual(canSum(7, [2, 4]), false)
        XCTAssertEqual(canSum(8, [2, 3, 5]), true)
        XCTAssertEqual(canSum(300, [7, 14]), false)
    }
}
