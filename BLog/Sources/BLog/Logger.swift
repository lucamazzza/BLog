// MIT License
//
// Copyright (c) 2024 Luca Mazza
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//
// Created by Luca Mazza on 2023/12/20.

import Foundation

/// Logger class
///
/// A logger is directly used in classes to log events
///
/// ```
/// let logger: Logger = Logger(title: "Example")
/// ```
///
/// - Authors: Luca Mazza
/// - Version: 1.0.0
/// - Note: Work in progress
/// - Warning: Compatible only for macoOS 12.0 or later
@available(macOS 12.0, *)
public final class Logger {

    /// Trace instance for records logged
    private var trace: Trace

    /// Initializes the Logger with a title
    ///
    /// - Parameters:
    ///     - title: The title of the trace
    public init(title: String) {
        self.trace = Trace(title: title)
    }

    /// Prints a `debug` log and saves it in the trace
    ///
    /// - Parameters:
    ///     - message: the message to print
    ///     - file: the file where the message was created
    ///     - line: the line where the message was created
    ///     - function: the function where the message was created
    public func debug(
        _ message: String,
        file: String = #file,
        line: Int = #line,
        function: String = #function
    ) {
        let record: Record = Record(
            date: Date(),
            message: message,
            level: .debug,
            file: file,
            line: line,
            function: function
        )
        self.trace.append(record)
        print(record.toString())
    }

    /// Prints an `info` log and saves it in the trace
    ///
    /// - Parameters:
    ///     - message: the message to print
    ///     - file: the file where the message was created
    ///     - line: the line where the message was created
    ///     - function: the function where the message was created
    public func info(
        _ message: String,
        file: String = #file,
        line: Int = #line,
        function: String = #function
    ) {
        let record: Record = Record(
            date: Date(),
            message: message,
            level: .info,
            file: file,
            line: line,
            function: function
        )
        self.trace.append(record)
        print(record.toString())
    }

    /// Prints an `notice` log and saves it in the trace
    ///
    /// - Parameters:
    ///     - message: the message to print
    ///     - file: the file where the message was created
    ///     - line: the line where the message was created
    ///     - function: the function where the message was created
    public func notice(
        _ message: String,
        file: String = #file,
        line: Int = #line,
        function: String = #function
    ) {
        let record: Record = Record(
            date: Date(),
            message: message,
            level: .notice,
            file: file,
            line: line,
            function: function
        )
        self.trace.append(record)
        print(record.toString())
    }


    /// Prints an `warning` log and saves it in the trace
    ///
    /// - Parameters:
    ///     - message: the message to print
    ///     - file: the file where the message was created
    ///     - line: the line where the message was created
    ///     - function: the function where the message was created
    public func warning(
        _ message: String,
        file: String = #file,
        line: Int = #line,
        function: String = #function
    ) {
        let record: Record = Record(
            date: Date(),
            message: message,
            level: .warning,
            file: file,
            line: line,
            function: function
        )
        self.trace.append(record)
        print(record.toString())
    }

    /// Prints an `error` log and saves it in the trace
    ///
    /// - Parameters:
    ///     - message: the message to print
    ///     - file: the file where the message was created
    ///     - line: the line where the message was created
    ///     - function: the function where the message was created
    public func error(
        _ message: String,
        file: String = #file,
        line: Int = #line,
        function: String = #function
    ) {
        let record: Record = Record(
            date: Date(),
            message: message,
            level: .error,
            file: file,
            line: line,
            function: function
        )
        self.trace.append(record)
        print(record.toString())
    }

    /// Prints an `fatal` log and saves it in the trace
    ///
    /// - Parameters:
    ///     - message: the message to print
    ///     - file: the file where the message was created
    ///     - line: the line where the message was created
    ///     - function: the function where the message was created
    public func fatal(
        _ message: String,
        file: String = #file,
        line: Int = #line,
        function: String = #function
    ) {
        let record: Record = Record(
            date: Date(),
            message: message,
            level: .fatal,
            file: file,
            line: line,
            function: function
        )
        self.trace.append(record)
        print(record.toString())
    }

    /// Prints the whole trace on terminal
    public func printTrace() {
        self.trace.print()
    }
}
