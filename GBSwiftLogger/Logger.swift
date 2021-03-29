//
//  Logger.swift
//  GBSwiftLogger
//
//  Created by Guillermo Battistel on 3/28/21.
//

import Foundation

/**
Available Log level for Logger
- None:    Print no message
- Error:   Message of level Error
- Warning: Message of level Warning
- Success: Message of level Success
- Info:    Message of level Info
- Custom:  Message of level Custom
*/
enum LoggerLevels: Int {

   case Error = 0
   case Warning
   case Success
   case Info
}


class Logger {
    
    public static let shared = Logger()
    public var isEnabled: Bool = true
    
    private var errorGlyph: String = "\u{1F6AB}"    // Glyph for messages of level .Error
    private var warningGlyph: String = "\u{1F514}"  // Glyph for messages of level .Warning
    private var successGlyph: String = "\u{2705}"   // Glyph for messages of level .Success
    private var infoGlyph: String = "\u{1F535}"     // Glyph for messages of level .Info
    
    private init() {}
    
    
    public func i(message: String) {
        if isEnabled {
            print(buildMessage(level: .Info, message: message))
        }
    }
    
    public func e(message: String) {
        if isEnabled {
            print(buildMessage(level: .Error, message: message))
        }
    }
    
    public func w(message: String) {
        if isEnabled {
            print(buildMessage(level: .Warning, message: message))
        }
    }
    
    public func s(message: String) {
        if isEnabled {
            print(buildMessage(level: .Success, message: message))
        }
    }
    
    private func getLogGlyph(level: LoggerLevels) -> String {
        switch(level) {
        case .Error: return errorGlyph
        case .Info: return infoGlyph
        case .Success: return successGlyph
        case .Warning: return warningGlyph
        }
    }
    
    private func buildMessage(level: LoggerLevels, message: String) -> String {
        return getLogGlyph(level: level) + " " + message + "\r\n"
    }
    
}
