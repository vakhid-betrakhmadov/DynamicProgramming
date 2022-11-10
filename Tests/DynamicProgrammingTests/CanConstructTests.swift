import XCTest
@testable import Memoization
@testable import Tabulation

final class CanConstructTests: XCTestCase {
    
    func testMemoization() {
        runTest(for: Memoization.canConstruct(target: words:))
    }
    
    func testTabulation() {
        runTest(for: Tabulation.canConstruct(target: words:))
    }
    
    private func runTest(for canConstruct: (String, [String]) -> Bool) {
        XCTAssertEqual(canConstruct("abcdef", ["ab", "abc", "cd", "def", "abcd"]), true)
        XCTAssertEqual(canConstruct("skateboard", ["bo", "rd", "ate", "t", "ska", "sk", "boar"]), false)
        XCTAssertEqual(canConstruct("enterapotentpot", ["a", "p", "ent", "enter", "ot", "o", "t"]), true)
        XCTAssertEqual(canConstruct("eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeef", ["e", "ee", "eee", "eeee", "eeeee", "eeeeee"]), false)
    }
}
