//
//  GBSwiftLoggerTests.swift
//  GBSwiftLoggerTests
//
//  Created by Guillermo Battistel on 3/28/21.
//

import XCTest
@testable import GBSwiftLogger

class GBSwiftLoggerTests: XCTestCase {

    func testInfoLog() {
        Logger.shared.i(message: "My info log")
    }

    func testLog() {
        Logger.shared.e(message: "My error log")
    }
    
    func testWarningLog() {
        Logger.shared.w(message: "My warning log")
    }
    
    func testSuccessLog() {
        Logger.shared.w(message: "My success log")
    }
}
