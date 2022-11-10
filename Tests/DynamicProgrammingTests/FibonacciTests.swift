import XCTest
@testable import Memoization
@testable import Tabulation

final class FibonacciTests: XCTestCase {
    
    func testMemoization() {
        runTest(for: Memoization.fibonacci(n:))
    }
    
    func testTabulation() {
        runTest(for: Tabulation.fibonacci(n:))
    }
    
    private func runTest(for fibonacci: (Int) -> Int) {
        XCTAssertEqual(fibonacci(0), 0)
        XCTAssertEqual(fibonacci(1), 1)
        XCTAssertEqual(fibonacci(7), 13)
        XCTAssertEqual(fibonacci(42), 267914296)
        XCTAssertEqual(fibonacci(52), 32951280099)
        XCTAssertEqual(fibonacci(83), 99194853094755497)
    }
}
