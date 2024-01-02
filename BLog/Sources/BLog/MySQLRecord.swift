// MIT License
//
// Copyright (c) 2023 Luca Mazza
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

///
public final class MySQLRecord : Record {

    /// Date of the log
    private var date: Date

    /// Message of the log
    private var message: String

    /// Log level
    private var level: Level
    
    ///
    public init(date: Date, message: String, level: Level) {
        self.date = date
        self.message = message
        self.level = level
    }
    
    ///
    public func toString() -> String {
        return ""
    }
    
    ///
    public func parseToJSON(url: URL) {
    }
    
    ///
    public func parseToXML(url: URL) {
    }
    
    ///
    public func parseToCSV(url: URL) {
    }
    
    ///
    public func parseToYAML(url: URL) {
    }
    
    ///
    public func parseToPdf(url: URL) {
    }
    
    ///
    public func parseToDB(dbConnectionString: String) {
    }
}
