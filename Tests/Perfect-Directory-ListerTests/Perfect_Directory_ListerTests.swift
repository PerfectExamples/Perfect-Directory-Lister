import XCTest
@testable import Perfect_Directory_Lister

class Perfect_Directory_ListerTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(Perfect_Directory_Lister().text, "Hello, World!")
    }


    static var allTests : [(String, (Perfect_Directory_ListerTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
