# BLog
[![GitHub release](https://img.shields.io/github/v/release/lucamazzza/BLog?color=green&label=latest%20release&sort=semver&style=for-the-badge)](https://github.com/lucamazzza/BLog/releases/latest)
[![JDK Version](https://img.shields.io/badge/Swift-5.9.1-orange.svg?logo=swift&style=for-the-badge)](https://www.swift.org/about/)
[![License](https://img.shields.io/badge/License-MIT-purple?style=for-the-badge)](LICENSE)
[![Discord Badge](https://img.shields.io/discord/1119987238202261664?color=5865F2&label=&logo=discord&logoColor=white&style=for-the-badge)](https://discord.gg/B3yXwmHb2V)

BLog is a Logging tool for `Swift` that allows you to manage event-logging in a more integrated way.
It is written in `Swift 5.9.1` and implements different tools to grant manageability on logs.

> ⚠️ BLog is still in development and is not available yet! Be patient or join my [Discord Community](https://discord.gg/B3yXwmHb2V) to interact with me and contribute.

## Features
Currently, the features of BLog are the following:
* `Record`:
  ```swift
  let record = Record(date: Date(), message: "Hello World", level: .info)
  ```
* `Trace`:
  ```swift
  let trace = Trace(title: "Object")
  trace.append(record)
  ```
* `Logger`:
  ```swift
  let logger = Logger(title: "Example")
  logger.debug("Debug message")
  logger.info("Info message")
  logger.notice("Notice message")
  logger.warning("Warning message")
  logger.error("Error message")
  logger.fatal("FATALITY!")
  logger.printTrace()
  ```

## Requirements


## Installation


## Usage


## Credits
BLog is written and mantained by [Luca Mazza](https://mazluc.ch)

## License
BLog is released under the MIT License.
See [License](LICENSE) for details.
