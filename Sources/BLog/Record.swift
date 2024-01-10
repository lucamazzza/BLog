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
// Created by Luca Mazza on 2023/12/22.

import Foundation

/// A `Record` is a log entry.
///
/// It contains the date the entry was created, a ``level`` and a message.
///
/// ```
/// let record: Record = Record()
/// ```
///
/// - Authors: Luca Mazza
/// - Version: 1.0.0
/// - Note: Work in progress
/// - Warning: Compatible only for macoOS 12.0 or later
@available(macOS 12.0, *)
public final class Record {

    /// Date of the log.
    private var date: Date

    /// Message of the log.
    private var message: String

    /// Log level, see ``Level``.
    private var level: Level

    /// File where the log was created.
    private var file: String

    /// Line where the log was created.
    private var line: Int

    /// Function where the log was created.
    private var function: String

    /// Initializes a new ``Record`` instance
    ///
    /// - Parameters:
    ///    - date: Date of the log
    ///    - message: Message of the log
    ///    - level: Log level
    ///    - file: File where the log was created
    ///    - line: Line where the log was created
    ///    - function: Function where the log was created
    public init(
        date: Date,
        message: String,
        level: Level,
        file: String,
        line: Int,
        function: String
    ) {
        self.date = date
        self.message = message
        self.level = level
        self.file = file
        self.line = line
        self.function = function
    }

    /// Converts the record to a Human-Readable String.
    ///
    /// - Returns: The record as a String
    public func toString() -> String {
        let date: String = self.date.ISO8601Format()
        let message: String = self.message
        let location: String =
        "\(self.file.components(separatedBy: "/").last ?? "")" +
        ":\(self.function):\(self.line)"
        let formattedRecord = String(
            format: "%@ | %@ | %@ - %@",
            date,
            self.level.rawValue.padding(
                toLength: 7,
                withPad: " ",
                startingAt: 0
            ),
            location,
            message)
        return formattedRecord
    }

    /// Converts the record to JSON.
    ///
    /// Creates a JSON block structure containing the date, level,
    /// message, file, function and line.
    ///
    /// See https://json.org
    ///
    /// - Returns: The record as a JSON String
    public func parseToJSON() -> String {
        return """
            {
                "date": "\(self.date.ISO8601Format())",
                "level": "\(self.level.rawValue)",
                "message": "\(self.message)",
                "file": "\(self.file.components(separatedBy: "/").last ?? "")
                "function": \(self.function)
                "line": \(self.line)"
            }
            """
    }

    /// Converts the record to XML.
    ///
    /// Creates an XML block of type "record", containing the date, level
    /// message, file, function and line
    ///
    /// See https://www.w3schools.com/xml
    ///
    /// - Returns: The record as a XML String
    public func parseToXML() -> String{
        return """
            <record>
                <date>\(self.date.ISO8601Format())</date>
                <level>\(self.level.rawValue)</level>
                <message>\(self.message)</message>
                <file>\(self.file.components(separatedBy: "/").last ?? "")</file>
                <function>\(self.function)</function>
                <line>\(self.line)</line>
            </record>
            """
    }

    /// Converts the record to CSV.
    ///
    /// Creates a CSV line containing the date, level, message, file, function
    /// and line
    ///
    /// See https://en.wikipedia.org/wiki/Comma-separated_values
    ///
    /// - Returns: The record as a CSV String
    public func parseToCSV() -> String {
        return "\(self.date.ISO8601Format())," +
        "\(self.level.rawValue)," +
        "\(self.message)," +
        "\(self.file.components(separatedBy: "/").last ?? "")," +
        "\(self.function)," +
        "\(self.line)" +
        "\n"
    }

    /// Converts the record to YAML.
    ///
    /// Creates a YAML block of type "record", containing the date, level,
    /// message file, function and line
    ///
    /// See https://yaml.org
    ///
    /// - Returns: The record as a YAML String
    public func parseToYAML() -> String {
        return """
            record:
                date: \(self.date.ISO8601Format())
                level: \(self.level.rawValue)
                message: \(self.message)
                file: \(self.file.components(separatedBy: "/").last ?? "")
                function: \(self.function)
                line: \(self.line)
            """
    }

    /// Converts the record to PDF.
    public func parseToPdf() -> String {
        // TODO: Implement
        return ""
    }

    /// Converts the record to a DML string.
    @discardableResult
    public func parseToDB(db: Database) -> String {
        switch db {
            case .mariadb:
                // TODO: IMPLEMENT
                return "mariadb"
            case .mongo:
                // TODO: IMPLEMENT
                return "mongo"
            case .mysql:
                // TODO: IMPLEMENT
                return "mysql"
            case .postgre:
                // TODO: IMPLEMENT
                return "postgre"
            case .sqlite:
                // TODO: IMPLEMENT
                return "sqlite"
        }
    }
}
