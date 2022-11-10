import XCTest
@testable import Memoization
@testable import Tabulation

final class GridTravelerTests: XCTestCase {
    
    func testMemoization() {
        runTests(for: Memoization.gridTraveler(m: n:))
    }
    
    func testTabulation() {
        runTests(for: Tabulation.gridTraveler(m: n:))
    }
    
    private func runTests(for gridTraveler: (Int, Int) -> Int) {
        XCTAssertEqual(gridTraveler(0, 1), 0)
        XCTAssertEqual(gridTraveler(1, 0), 0)
        XCTAssertEqual(gridTraveler(1, 1), 1)
        XCTAssertEqual(gridTraveler(2, 1), 1)
        XCTAssertEqual(gridTraveler(1, 2), 1)
        XCTAssertEqual(gridTraveler(2, 2), 2)
        XCTAssertEqual(gridTraveler(2, 3), 3)
        XCTAssertEqual(gridTraveler(3, 2), 3)
        XCTAssertEqual(gridTraveler(3, 3), 6)
        XCTAssertEqual(gridTraveler(18, 18), 2333606220)
    }
}
