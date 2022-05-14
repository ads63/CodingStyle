@testable import CodingStyle
import XCTest

final class CodingStyleTests: XCTestCase {
    private let testData: [CodingType: [String: String]] = [
        .camel:
            ["Hello, World!": "hello,World!",
             "Hello, world!": "hello,World!",
             " Однажды В Студеную  зимнюю пору ":"однаждыВСтуденуюЗимнююПору",
             "one two three four": "oneTwoThreeFour",
             "": "",
             "   ": "",
             "  1One  Two2 THREE  123  four   ": "1oneTwo2Three123Four",
             "singleWord": "singleword"],
        .snake:
            ["Hello, World!": "hello,_world!",
             "Hello, world!": "hello,_world!",
             " Однажды В Студеную  зимнюю пору ":"однажды_в_студеную_зимнюю_пору",
             "one two three four": "one_two_three_four",
             "": "",
             "   ": "",
             "  1One  Two2 THREE  123  four   ": "1one_two2_three_123_four",
             "singleWord": "singleword"],
        .kebab:
            ["Hello, World!": "hello,-world!",
             "Hello, world!": "hello,-world!",
             " Однажды В Студеную  зимнюю пору ":"однажды-в-студеную-зимнюю-пору",
             "one two three four": "one-two-three-four",
             "": "",
             "   ": "",
             "  1One  Two2 THREE  123  four   ": "1one-two2-three-123-four",
             "singleWord": "singleword"],
    ]
    func testCase() throws {
        continueAfterFailure = true
        testData.forEach {
            @CodingStyle(coding: $0.key) var value = ""
            $0.value.forEach {
                value = $0.key
                XCTAssertEqual(value,
                               $0.value)
            }
        }
    }
}
