import XCTest
@testable import Memoization
@testable import Tabulation

final class AllConstructTests: XCTestCase {
    
    func testMemoization() {
        runTest(for: Memoization.allConstruct(target: words:))
    }
    
    func testTabulation() {
        runTest(for: Tabulation.allConstruct(target: words:))
    }
    
    private func runTest(for allConstruct: (String, [String]) -> [[String]]) {
        XCTAssertEqual(
            Set(allConstruct("purple", ["purp", "p", "ur", "le", "purpl"]).map { $0.sorted() }),
            Set([["purp", "le"], ["p", "ur", "p", "le"]].map { $0.sorted() })
        )
        XCTAssertEqual(
            Set(allConstruct("abcdef", ["ab", "abc", "cd", "def", "abcd", "ef", "c"]).map { $0.sorted() }),
            Set([["ab", "cd", "ef"], ["ab", "c", "def"], ["abc", "def"], ["abcd", "ef"]].map { $0.sorted() })
        )
        XCTAssertEqual(
            allConstruct("skateboard", ["bo", "rd", "ate", "t", "ska", "sk", "boar"]),
            []
        )
        XCTAssertEqual(
            allConstruct("eeeeeeeeeeeeeeeeeeeeeeef", ["e", "ee", "eee", "eeee", "eeeee", "eeeeee"]),
            []
        )
    }
}
