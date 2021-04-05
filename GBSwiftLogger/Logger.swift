//
//  Logger.swift
//  GBSwiftLogger
//
//  Created by Guillermo Battistel on 3/28/21.
//

import Foundation

/**
- Available Log levels for Logger
-- `none`: Print no message
-- `error`: Message of level `error`
-- `warning`: Message of level `warning`
-- `success`: Message of level `success`
-- `info`: Message of level `info`
-- `all`:  Will print all level of messages
-*/
public enum LoggerLevels: Int {
    /// When the `verboseLevel` is set to `none`, all logs level al disable (no log is printed)
    case none = 0
    /// When the `verboseLevel` is set to `error`, only `error` logs will be printed
    case error
    /// When the `verboseLevel` is set to `warning`, only `warning` logs will be printed
    case warning
    /// When the `verboseLevel` is set to `success`, only `success` logs will be printed
    case success
    /// When the `verboseLevel` is set to `info`, only `info` logs will be printed
    case info
    /// When the `verboseLevel` is set to `info`,   All the logs will be printed
    case all
}

public class Logger {

    public static let log = Logger()

    /// Represents the current log level: `all` is set as default
    /// You can disable all logs by doing: `verboseLevel = .none`
    /// For more information check `LoggerLevels` enum
    public var verboseLevel: LoggerLevels = .all

    private var errorGlyph: String = "\u{1F6AB}"    // Glyph for messages of level .Error
    private var warningGlyph: String = "\u{1F514}"  // Glyph for messages of level .Warning
    private var successGlyph: String = "\u{2705}"   // Glyph for messages of level .Success
    private var infoGlyph: String = "\u{1F535}"     // Glyph for messages of level .Info

    private init() {}

    /// Prints information messages if `verboseLevel` is set to `.all` or `.info`
    /// Example of usage: `Logger.log.i(message: "My info log")`
    /// - Parameter message: message to be printed
    public func i(message: String) {
        if verboseLevel == .all || verboseLevel == .info {
            print(buildMessage(level: .info, message: message))
        }
    }

    /// Prints Error messages if `verboseLevel` is set to `.all` or `.error`
    /// Example of usage: `Logger.log.e(message: "My error log")`
    /// - Parameter message: message to be printed
    public func e(message: String) {
        if verboseLevel == .all || verboseLevel == .error {
            print(buildMessage(level: .error, message: message))
        }
    }

    /// Prints Warning messages if `verboseLevel` is set to `.all` or `.warning`
    /// Example of usage: `Logger.log.w(message: "My warning log")`
    /// - Parameter message: message to be printed
    public func w(message: String) {
        if verboseLevel == .all || verboseLevel == .warning {
            print(buildMessage(level: .warning, message: message))
        }
    }

    /// Prints Success messages if `verboseLevel` is set to `.all` or `.success`
    /// Example of usage: `Logger.log.s(message: "My success log")`
    /// - Parameter message: message to be printed
    public func s(message: String) {
        if verboseLevel == .all || verboseLevel == .success {
            print(buildMessage(level: .success, message: message))
        }
    }

    private func getLogGlyph(level: LoggerLevels) -> String {
        switch level {
        case .all: return ""
        case .none: return ""
        case .error: return errorGlyph
        case .info: return infoGlyph
        case .success: return successGlyph
        case .warning: return warningGlyph
        }
    }

    private func buildMessage(level: LoggerLevels, message: String) -> String {
        return getLogGlyph(level: level) + " " + message + "\r\n"
    }
}
