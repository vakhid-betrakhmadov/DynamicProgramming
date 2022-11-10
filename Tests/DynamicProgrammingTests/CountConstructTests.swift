import XCTest
@testable import Memoization
@testable import Tabulation

final class CountConstructTests: XCTestCase {
    
    func testMemoization() {
        runTest(for: Memoization.countConstruct(target: words:))
    }
    
    func testTabulation() {
        runTest(for: Tabulation.countConstruct(target: words:))
    }
    
    private func runTest(for countConstruct: (String, [String]) -> Int) {
        XCTAssertEqual(countConstruct("purple", ["purp", "p", "ur", "le", "purpl"]), 2)
        XCTAssertEqual(countConstruct("abcdef", ["ab", "abc", "cd", "def", "abcd"]), 1)
        XCTAssertEqual(countConstruct("skateboard", ["bo", "rd", "ate", "t", "ska", "sk", "boar"]), 0)
        XCTAssertEqual(countConstruct("enterapotentpot", ["a", "p", "ent", "enter", "ot", "o", "t"]), 4)
        XCTAssertEqual(countConstruct("eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeef", ["e", "ee", "eee", "eeee", "eeeee", "eeeeee"]), 0)
    }
}
