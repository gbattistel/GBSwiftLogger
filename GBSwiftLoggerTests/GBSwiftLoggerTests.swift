//
//  GBSwiftLoggerTests.swift
//  GBSwiftLoggerTests
//
//  Created by Guillermo Battistel on 3/28/21.
//

import XCTest
@testable import GBSwiftLogger

class GBSwiftLoggerTests: XCTestCase {

    let environmentUser = "<ENV_USER"
    let environmentPassword = "<ENV_PASSWORD>"
    let environmentToken = "<ENV_TOKEN>"

    func testInfoLog() {
        Logger.log.i(message: "My info log")
        //Check github workflow and setup_env.sh script
        Logger.log.i(message: "My environment user: \(environmentUser)")
        XCTAssertEqual(environmentUser, "MY_SECRET_ENV_USER")
        Logger.log.i(message: "My environment user: \(environmentPassword)")
        XCTAssertEqual(environmentPassword, "MY_SECRET_ENV_PASSWORD")
        Logger.log.i(message: "My environment user: \(environmentToken)")
        XCTAssertEqual(environmentToken, "MY_SECRET_ENV_TOKEN")
    }

    func testLog() {
        Logger.log.e(message: "My error log")
        //Check github workflow and setup_env.sh script
        Logger.log.e(message: "My environment user: \(environmentUser)")
        XCTAssertEqual(environmentUser, "MY_SECRET_ENV_USER")
        Logger.log.e(message: "My environment user: \(environmentPassword)")
        XCTAssertEqual(environmentPassword, "MY_SECRET_ENV_PASSWORD")
        Logger.log.e(message: "My environment user: \(environmentToken)")
        XCTAssertEqual(environmentToken, "MY_SECRET_ENV_TOKEN")
    }

    func testWarningLog() {
        Logger.log.w(message: "My warning log")
        //Check github workflow and setup_env.sh script
        Logger.log.w(message: "My environment user: \(environmentUser)")
        XCTAssertEqual(environmentUser, "MY_SECRET_ENV_USER")
        Logger.log.w(message: "My environment user: \(environmentPassword)")
        XCTAssertEqual(environmentPassword, "MY_SECRET_ENV_PASSWORD")
        Logger.log.w(message: "My environment user: \(environmentToken)")
        XCTAssertEqual(environmentToken, "MY_SECRET_ENV_TOKEN")
    }

    func testSuccessLog() {
        Logger.log.s(message: "My success log")
        //Check github workflow and setup_env.sh script
        Logger.log.s(message: "My environment user: \(environmentUser)")
        XCTAssertEqual(environmentUser, "MY_SECRET_ENV_USER")
        Logger.log.s(message: "My environment user: \(environmentPassword)")
        XCTAssertEqual(environmentPassword, "MY_SECRET_ENV_PASSWORD")
        Logger.log.s(message: "My environment user: \(environmentToken)")
        XCTAssertEqual(environmentToken, "MY_SECRET_ENV_TOKEN")
    }
}
