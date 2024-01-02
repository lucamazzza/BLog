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

/// Abstracts the concept of a `Record`.
///
/// A record is a single logged action in the log table.
///
/// - Authors: Luca Mazza
/// - Version: 1.0
public protocol Record {

    /// Parses the record to a formatted, readable `String` format
    func toString() -> String

    /// Parses the record to a JSON `String`
    func parseToJSON(url: URL)

    /// Parses the record to an XML `String`
    func parseToXML(url: URL)

    /// Parses the record to a CSV `String`
    func parseToCSV(url: URL)

    /// Parses the record to a YAML `String`
    func parseToYAML(url: URL)

    /// Parses the record to a PDF file
    func parseToPdf(url: URL)

    /// Parses a record to the relative DB
    func parseToDB(dbConnectionString: String)
}
