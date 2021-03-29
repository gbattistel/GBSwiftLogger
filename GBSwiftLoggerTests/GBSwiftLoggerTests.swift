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
        Logger.log.i(message: "My info log")
    }

    func testLog() {
        Logger.log.e(message: "My error log")
    }
    
    func testWarningLog() {
        Logger.log.w(message: "My warning log")
    }
    
    func testSuccessLog() {
        Logger.log.s(message: "My success log")
    }
}
