//
//  Copyright © 2020 Square Inc. All rights reserved.
//

import XCTest
@testable import Wire

final class WriteBufferTests: XCTestCase {

    func testInsertAtBeginning() {
        let buffer = WriteBuffer()
        buffer.append(Data(hexEncoded: "2233")!)

        buffer.insert(count: 2, at: 0)

        // The contents of the new bytes start off undefined,
        // so set them to something known for testing comparison.
        buffer.set(0x00, at: 0)
        buffer.set(0x11, at: 1)

        XCTAssertEqual(Data(buffer, copyBytes: true), Data(hexEncoded: "00112233"))
    }

    func testRemoveAtBeginning() {
        let buffer = WriteBuffer()
        buffer.append(Data(hexEncoded: "0011")!)

        buffer.remove(count: 2, at: 0)

        XCTAssertEqual(Data(buffer, copyBytes: true), Data())
    }
}
