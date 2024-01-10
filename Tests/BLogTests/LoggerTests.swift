import XCTest
@testable import BLog

final class LoggerTests: XCTestCase {
    let logger = Logger(title: "Test")

    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
    }

    func test_debug() {
        logger.debug("this is only a debug, do not take it as an error")
    }

    func test_info() {
        logger.info("this is only an information, do not take it as an error")
    }

    func test_notice() {
        logger.notice("this is notice, do not take it as an error")
    }

    func test_warning() {
        logger.warning("you may want to get a little scared now")
    }

    func test_error() {
        logger.error("ok now it is serious")
    }

    func test_fatal() {
        logger.fatal("you are dead")
    }
}
