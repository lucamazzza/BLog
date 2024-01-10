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
// Created by Luca Mazza on 2023/12/21.

import Foundation

/// A trace is a collection of records that keeps trace of an execution.
///
/// A trace can contain different records, each of them can contain different
/// information about the execution.
///
/// The whole trace can be converted toString in a human readable format
///
/// ```
/// var trace: Trace = new Trace("Example")
/// ```
///
/// - Authors: Luca Mazza
/// - Version: 1.0.0
/// - Note: Work in progress
/// - Warning: Compatible only for macoOS 12.0 or later
@available(macOS 12.0, *)
public class Trace {
    
    /// Title of the trace
    private var title: String;
    
    /// List of records contained in the trace
    private var records: [Record];
    
    /// Initializes a new ``Trace`` instance
    /// The list of records is initialized empty
    ///
    /// - Parameters:
    ///    - title: The title of the trace
    public init(title: String) {
        self.title = title;
        records = []
    }
    
    /// Appends a record to the trace-.
    ///
    /// - Parameters:
    ///    - record: The record to append
    func append(_ record: Record) {
        self.records.append(record)
    }
    
    /// Converts the trace to a Human-Readable String.
    ///
    /// - Returns: The trace as a String
    private func toString() -> String {
        var result = ""
        result.append(title + "\n\n")
        for record in records {
            result.append(record.toString() + "\n")
        }
        return result
    }
    
    /// Prints out the trace on terminal
    func print() {
        Swift.print(self.toString())
        
    }
    
    /// Inserts the trace in the database
    ///
    /// - Parameters:
    ///    - database: The database to use
    ///    - dbConnectionString: The database connection string
    func insertInDB(database: Database, dbConnectionString: String) {
        // TODO: Implement
    }
}
