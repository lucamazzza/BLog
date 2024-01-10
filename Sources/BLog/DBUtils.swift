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
// Created by Luca Mazza on 2024/1/7.

import Foundation

/// Utility class for database connection management
///
/// - Authors: Luca Mazza
/// - Version: 1.0.0
/// - Note: Work in progress
/// - Warning: Compatible only for macoOS 12.0 or later
@available(macOS 12.0, *)
class DBUtils {
    
    /// Database to use
    var db: Database
    
    /// Connection string
    var connectionString: String
    
    /// Initializes a new ``DBUtils`` instance
    ///
    /// - Parameters:
    ///    - db: Database to use
    ///    - connectionString: Connection string to DB
    init(db: Database, connectionString: String) {
        self.db = db
        self.connectionString = connectionString
    }
    
    /// Connects to the selected database using the connection string
    ///
    /// - Returns: A message stating the status of the connection
    /// - Note: Return is discardable
    @discardableResult
    func connect() -> String {
        switch self.db {
            case .mariadb:
                // TODO: IMPLEMENT
                return "mariadb"
            case .mongo:
                return "mongo"
                // TODO: IMPLEMENT
            case .mysql:
                return "mysql"
                // TODO: IMPLEMENT
            case .postgre:
                return "postgre"
                // TODO: IMPLEMENT
            case .sqlite:
                return "sqlite"
                // TODO: IMPLEMENT
                
        }
    }
    
    /// Disconnects to the selected database
    ///
    /// - Returns: A message stating the status of the connection
    /// - Note: Return is discardable
    @discardableResult
    func disconnect() -> String {
        switch self.db {
            case .mariadb:
                // TODO: IMPLEMENT
                return "mariadb"
            case .mongo:
                return "mongo"
                // TODO: IMPLEMENT
            case .mysql:
                return "mysql"
                // TODO: IMPLEMENT
            case .postgre:
                return "postgre"
                // TODO: IMPLEMENT
            case .sqlite:
                return "sqlite"
                // TODO: IMPLEMENT
                
        }
    }
    
    /// Inserts a record into the selected database
    ///
    /// - Parameters:
    ///    - record: The record to insert
    /// - Returns: A message stating the status of the connection
    /// - Note: Return is discardable
    @discardableResult
    func insert(record: Record) -> String {
        switch self.db {
            case .mariadb:
                // TODO: IMPLEMENT
                return "mariadb"
            case .mongo:
                return "mongo"
                // TODO: IMPLEMENT
            case .mysql:
                return "mysql"
                // TODO: IMPLEMENT
            case .postgre:
                return "postgre"
                // TODO: IMPLEMENT
            case .sqlite:
                return "sqlite"
                // TODO: IMPLEMENT
                
        }
    }
    
    /// Connects to the `MariaDB` database.
    ///
    /// See https://mariadb.com/
    ///
    /// - Returns: A message stating the status of the connection
    @discardableResult
    private func connectToMariaDB() -> String{
        // TODO: IMPLEMENT
        return "mariadb"
    }
    
    /// Connects to the `MongoDB` database.
    ///
    /// See https://mongodb.com
    ///
    /// - Returns: A message stating the status of the connection
    @discardableResult
    private func connectToMongo() -> String{
        // TODO: IMPLEMENT
        return "mongo"
        
    }
    
    /// Connects to the `MySQL` database.
    ///
    /// See https://mysql.com
    ///
    /// - Returns: A message stating the status of the connection
    @discardableResult
    private func connectToMySQL() -> String{
        // TODO: IMPLEMENT
        return "mysql"
    }
    
    /// Connects to the `PostgreSQL` database.
    ///
    /// See https://www.postgresql.org
    ///
    /// - Returns: A message stating the status of the connection
    @discardableResult
    private func connectToPostgre() -> String{
        // TODO: IMPLEMENT
        return "postgre"
    }
    
    /// Connects to the `SQLite` database.
    ///
    /// See https://www.sqlite.org
    ///
    /// - Returns: A message stating the status of the connection
    @discardableResult
    private func connectToSqlite() -> String{
        return "sqlite"
        // TODO: IMPLEMENT
    }
    
    /// Disconnects from the `MariaDB` database.
    ///
    /// See https://mariadb.com
    ///
    /// - Returns: A message stating the status of the connection
    @discardableResult
    private func disconnectFromMariaDB() -> String {
        // TODO: IMPLEMENT
        return "mariadb"
        
    }
    
    /// Disconnects from the `MongoDB` database.
    ///
    /// See https://mongodb.com
    ///
    /// - Returns: A message stating the status of the connection
    @discardableResult
    private func disconnectFromMongo() -> String {
        // TODO: IMPLEMENT
        return "mongo"
        
    }
    
    /// Disconnects from the `MySQL` database.
    ///
    /// See https://mysql.com
    ///
    /// - Returns: A message stating the status of the connection
    @discardableResult
    private func disconnectFromMySQL() -> String {
        // TODO: IMPLEMENT
        return "mysql"
    }
    
    /// Disconnects from the `PostgreSQL` database.
    ///
    /// See https://www.postgresql.org
    ///
    /// - Returns: A message stating the status of the connection
    @discardableResult
    private func disconnectFromPostgre() -> String {
        // TODO: IMPLEMENT
        return "postgre"
    }
    
    /// Disconnects from the `SQLite` database.
    ///
    /// See https://www.sqlite.org
    ///
    /// - Returns: A message stating the status of the connection
    @discardableResult
    private func disconnectFromSqlite() -> String {
        // TODO: IMPLEMENT
        return "sqlite"
    }
    
    /// Inserts a record into the `MariaDB` database.
    ///
    /// See https://mariadb.com
    ///
    /// - Returns: A message stating the status of the operation
    @discardableResult
    private func insertInMariaDB(record: Record) -> String {
        // TODO: IMPLEMENT
        return "mariadb"
    }
    
    /// Inserts a record into the `MongoDB` database.
    ///
    /// See https://mongodb.com
    ///
    /// - Returns: A message stating the status of the operation
    @discardableResult
    private func insertInMongo(record: Record) -> String {
        // TODO: IMPLEMENT
        return "mongo"
        
    }
    
    /// Inserts a record into the `MySQL` database.
    ///
    /// See https://mysql.com
    ///
    /// - Returns: A message stating the status of the operation
    @discardableResult
    private func insertInMySQL(record: Record) -> String {
        // TODO: IMPLEMENT
        return "mysql"
    }
    
    /// Inserts a record into the `PostgreSQL` database.
    ///
    /// See https://postgresql.org
    ///
    /// - Returns: A message stating the status of the operation
    @discardableResult
    private func insertInPostgre(record: Record) -> String {
        // TODO: IMPLEMENT
        return "postgre"
    }
    
    /// Inserts a record into the `SQLite` database.
    ///
    /// See https://sqlite.org
    ///
    /// - Returns: A message stating the status of the operation
    @discardableResult
    private func insertInSqlite(record: Record) -> String {
        // TODO: IMPLEMENT
        return "sqlite"
    }
}
