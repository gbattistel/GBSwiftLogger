//
//  GBSwiftLoggerTests.swift
//  GBSwiftLoggerTests
//
//  Created by Guillermo Battistel on 3/28/21.
//

import XCTest
@testable import GBSwiftLogger

class GBSwiftLoggerTests: XCTestCase {

    let environmentVariable = "<ENV_VARIABLE>"
    func testInfoLog() {
        Logger.log.i(message: "My info log")
        Logger.log.i(message: "My environment variable: \(environmentVariable)")
        XCTAssertEqual(environmentVariable, "MY_SECRET_ENV_VARIABLE")
    }

    func testLog() {
        Logger.log.e(message: "My error log")
        Logger.log.e(message: "My environment variable: \(environmentVariable)")
        XCTAssertEqual(environmentVariable, "MY_SECRET_ENV_VARIABLE")
    }

    func testWarningLog() {
        Logger.log.w(message: "My warning log")
        Logger.log.w(message: "My environment variable: \(environmentVariable)")
        XCTAssertEqual(environmentVariable, "MY_SECRET_ENV_VARIABLE")
    }

    func testSuccessLog() {
        Logger.log.s(message: "My success log")
        Logger.log.s(message: "My environment variable: \(environmentVariable)")
        XCTAssertEqual(environmentVariable, "MY_SECRET_ENV_VARIABLE")
    }
}
