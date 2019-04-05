import XCTest
@testable import SwiftEvent

final class SwiftEventTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        //XCTAssertEqual(SwiftEvent().text, "Hello, World!")

        let ev = event_base_new()
        XCTAssertNotNil(ev, "fail ev")
        event_base_free(ev)
        let v = event_get_version()
        let s = String(cString: v!)
        print("version \(s)")

    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
